package com.alibaba.sdk.android.oss.internal;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSSharedPreferences;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListPartsRequest;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.PartSummary;
import com.alibaba.sdk.android.oss.model.ResumableUploadRequest;
import com.alibaba.sdk.android.oss.model.ResumableUploadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public class ResumableUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {
    private List<Integer> mAlreadyUploadIndex;
    private File mCRC64RecordFile;
    private File mRecordFile;
    private OSSSharedPreferences mSp;

    public ResumableUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.mAlreadyUploadIndex = new ArrayList();
        this.mSp = OSSSharedPreferences.instance(this.mContext.getApplicationContext());
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void abortThisUpload() {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void checkException() throws Throwable {
        if (this.mContext.getCancellationHandler().isCancelled()) {
            if (((ResumableUploadRequest) this.mRequest).deleteUploadOnCancelling().booleanValue()) {
                abortThisUpload();
                File file = this.mRecordFile;
                if (file != null) {
                    file.delete();
                }
            } else {
                List<PartETag> list = this.mPartETags;
                if (list != null && list.size() > 0 && this.mCheckCRC64 && ((ResumableUploadRequest) this.mRequest).getRecordDirectory() != null) {
                    HashMap map = new HashMap();
                    for (PartETag partETag : this.mPartETags) {
                        map.put(Integer.valueOf(partETag.getPartNumber()), Long.valueOf(partETag.getCRC64()));
                    }
                    ObjectOutputStream objectOutputStream = null;
                    try {
                        try {
                            File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + File.separator + this.mUploadId);
                            this.mCRC64RecordFile = file2;
                            if (!file2.exists()) {
                                this.mCRC64RecordFile.createNewFile();
                            }
                            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(this.mCRC64RecordFile));
                            try {
                                objectOutputStream2.writeObject(map);
                                objectOutputStream2.close();
                            } catch (IOException e11) {
                                e = e11;
                                objectOutputStream = objectOutputStream2;
                                OSSLog.logThrowable2Local(e);
                                if (objectOutputStream != null) {
                                    objectOutputStream.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                objectOutputStream = objectOutputStream2;
                                if (objectOutputStream != null) {
                                    objectOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (IOException e12) {
                        e = e12;
                    }
                }
            }
        }
        super.checkException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public ResumableUploadResult doMultipartUpload() throws Throwable {
        ThreadPoolExecutor threadPoolExecutor;
        long j11 = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        final int i11 = iArr[0];
        final int i12 = iArr[1];
        if (this.mPartETags.size() > 0 && this.mAlreadyUploadIndex.size() > 0) {
            long jLongValue = this.mUploadedLength;
            if (jLongValue > this.mFileLength) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (!TextUtils.isEmpty(this.mSp.getStringValue(this.mUploadId))) {
                jLongValue = Long.valueOf(this.mSp.getStringValue(this.mUploadId)).longValue();
            }
            long j12 = jLongValue;
            OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
            if (oSSProgressCallback != 0) {
                oSSProgressCallback.onProgress(this.mRequest, j12, this.mFileLength);
            }
            this.mSp.removeKey(this.mUploadId);
        }
        this.mRunPartTaskCount = this.mPartETags.size();
        for (final int i13 = 0; i13 < i12; i13++) {
            if ((this.mAlreadyUploadIndex.size() == 0 || !this.mAlreadyUploadIndex.contains(Integer.valueOf(i13 + 1))) && (threadPoolExecutor = this.mPoolExecutor) != null) {
                if (i13 == i12 - 1) {
                    i11 = (int) (this.mFileLength - j11);
                }
                j11 += (long) i11;
                threadPoolExecutor.execute(new Runnable() { // from class: com.alibaba.sdk.android.oss.internal.ResumableUploadTask.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ResumableUploadTask.this.uploadPart(i13, i11, i12);
                    }
                });
            }
        }
        if (checkWaitCondition(i12)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        ResumableUploadResult resumableUploadResult = completeMultipartUploadResult != null ? new ResumableUploadResult(completeMultipartUploadResult) : null;
        File file = this.mRecordFile;
        if (file != null) {
            file.delete();
        }
        File file2 = this.mCRC64RecordFile;
        if (file2 != null) {
            file2.delete();
        }
        releasePool();
        return resumableUploadResult;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x032e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0338 A[LOOP:0: B:43:0x0187->B:105:0x0338, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:140:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x0341 A[EDGE_INSN: B:141:0x0341->B:107:0x0341 BREAK  A[LOOP:0: B:43:0x0187->B:105:0x0338], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0184  */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void initMultipartUploadId() throws ServiceException, ClientException, IOException {
        String strCalculateMd5Str;
        Map map;
        String str;
        Map map2;
        boolean zIsTruncated;
        int i11;
        String str2 = "[initUploadId] -  ";
        OSSCompletedCallback<ListPartsRequest, ListPartsResult> oSSCompletedCallback = null;
        if (!OSSUtils.isEmptyString(((ResumableUploadRequest) this.mRequest).getRecordDirectory())) {
            if (this.mUploadUri != null) {
                OSSLog.logDebug("[initUploadId] - mUploadFilePath : " + this.mUploadUri.getPath());
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.mContext.getApplicationContext().getContentResolver().openFileDescriptor(this.mUploadUri, CampaignEx.JSON_KEY_AD_R);
                try {
                    strCalculateMd5Str = BinaryUtil.calculateMd5Str(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th2) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    throw th2;
                }
            } else {
                OSSLog.logDebug("[initUploadId] - mUploadFilePath : " + this.mUploadFilePath);
                strCalculateMd5Str = BinaryUtil.calculateMd5Str(this.mUploadFilePath);
            }
            OSSLog.logDebug("[initUploadId] - mRequest.getPartSize() : " + ((ResumableUploadRequest) this.mRequest).getPartSize());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strCalculateMd5Str);
            sb2.append(((ResumableUploadRequest) this.mRequest).getBucketName());
            sb2.append(((ResumableUploadRequest) this.mRequest).getObjectKey());
            sb2.append(String.valueOf(((ResumableUploadRequest) this.mRequest).getPartSize()));
            sb2.append(this.mCheckCRC64 ? "-crc64" : "");
            String strCalculateMd5Str2 = BinaryUtil.calculateMd5Str(sb2.toString().getBytes());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((ResumableUploadRequest) this.mRequest).getRecordDirectory());
            String str3 = File.separator;
            sb3.append(str3);
            sb3.append(strCalculateMd5Str2);
            File file = new File(sb3.toString());
            this.mRecordFile = file;
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mRecordFile));
                this.mUploadId = bufferedReader.readLine();
                bufferedReader.close();
            }
            OSSLog.logDebug("[initUploadId] - mUploadId : " + this.mUploadId);
            if (!OSSUtils.isEmptyString(this.mUploadId)) {
                if (this.mCheckCRC64) {
                    File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + str3 + this.mUploadId);
                    if (file2.exists()) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file2));
                        try {
                            try {
                                map = (Map) objectInputStream.readObject();
                                try {
                                    file2.delete();
                                } catch (ClassNotFoundException e11) {
                                    e = e11;
                                    OSSLog.logThrowable2Local(e);
                                }
                            } catch (ClassNotFoundException e12) {
                                e = e12;
                                map = null;
                            }
                            objectInputStream.close();
                            file2.delete();
                        } catch (Throwable th3) {
                            objectInputStream.close();
                            file2.delete();
                            throw th3;
                        }
                    } else {
                        map = null;
                    }
                } else {
                    map = null;
                }
                int i12 = 0;
                int nextPartNumberMarker = 0;
                while (true) {
                    ListPartsRequest listPartsRequest = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                    if (nextPartNumberMarker > 0) {
                        listPartsRequest.setPartNumberMarker(Integer.valueOf(nextPartNumberMarker));
                    }
                    OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts = this.mApiOperation.listParts(listPartsRequest, oSSCompletedCallback);
                    try {
                        try {
                            ListPartsResult listPartsResult = (ListPartsResult) oSSAsyncTaskListParts.getResult();
                            zIsTruncated = listPartsResult.isTruncated();
                            nextPartNumberMarker = listPartsResult.getNextPartNumberMarker();
                            try {
                                List<PartSummary> parts = listPartsResult.getParts();
                                int[] iArr = this.mPartAttr;
                                int i13 = iArr[i12];
                                int i14 = iArr[1];
                                int i15 = i12;
                                while (i15 < parts.size()) {
                                    PartSummary partSummary = parts.get(i15);
                                    PartETag partETag = new PartETag(partSummary.getPartNumber(), partSummary.getETag());
                                    partETag.setPartSize(partSummary.getSize());
                                    if (map != null && map.size() > 0 && map.containsKey(Integer.valueOf(partETag.getPartNumber()))) {
                                        partETag.setCRC64(((Long) map.get(Integer.valueOf(partETag.getPartNumber()))).longValue());
                                    }
                                    OSSLog.logDebug(str2 + i15 + " part.getPartNumber() : " + partSummary.getPartNumber());
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(str2);
                                    sb4.append(i15);
                                    sb4.append(" part.getSize() : ");
                                    int i16 = i15;
                                    sb4.append(partSummary.getSize());
                                    OSSLog.logDebug(sb4.toString());
                                    boolean z10 = partSummary.getPartNumber() == i14;
                                    if (z10) {
                                        try {
                                            i11 = nextPartNumberMarker;
                                            map2 = map;
                                            try {
                                                if (partSummary.getSize() != this.mLastPartSize) {
                                                    throw new ClientException("current part size " + partSummary.getSize() + " setting is inconsistent with PartSize : " + i13 + " or lastPartSize : " + this.mLastPartSize);
                                                }
                                            } catch (ServiceException e13) {
                                                e = e13;
                                                str = str2;
                                            }
                                        } catch (ServiceException e14) {
                                            e = e14;
                                            map2 = map;
                                            str = str2;
                                        }
                                        nextPartNumberMarker = i11;
                                        if (e.getStatusCode() == 404) {
                                            throw e;
                                        }
                                        this.mUploadId = null;
                                        zIsTruncated = false;
                                        oSSAsyncTaskListParts.waitUntilFinished();
                                        if (!zIsTruncated) {
                                            break;
                                        }
                                        str2 = str;
                                        map = map2;
                                        oSSCompletedCallback = null;
                                        i12 = 0;
                                    } else {
                                        i11 = nextPartNumberMarker;
                                        map2 = map;
                                    }
                                    if (z10) {
                                        str = str2;
                                    } else {
                                        str = str2;
                                        if (partSummary.getSize() != i13) {
                                            throw new ClientException("current part size " + partSummary.getSize() + " setting is inconsistent with PartSize : " + i13 + " or lastPartSize : " + this.mLastPartSize);
                                        }
                                        e = e;
                                        nextPartNumberMarker = i11;
                                        if (e.getStatusCode() == 404) {
                                            throw e;
                                        }
                                        this.mUploadId = null;
                                        zIsTruncated = false;
                                        oSSAsyncTaskListParts.waitUntilFinished();
                                        if (!zIsTruncated) {
                                            break;
                                            break;
                                        }
                                        str2 = str;
                                        map = map2;
                                        oSSCompletedCallback = null;
                                        i12 = 0;
                                    }
                                    try {
                                        this.mPartETags.add(partETag);
                                        this.mUploadedLength += partSummary.getSize();
                                        this.mAlreadyUploadIndex.add(Integer.valueOf(partSummary.getPartNumber()));
                                        i15 = i16 + 1;
                                        str2 = str;
                                        map = map2;
                                        nextPartNumberMarker = i11;
                                    } catch (ServiceException e15) {
                                        e = e15;
                                    }
                                }
                                str = str2;
                                map2 = map;
                            } catch (ServiceException e16) {
                                e = e16;
                                str = str2;
                                map2 = map;
                            }
                        } catch (ClientException e17) {
                            throw e17;
                        }
                    } catch (ServiceException e18) {
                        e = e18;
                        str = str2;
                    }
                    oSSAsyncTaskListParts.waitUntilFinished();
                    if (!zIsTruncated) {
                        break;
                        break;
                    }
                    str2 = str;
                    map = map2;
                    oSSCompletedCallback = null;
                    i12 = 0;
                }
            }
            if (!this.mRecordFile.exists() && !this.mRecordFile.createNewFile()) {
                throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
            }
        }
        if (OSSUtils.isEmptyString(this.mUploadId)) {
            this.mUploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(new InitiateMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), ((ResumableUploadRequest) this.mRequest).getMetadata()), null).getResult()).getUploadId();
            if (this.mRecordFile != null) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.mRecordFile));
                bufferedWriter.write(this.mUploadId);
                bufferedWriter.close();
            }
        }
        ((ResumableUploadRequest) this.mRequest).setUploadId(this.mUploadId);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void processException(Exception exc) {
        synchronized (this.mLock) {
            try {
                this.mPartExceptionCount++;
                this.mUploadException = exc;
                OSSLog.logThrowable2Local(exc);
                if (this.mContext.getCancellationHandler().isCancelled() && !this.mIsCancel) {
                    this.mIsCancel = true;
                    this.mLock.notify();
                }
                if (this.mPartETags.size() == this.mRunPartTaskCount - this.mPartExceptionCount) {
                    notifyMultipartThread();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void uploadPartFinish(PartETag partETag) throws Exception {
        if (!this.mContext.getCancellationHandler().isCancelled() || this.mSp.contains(this.mUploadId)) {
            return;
        }
        this.mSp.setStringValue(this.mUploadId, String.valueOf(this.mUploadedLength));
        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
    }
}
