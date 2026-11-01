package com.alibaba.sdk.android.oss.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseMultipartUploadTask<Request extends MultipartUploadRequest, Result extends CompleteMultipartUploadResult> implements Callable<Result> {
    protected final int CPU_SIZE;
    protected final int KEEP_ALIVE_TIME;
    protected final int MAX_CORE_POOL_SIZE;
    protected final int MAX_IMUM_POOL_SIZE;
    protected final int MAX_QUEUE_SIZE;
    protected final int PART_SIZE_ALIGN_NUM;
    protected InternalRequestOperation mApiOperation;
    protected boolean mCheckCRC64;
    protected OSSCompletedCallback<Request, Result> mCompletedCallback;
    protected ExecutionContext mContext;
    protected long mFileLength;
    protected boolean mIsCancel;
    protected long mLastPartSize;
    protected Object mLock;
    protected int[] mPartAttr;
    protected List<PartETag> mPartETags;
    protected int mPartExceptionCount;
    protected ThreadPoolExecutor mPoolExecutor;
    protected OSSProgressCallback<Request> mProgressCallback;
    protected Request mRequest;
    protected int mRunPartTaskCount;
    protected Exception mUploadException;
    protected File mUploadFile;
    protected String mUploadFilePath;
    protected String mUploadId;
    protected Uri mUploadUri;
    protected long mUploadedLength;

    public BaseMultipartUploadTask(InternalRequestOperation internalRequestOperation, Request request, OSSCompletedCallback<Request, Result> oSSCompletedCallback, ExecutionContext executionContext) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.CPU_SIZE = iAvailableProcessors;
        int i11 = iAvailableProcessors < 5 ? iAvailableProcessors : 5;
        this.MAX_CORE_POOL_SIZE = i11;
        this.MAX_IMUM_POOL_SIZE = iAvailableProcessors;
        this.KEEP_ALIVE_TIME = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        this.MAX_QUEUE_SIZE = 5000;
        this.PART_SIZE_ALIGN_NUM = 4096;
        this.mPoolExecutor = new ThreadPoolExecutor(i11, iAvailableProcessors, 3000L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(5000), new ThreadFactory() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "oss-android-multipart-thread");
            }
        });
        this.mPartETags = new ArrayList();
        this.mLock = new Object();
        this.mUploadedLength = 0L;
        this.mCheckCRC64 = false;
        this.mPartAttr = new int[2];
        this.mApiOperation = internalRequestOperation;
        this.mRequest = request;
        this.mProgressCallback = request.getProgressCallback();
        this.mCompletedCallback = oSSCompletedCallback;
        this.mContext = executionContext;
        this.mCheckCRC64 = request.getCRC64() == OSSRequest.CRC64Config.YES;
    }

    protected abstract void abortThisUpload();

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        try {
            checkInitData();
            initMultipartUploadId();
            Result result = (Result) doMultipartUpload();
            OSSCompletedCallback<Request, Result> oSSCompletedCallback = this.mCompletedCallback;
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onSuccess(this.mRequest, result);
            }
            return result;
        } catch (ServiceException e11) {
            OSSCompletedCallback<Request, Result> oSSCompletedCallback2 = this.mCompletedCallback;
            if (oSSCompletedCallback2 != null) {
                oSSCompletedCallback2.onFailure(this.mRequest, null, e11);
            }
            throw e11;
        } catch (Exception e12) {
            ClientException clientException = e12 instanceof ClientException ? (ClientException) e12 : new ClientException(e12.toString(), e12);
            OSSCompletedCallback<Request, Result> oSSCompletedCallback3 = this.mCompletedCallback;
            if (oSSCompletedCallback3 != null) {
                oSSCompletedCallback3.onFailure(this.mRequest, clientException, null);
            }
            throw clientException;
        }
    }

    protected long ceilPartSize(long j11) {
        return ((j11 + 4095) / PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) * PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
    }

    protected void checkCancel() throws ClientException {
        if (this.mContext.getCancellationHandler().isCancelled()) {
            TaskCancelException taskCancelException = new TaskCancelException("multipart cancel");
            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
        }
    }

    protected void checkException() throws ServiceException, ClientException, IOException {
        if (this.mUploadException != null) {
            releasePool();
            Exception exc = this.mUploadException;
            if (exc instanceof IOException) {
                throw ((IOException) exc);
            }
            if (exc instanceof ServiceException) {
                throw ((ServiceException) exc);
            }
            if (!(exc instanceof ClientException)) {
                throw new ClientException(this.mUploadException.getMessage(), this.mUploadException);
            }
            throw ((ClientException) exc);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0056 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void checkInitData() throws ClientException {
        if (this.mRequest.getUploadFilePath() != null) {
            this.mUploadFilePath = this.mRequest.getUploadFilePath();
            this.mUploadedLength = 0L;
            File file = new File(this.mUploadFilePath);
            this.mUploadFile = file;
            this.mFileLength = file.length();
        } else if (this.mRequest.getUploadUri() != null) {
            this.mUploadUri = this.mRequest.getUploadUri();
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = null;
            try {
                parcelFileDescriptorOpenFileDescriptor = this.mContext.getApplicationContext().getContentResolver().openFileDescriptor(this.mUploadUri, CampaignEx.JSON_KEY_AD_R);
                this.mFileLength = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (IOException e11) {
                    OSSLog.logThrowable2Local(e11);
                }
            } catch (IOException e12) {
                throw new ClientException(e12.getMessage(), e12, Boolean.TRUE);
            }
        }
        if (this.mFileLength == 0) {
            throw new ClientException("file length must not be 0");
        }
        checkPartSize(this.mPartAttr);
        long partSize = this.mRequest.getPartSize();
        int i11 = this.mPartAttr[1];
        OSSLog.logDebug("[checkInitData] - partNumber : " + i11);
        OSSLog.logDebug("[checkInitData] - partSize : " + partSize);
        if (i11 > 1 && partSize < OSSConstants.MIN_PART_SIZE_LIMIT) {
            throw new ClientException("Part size must be greater than or equal to 100KB!");
        }
    }

    protected void checkPartSize(int[] iArr) {
        long partSize = this.mRequest.getPartSize();
        OSSLog.logDebug("[checkPartSize] - mFileLength : " + this.mFileLength);
        OSSLog.logDebug("[checkPartSize] - partSize : " + partSize);
        long j11 = this.mFileLength;
        long j12 = j11 / partSize;
        if (j11 % partSize != 0) {
            j12++;
        }
        if (j12 == 1) {
            partSize = j11;
        } else if (j12 > 5000) {
            partSize = ceilPartSize(j11 / ((long) 4999));
            long j13 = this.mFileLength;
            j12 = (j13 / partSize) + (j13 % partSize == 0 ? 0L : 1L);
        }
        int i11 = (int) partSize;
        iArr[0] = i11;
        iArr[1] = (int) j12;
        this.mRequest.setPartSize(i11);
        OSSLog.logDebug("[checkPartSize] - partNumber : " + j12);
        OSSLog.logDebug("[checkPartSize] - partSize : " + i11);
        long j14 = this.mFileLength % partSize;
        if (j14 != 0) {
            partSize = j14;
        }
        this.mLastPartSize = partSize;
    }

    protected boolean checkWaitCondition(int i11) {
        return this.mPartETags.size() != i11;
    }

    protected CompleteMultipartUploadResult completeMultipartUploadResult() throws ServiceException, ClientException {
        CompleteMultipartUploadResult completeMultipartUploadResultSyncCompleteMultipartUpload;
        if (this.mPartETags.size() > 0) {
            Collections.sort(this.mPartETags, new Comparator<PartETag>() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.2
                @Override // java.util.Comparator
                public int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.getPartNumber() < partETag2.getPartNumber()) {
                        return -1;
                    }
                    return partETag.getPartNumber() > partETag2.getPartNumber() ? 1 : 0;
                }
            });
            CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, this.mPartETags);
            if (this.mRequest.getCallbackParam() != null) {
                completeMultipartUploadRequest.setCallbackParam(this.mRequest.getCallbackParam());
            }
            if (this.mRequest.getCallbackVars() != null) {
                completeMultipartUploadRequest.setCallbackVars(this.mRequest.getCallbackVars());
            }
            if (this.mRequest.getMetadata() != null) {
                ObjectMetadata objectMetadata = new ObjectMetadata();
                for (String str : this.mRequest.getMetadata().getRawMetadata().keySet()) {
                    if (!str.equals(OSSHeaders.STORAGE_CLASS)) {
                        objectMetadata.setHeader(str, this.mRequest.getMetadata().getRawMetadata().get(str));
                    }
                }
                completeMultipartUploadRequest.setMetadata(objectMetadata);
            }
            completeMultipartUploadRequest.setCRC64(this.mRequest.getCRC64());
            completeMultipartUploadResultSyncCompleteMultipartUpload = this.mApiOperation.syncCompleteMultipartUpload(completeMultipartUploadRequest);
        } else {
            completeMultipartUploadResultSyncCompleteMultipartUpload = null;
        }
        this.mUploadedLength = 0L;
        return completeMultipartUploadResultSyncCompleteMultipartUpload;
    }

    protected abstract Result doMultipartUpload() throws ServiceException, ClientException, InterruptedException, IOException;

    protected abstract void initMultipartUploadId() throws ServiceException, ClientException, IOException;

    protected void notifyMultipartThread() {
        this.mLock.notify();
        this.mPartExceptionCount = 0;
    }

    protected void onProgressCallback(Request request, long j11, long j12) {
        OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
        if (oSSProgressCallback != null) {
            oSSProgressCallback.onProgress(request, j11, j12);
        }
    }

    protected void preUploadPart(int i11, int i12, int i13) throws Exception {
    }

    protected abstract void processException(Exception exc);

    protected void releasePool() {
        ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.getQueue().clear();
            this.mPoolExecutor.shutdown();
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7 A[Catch: all -> 0x00d3, TryCatch #8 {all -> 0x00d3, blocks: (B:36:0x00b2, B:38:0x00c7, B:41:0x00d6, B:43:0x00ef, B:52:0x0129, B:46:0x00fd, B:47:0x010f, B:48:0x0110, B:50:0x011c, B:51:0x011f), top: B:102:0x00b2, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ef A[Catch: all -> 0x00d3, TryCatch #8 {all -> 0x00d3, blocks: (B:36:0x00b2, B:38:0x00c7, B:41:0x00d6, B:43:0x00ef, B:52:0x0129, B:46:0x00fd, B:47:0x010f, B:48:0x0110, B:50:0x011c, B:51:0x011f), top: B:102:0x00b2, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fd A[Catch: all -> 0x00d3, TryCatch #8 {all -> 0x00d3, blocks: (B:36:0x00b2, B:38:0x00c7, B:41:0x00d6, B:43:0x00ef, B:52:0x0129, B:46:0x00fd, B:47:0x010f, B:48:0x0110, B:50:0x011c, B:51:0x011f), top: B:102:0x00b2, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0110 A[Catch: all -> 0x00d3, TryCatch #8 {all -> 0x00d3, blocks: (B:36:0x00b2, B:38:0x00c7, B:41:0x00d6, B:43:0x00ef, B:52:0x0129, B:46:0x00fd, B:47:0x010f, B:48:0x0110, B:50:0x011c, B:51:0x011f), top: B:102:0x00b2, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x011c A[Catch: all -> 0x00d3, TryCatch #8 {all -> 0x00d3, blocks: (B:36:0x00b2, B:38:0x00c7, B:41:0x00d6, B:43:0x00ef, B:52:0x0129, B:46:0x00fd, B:47:0x010f, B:48:0x0110, B:50:0x011c, B:51:0x011f), top: B:102:0x00b2, outer: #14 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x012c A[Catch: IOException -> 0x0130, TRY_ENTER, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0134 A[Catch: IOException -> 0x0130, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0139 A[Catch: IOException -> 0x0130, TRY_LEAVE, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x015d A[Catch: IOException -> 0x0130, TRY_ENTER, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0162 A[Catch: IOException -> 0x0130, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0167 A[Catch: IOException -> 0x0130, TRY_LEAVE, TryCatch #7 {IOException -> 0x0130, blocks: (B:54:0x012c, B:58:0x0134, B:60:0x0139, B:78:0x015d, B:80:0x0162, B:82:0x0167), top: B:101:0x0001 }] */
    protected void uploadPart(int i11, int i12, int i13) throws Throwable {
        Throwable th2;
        InputStream inputStream;
        BufferedInputStream bufferedInputStream;
        RandomAccessFile randomAccessFile;
        UploadPartRequest uploadPartRequest;
        UploadPartResult uploadPartResultSyncUploadPart;
        PartETag partETag;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (this.mContext.getCancellationHandler().isCancelled()) {
                    this.mPoolExecutor.getQueue().clear();
                    return;
                }
                synchronized (this.mLock) {
                    this.mRunPartTaskCount++;
                }
                preUploadPart(i11, i12, i13);
                byte[] bArr = new byte[i12];
                long partSize = ((long) i11) * this.mRequest.getPartSize();
                if (this.mUploadUri != null) {
                    InputStream inputStreamOpenInputStream = this.mContext.getApplicationContext().getContentResolver().openInputStream(this.mUploadUri);
                    try {
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStreamOpenInputStream);
                        try {
                            bufferedInputStream2.skip(partSize);
                            bufferedInputStream2.read(bArr, 0, i12);
                            randomAccessFile = null;
                            bufferedInputStream = bufferedInputStream2;
                            inputStream = inputStreamOpenInputStream;
                            try {
                                uploadPartRequest = new UploadPartRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, i11 + 1);
                                uploadPartRequest.setPartContent(bArr);
                                uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                                uploadPartRequest.setCRC64(this.mRequest.getCRC64());
                                uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
                                synchronized (this.mLock) {
                                    try {
                                        partETag = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart.getETag());
                                        long j11 = i12;
                                        partETag.setPartSize(j11);
                                        if (this.mCheckCRC64) {
                                            partETag.setCRC64(uploadPartResultSyncUploadPart.getClientCRC().longValue());
                                        }
                                        this.mPartETags.add(partETag);
                                        this.mUploadedLength += j11;
                                        uploadPartFinish(partETag);
                                        if (this.mContext.getCancellationHandler().isCancelled()) {
                                            if (this.mPartETags.size() == i13 - this.mPartExceptionCount) {
                                                notifyMultipartThread();
                                            }
                                            onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                                        } else if (this.mPartETags.size() != this.mRunPartTaskCount - this.mPartExceptionCount) {
                                            TaskCancelException taskCancelException = new TaskCancelException("multipart cancel");
                                            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
                                        }
                                    } catch (Throwable th3) {
                                        throw th3;
                                    }
                                }
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                    return;
                                }
                                return;
                            } catch (Exception e11) {
                                e = e11;
                                randomAccessFile2 = randomAccessFile;
                                try {
                                    processException(e);
                                    if (randomAccessFile2 != null) {
                                        randomAccessFile2.close();
                                    }
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th4) {
                                    th2 = th4;
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                                randomAccessFile2 = randomAccessFile;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            bufferedInputStream = bufferedInputStream2;
                            inputStream = inputStreamOpenInputStream;
                            processException(e);
                            if (randomAccessFile2 != null) {
                                randomAccessFile2.close();
                            }
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                                return;
                            }
                            return;
                        } catch (Throwable th6) {
                            th2 = th6;
                            bufferedInputStream = bufferedInputStream2;
                            inputStream = inputStreamOpenInputStream;
                        }
                    } catch (Exception e13) {
                        e = e13;
                        bufferedInputStream = null;
                    } catch (Throwable th7) {
                        th2 = th7;
                        bufferedInputStream = null;
                    }
                } else {
                    RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.mUploadFile, CampaignEx.JSON_KEY_AD_R);
                    try {
                        randomAccessFile3.seek(partSize);
                        randomAccessFile3.readFully(bArr, 0, i12);
                        inputStream = null;
                        bufferedInputStream = null;
                        randomAccessFile = randomAccessFile3;
                        uploadPartRequest = new UploadPartRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, i11 + 1);
                        uploadPartRequest.setPartContent(bArr);
                        uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                        uploadPartRequest.setCRC64(this.mRequest.getCRC64());
                        uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
                        synchronized (this.mLock) {
                            partETag = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart.getETag());
                            long j12 = i12;
                            partETag.setPartSize(j12);
                            if (this.mCheckCRC64) {
                                partETag.setCRC64(uploadPartResultSyncUploadPart.getClientCRC().longValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += j12;
                            uploadPartFinish(partETag);
                            if (this.mContext.getCancellationHandler().isCancelled()) {
                                if (this.mPartETags.size() == i13 - this.mPartExceptionCount) {
                                    notifyMultipartThread();
                                }
                                onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                            } else if (this.mPartETags.size() != this.mRunPartTaskCount - this.mPartExceptionCount) {
                                TaskCancelException taskCancelException2 = new TaskCancelException("multipart cancel");
                                throw new ClientException(taskCancelException2.getMessage(), taskCancelException2, Boolean.TRUE);
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                                return;
                            }
                            return;
                        }
                    } catch (Exception e14) {
                        e = e14;
                        inputStream = null;
                        bufferedInputStream = null;
                        randomAccessFile2 = randomAccessFile3;
                        processException(e);
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                            return;
                        }
                        return;
                    } catch (Throwable th8) {
                        th2 = th8;
                        inputStream = null;
                        bufferedInputStream = null;
                        randomAccessFile2 = randomAccessFile3;
                    }
                }
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (IOException e15) {
                        OSSLog.logThrowable2Local(e15);
                        throw th2;
                    }
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream == null) {
                    throw th2;
                }
                inputStream.close();
                throw th2;
            } catch (IOException e16) {
                OSSLog.logThrowable2Local(e16);
            }
        } catch (Exception e17) {
            e = e17;
            inputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th9) {
            th2 = th9;
            inputStream = null;
            bufferedInputStream = null;
        }
    }

    protected void uploadPartFinish(PartETag partETag) throws Exception {
    }
}
