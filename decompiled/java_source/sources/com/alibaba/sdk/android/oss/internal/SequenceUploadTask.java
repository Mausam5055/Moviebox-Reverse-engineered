package com.alibaba.sdk.android.oss.internal;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
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
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.CheckedInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class SequenceUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {
    private List<Integer> mAlreadyUploadIndex;
    private File mCRC64RecordFile;
    private long mFirstPartSize;
    private File mRecordFile;
    private OSSSharedPreferences mSp;

    public SequenceUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
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
        long j11 = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i11 = iArr[0];
        int i12 = iArr[1];
        if (this.mPartETags.size() > 0 && this.mAlreadyUploadIndex.size() > 0) {
            long jLongValue = this.mUploadedLength;
            if (jLongValue > this.mFileLength) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (this.mFirstPartSize != i11) {
                throw new ClientException("The part size setting is inconsistent with before");
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
        for (int i13 = 0; i13 < i12; i13++) {
            if (this.mAlreadyUploadIndex.size() == 0 || !this.mAlreadyUploadIndex.contains(Integer.valueOf(i13 + 1))) {
                if (i13 == i12 - 1) {
                    i11 = (int) (this.mFileLength - j11);
                }
                OSSLog.logDebug("upload part readByte : " + i11);
                j11 += (long) i11;
                uploadPart(i13, i11, i12);
                if (this.mUploadException != null) {
                    break;
                }
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
        return resumableUploadResult;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x013a  */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void initMultipartUploadId() throws ServiceException, ClientException, IOException {
        String strCalculateMd5Str;
        Map map;
        boolean zIsTruncated;
        if (!OSSUtils.isEmptyString(((ResumableUploadRequest) this.mRequest).getRecordDirectory())) {
            if (this.mUploadUri != null) {
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
                strCalculateMd5Str = BinaryUtil.calculateMd5Str(this.mUploadFilePath);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strCalculateMd5Str);
            sb2.append(((ResumableUploadRequest) this.mRequest).getBucketName());
            sb2.append(((ResumableUploadRequest) this.mRequest).getObjectKey());
            sb2.append(String.valueOf(((ResumableUploadRequest) this.mRequest).getPartSize()));
            sb2.append(this.mCheckCRC64 ? "-crc64" : "");
            sb2.append("-sequence");
            String strCalculateMd5Str2 = BinaryUtil.calculateMd5Str(sb2.toString().getBytes());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((ResumableUploadRequest) this.mRequest).getRecordDirectory());
            String str = File.separator;
            sb3.append(str);
            sb3.append(strCalculateMd5Str2);
            File file = new File(sb3.toString());
            this.mRecordFile = file;
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mRecordFile));
                this.mUploadId = bufferedReader.readLine();
                bufferedReader.close();
                OSSLog.logDebug("sequence [initUploadId] - Found record file, uploadid: " + this.mUploadId);
            }
            if (!OSSUtils.isEmptyString(this.mUploadId)) {
                if (this.mCheckCRC64) {
                    File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + str + this.mUploadId);
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
                            } catch (Throwable th3) {
                                objectInputStream.close();
                                file2.delete();
                                throw th3;
                            }
                        } catch (ClassNotFoundException e12) {
                            e = e12;
                            map = null;
                        }
                        objectInputStream.close();
                        file2.delete();
                    } else {
                        map = null;
                    }
                } else {
                    map = null;
                }
                int nextPartNumberMarker = 0;
                do {
                    ListPartsRequest listPartsRequest = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                    if (nextPartNumberMarker > 0) {
                        listPartsRequest.setPartNumberMarker(Integer.valueOf(nextPartNumberMarker));
                    }
                    OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts = this.mApiOperation.listParts(listPartsRequest, null);
                    try {
                        ListPartsResult listPartsResult = (ListPartsResult) oSSAsyncTaskListParts.getResult();
                        zIsTruncated = listPartsResult.isTruncated();
                        nextPartNumberMarker = listPartsResult.getNextPartNumberMarker();
                        List<PartSummary> parts = listPartsResult.getParts();
                        for (int i11 = 0; i11 < parts.size(); i11++) {
                            PartSummary partSummary = parts.get(i11);
                            PartETag partETag = new PartETag(partSummary.getPartNumber(), partSummary.getETag());
                            partETag.setPartSize(partSummary.getSize());
                            if (map != null && map.size() > 0 && map.containsKey(Integer.valueOf(partETag.getPartNumber()))) {
                                partETag.setCRC64(((Long) map.get(Integer.valueOf(partETag.getPartNumber()))).longValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += partSummary.getSize();
                            this.mAlreadyUploadIndex.add(Integer.valueOf(partSummary.getPartNumber()));
                            if (i11 == 0) {
                                this.mFirstPartSize = partSummary.getSize();
                            }
                        }
                    } catch (ClientException e13) {
                        throw e13;
                    } catch (ServiceException e14) {
                        if (e14.getStatusCode() != 404) {
                            throw e14;
                        }
                        this.mUploadId = null;
                        zIsTruncated = false;
                    }
                    oSSAsyncTaskListParts.waitUntilFinished();
                } while (zIsTruncated);
            }
            if (!this.mRecordFile.exists() && !this.mRecordFile.createNewFile()) {
                throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
            }
        }
        if (OSSUtils.isEmptyString(this.mUploadId)) {
            InitiateMultipartUploadRequest initiateMultipartUploadRequest = new InitiateMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), ((ResumableUploadRequest) this.mRequest).getMetadata());
            initiateMultipartUploadRequest.isSequential = true;
            this.mUploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(initiateMultipartUploadRequest, null).getResult()).getUploadId();
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
        if (this.mUploadException == null || !exc.getMessage().equals(this.mUploadException.getMessage())) {
            this.mUploadException = exc;
        }
        OSSLog.logThrowable2Local(exc);
        if (!this.mContext.getCancellationHandler().isCancelled() || this.mIsCancel) {
            return;
        }
        this.mIsCancel = true;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9 A[Catch: all -> 0x00d5, Exception -> 0x00d9, ServiceException -> 0x00dd, TryCatch #11 {ServiceException -> 0x00dd, blocks: (B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f), top: B:108:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fa A[Catch: all -> 0x00d5, Exception -> 0x00d9, ServiceException -> 0x00dd, TRY_LEAVE, TryCatch #11 {ServiceException -> 0x00dd, blocks: (B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f), top: B:108:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0106 A[Catch: IOException -> 0x010a, TRY_ENTER, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x010e A[Catch: IOException -> 0x010a, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0113 A[Catch: IOException -> 0x010a, TRY_LEAVE, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x011d A[Catch: all -> 0x00d5, Exception -> 0x00d9, ServiceException -> 0x00dd, TRY_ENTER, TryCatch #11 {ServiceException -> 0x00dd, blocks: (B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f), top: B:108:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0143 A[Catch: IOException -> 0x010a, TRY_ENTER, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0148 A[Catch: IOException -> 0x010a, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x014d A[Catch: IOException -> 0x010a, TRY_LEAVE, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x015b A[Catch: all -> 0x00d5, TryCatch #13 {all -> 0x00d5, blocks: (B:33:0x0080, B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f, B:76:0x0153, B:78:0x015b, B:79:0x015f, B:81:0x0179, B:82:0x0197), top: B:101:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x015f A[Catch: all -> 0x00d5, TryCatch #13 {all -> 0x00d5, blocks: (B:33:0x0080, B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f, B:76:0x0153, B:78:0x015b, B:79:0x015f, B:81:0x0179, B:82:0x0197), top: B:101:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0179 A[Catch: all -> 0x00d5, TryCatch #13 {all -> 0x00d5, blocks: (B:33:0x0080, B:34:0x0099, B:36:0x00c9, B:43:0x00e1, B:45:0x00fa, B:56:0x011d, B:57:0x012f, B:76:0x0153, B:78:0x015b, B:79:0x015f, B:81:0x0179, B:82:0x0197), top: B:101:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01a4 A[Catch: IOException -> 0x010a, TRY_ENTER, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01a9 A[Catch: IOException -> 0x010a, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01ae A[Catch: IOException -> 0x010a, TRY_LEAVE, TryCatch #9 {IOException -> 0x010a, blocks: (B:47:0x0106, B:51:0x010e, B:53:0x0113, B:68:0x0143, B:70:0x0148, B:72:0x014d, B:84:0x01a4, B:86:0x01a9, B:88:0x01ae), top: B:107:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x01bc A[Catch: IOException -> 0x01b8, TryCatch #2 {IOException -> 0x01b8, blocks: (B:91:0x01b4, B:95:0x01bc, B:97:0x01c1), top: B:103:0x01b4 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01c1 A[Catch: IOException -> 0x01b8, TRY_LEAVE, TryCatch #2 {IOException -> 0x01b8, blocks: (B:91:0x01b4, B:95:0x01bc, B:97:0x01c1), top: B:103:0x01b4 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.alibaba.sdk.android.oss.model.UploadPartRequest] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask, com.alibaba.sdk.android.oss.internal.SequenceUploadTask] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void uploadPart(int i11, int i12, int i13) throws Throwable {
        ?? r11;
        ?? bufferedInputStream;
        ?? randomAccessFile;
        PartETag partETag;
        UploadPartRequest uploadPartRequest;
        UploadPartResult uploadPartResultSyncUploadPart;
        PartETag partETag2;
        ?? r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        r12 = 0;
        try {
            try {
                if (this.mContext.getCancellationHandler().isCancelled()) {
                    return;
                }
                this.mRunPartTaskCount++;
                preUploadPart(i11, i12, i13);
                long partSize = ((long) i11) * ((ResumableUploadRequest) this.mRequest).getPartSize();
                byte[] bArr = new byte[i12];
                if (this.mUploadUri == null) {
                    randomAccessFile = new RandomAccessFile(this.mUploadFile, CampaignEx.JSON_KEY_AD_R);
                    try {
                        randomAccessFile.seek(partSize);
                        randomAccessFile.readFully(bArr, 0, i12);
                        r11 = 0;
                        bufferedInputStream = 0;
                        randomAccessFile = randomAccessFile;
                        uploadPartRequest = new UploadPartRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId, i11 + 1);
                        uploadPartRequest.setPartContent(bArr);
                        uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                        uploadPartRequest.setCRC64(((ResumableUploadRequest) this.mRequest).getCRC64());
                        uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
                        partETag2 = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart.getETag());
                        long j11 = i12;
                        partETag2.setPartSize(j11);
                        if (this.mCheckCRC64) {
                            partETag2.setCRC64(uploadPartResultSyncUploadPart.getClientCRC().longValue());
                        }
                        this.mPartETags.add(partETag2);
                        this.mUploadedLength += j11;
                        uploadPartFinish(partETag2);
                        if (!this.mContext.getCancellationHandler().isCancelled()) {
                            TaskCancelException taskCancelException = new TaskCancelException("sequence upload task cancel");
                            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
                        }
                        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                        if (randomAccessFile != 0) {
                            randomAccessFile.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (bufferedInputStream != 0) {
                            bufferedInputStream.close();
                            return;
                        }
                        return;
                    } catch (ServiceException e11) {
                        e = e11;
                        r11 = 0;
                        bufferedInputStream = 0;
                        if (e.getStatusCode() != 409) {
                            processException(e);
                        } else {
                            partETag = new PartETag(r12.getPartNumber(), e.getPartEtag());
                            partETag.setPartSize(r12.getPartContent().length);
                            if (this.mCheckCRC64) {
                                partETag.setCRC64(new CheckedInputStream(new ByteArrayInputStream(r12.getPartContent()), new CRC64()).getChecksum().getValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += (long) i12;
                        }
                        if (randomAccessFile != 0) {
                            randomAccessFile.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (bufferedInputStream != 0) {
                            bufferedInputStream.close();
                        }
                    } catch (Exception e12) {
                        e = e12;
                        r11 = 0;
                        bufferedInputStream = 0;
                        r12 = randomAccessFile;
                        r11 = r11;
                        bufferedInputStream = bufferedInputStream;
                        processException(e);
                        if (r12 != 0) {
                            r12.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (bufferedInputStream != 0) {
                            bufferedInputStream.close();
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        r11 = 0;
                        bufferedInputStream = 0;
                        r12 = randomAccessFile;
                        if (r12 != 0) {
                            r12.close();
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (bufferedInputStream != 0) {
                                bufferedInputStream.close();
                            }
                        } else {
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (bufferedInputStream != 0) {
                                bufferedInputStream.close();
                            }
                        }
                        throw th;
                    }
                }
                InputStream inputStreamOpenInputStream = this.mContext.getApplicationContext().getContentResolver().openInputStream(this.mUploadUri);
                try {
                    bufferedInputStream = new BufferedInputStream(inputStreamOpenInputStream);
                    try {
                        bufferedInputStream.skip(partSize);
                        bufferedInputStream.read(bArr, 0, i12);
                        r11 = inputStreamOpenInputStream;
                        randomAccessFile = 0;
                        bufferedInputStream = bufferedInputStream;
                        try {
                            try {
                                try {
                                    uploadPartRequest = new UploadPartRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId, i11 + 1);
                                    try {
                                        uploadPartRequest.setPartContent(bArr);
                                        uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                                        uploadPartRequest.setCRC64(((ResumableUploadRequest) this.mRequest).getCRC64());
                                        uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
                                        partETag2 = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart.getETag());
                                        long j12 = i12;
                                        partETag2.setPartSize(j12);
                                        if (this.mCheckCRC64) {
                                            partETag2.setCRC64(uploadPartResultSyncUploadPart.getClientCRC().longValue());
                                        }
                                        this.mPartETags.add(partETag2);
                                        this.mUploadedLength += j12;
                                        uploadPartFinish(partETag2);
                                        if (!this.mContext.getCancellationHandler().isCancelled()) {
                                            TaskCancelException taskCancelException2 = new TaskCancelException("sequence upload task cancel");
                                            throw new ClientException(taskCancelException2.getMessage(), taskCancelException2, Boolean.TRUE);
                                        }
                                        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                                        if (randomAccessFile != 0) {
                                            randomAccessFile.close();
                                        }
                                        if (r11 != 0) {
                                            r11.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                            return;
                                        }
                                        return;
                                    } catch (ServiceException e13) {
                                        e = e13;
                                        r12 = uploadPartRequest;
                                        if (e.getStatusCode() != 409) {
                                            processException(e);
                                        } else {
                                            partETag = new PartETag(r12.getPartNumber(), e.getPartEtag());
                                            partETag.setPartSize(r12.getPartContent().length);
                                            if (this.mCheckCRC64) {
                                                partETag.setCRC64(new CheckedInputStream(new ByteArrayInputStream(r12.getPartContent()), new CRC64()).getChecksum().getValue());
                                            }
                                            this.mPartETags.add(partETag);
                                            this.mUploadedLength += (long) i12;
                                        }
                                        if (randomAccessFile != 0) {
                                            randomAccessFile.close();
                                        }
                                        if (r11 != 0) {
                                            r11.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                    }
                                } catch (ServiceException e14) {
                                    e = e14;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                r12 = randomAccessFile;
                                if (r12 != 0) {
                                    try {
                                        r12.close();
                                        if (r11 != 0) {
                                            r11.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                    } catch (IOException e15) {
                                        OSSLog.logThrowable2Local(e15);
                                    }
                                } else {
                                    if (r11 != 0) {
                                        r11.close();
                                    }
                                    if (bufferedInputStream != 0) {
                                        bufferedInputStream.close();
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e16) {
                            e = e16;
                            r12 = randomAccessFile;
                            r11 = r11;
                            bufferedInputStream = bufferedInputStream;
                            try {
                                processException(e);
                                if (r12 != 0) {
                                    r12.close();
                                }
                                if (r11 != 0) {
                                    r11.close();
                                }
                                if (bufferedInputStream != 0) {
                                    bufferedInputStream.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                    } catch (ServiceException e17) {
                        e = e17;
                        r11 = inputStreamOpenInputStream;
                        randomAccessFile = 0;
                        if (e.getStatusCode() != 409) {
                            processException(e);
                        } else {
                            partETag = new PartETag(r12.getPartNumber(), e.getPartEtag());
                            partETag.setPartSize(r12.getPartContent().length);
                            if (this.mCheckCRC64) {
                                partETag.setCRC64(new CheckedInputStream(new ByteArrayInputStream(r12.getPartContent()), new CRC64()).getChecksum().getValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += (long) i12;
                        }
                        if (randomAccessFile != 0) {
                            randomAccessFile.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (bufferedInputStream != 0) {
                            bufferedInputStream.close();
                        }
                    } catch (Exception e18) {
                        e = e18;
                        r11 = inputStreamOpenInputStream;
                        bufferedInputStream = bufferedInputStream;
                        processException(e);
                        if (r12 != 0) {
                            r12.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (bufferedInputStream != 0) {
                            bufferedInputStream.close();
                            return;
                        }
                        return;
                    } catch (Throwable th5) {
                        th = th5;
                        r11 = inputStreamOpenInputStream;
                        if (r12 != 0) {
                            r12.close();
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (bufferedInputStream != 0) {
                                bufferedInputStream.close();
                            }
                        } else {
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (bufferedInputStream != 0) {
                                bufferedInputStream.close();
                            }
                        }
                        throw th;
                    }
                } catch (ServiceException e19) {
                    e = e19;
                    bufferedInputStream = 0;
                    r11 = inputStreamOpenInputStream;
                    randomAccessFile = 0;
                } catch (Exception e20) {
                    e = e20;
                    bufferedInputStream = 0;
                } catch (Throwable th6) {
                    th = th6;
                    bufferedInputStream = 0;
                }
                if (r12 != 0) {
                    r12.close();
                    if (r11 != 0) {
                        r11.close();
                    }
                    if (bufferedInputStream != 0) {
                        bufferedInputStream.close();
                    }
                } else {
                    if (r11 != 0) {
                        r11.close();
                    }
                    if (bufferedInputStream != 0) {
                        bufferedInputStream.close();
                    }
                }
                throw th;
            } catch (IOException e21) {
                OSSLog.logThrowable2Local(e21);
                return;
            }
        } catch (ServiceException e22) {
            e = e22;
            r11 = r12;
            randomAccessFile = r11;
            bufferedInputStream = randomAccessFile;
        } catch (Exception e23) {
            e = e23;
            ?? r13 = r12;
            bufferedInputStream = r13;
            r12 = r12;
            r11 = r13;
        } catch (Throwable th7) {
            th = th7;
            r11 = r12;
            bufferedInputStream = r11;
        }
        if (e.getStatusCode() != 409) {
            processException(e);
        } else {
            partETag = new PartETag(r12.getPartNumber(), e.getPartEtag());
            partETag.setPartSize(r12.getPartContent().length);
            if (this.mCheckCRC64) {
                partETag.setCRC64(new CheckedInputStream(new ByteArrayInputStream(r12.getPartContent()), new CRC64()).getChecksum().getValue());
            }
            this.mPartETags.add(partETag);
            this.mUploadedLength += (long) i12;
        }
        if (randomAccessFile != 0) {
            randomAccessFile.close();
        }
        if (r11 != 0) {
            r11.close();
        }
        if (bufferedInputStream != 0) {
            bufferedInputStream.close();
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
