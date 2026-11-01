package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public class MultipartUploadTask extends BaseMultipartUploadTask<MultipartUploadRequest, CompleteMultipartUploadResult> implements Callable<CompleteMultipartUploadResult> {
    public MultipartUploadTask(InternalRequestOperation internalRequestOperation, MultipartUploadRequest multipartUploadRequest, OSSCompletedCallback<MultipartUploadRequest, CompleteMultipartUploadResult> oSSCompletedCallback, ExecutionContext executionContext) {
        super(internalRequestOperation, multipartUploadRequest, oSSCompletedCallback, executionContext);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void abortThisUpload() {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected CompleteMultipartUploadResult doMultipartUpload() throws ServiceException, ClientException, InterruptedException, IOException {
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i11 = iArr[0];
        final int i12 = iArr[1];
        final int i13 = i11;
        int i14 = 0;
        for (final int i15 = 0; i15 < i12; i15++) {
            checkException();
            ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
            if (threadPoolExecutor != null) {
                if (i15 == i12 - 1) {
                    i13 = (int) (this.mFileLength - ((long) i14));
                }
                i14 += i13;
                threadPoolExecutor.execute(new Runnable() { // from class: com.alibaba.sdk.android.oss.internal.MultipartUploadTask.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        MultipartUploadTask.this.uploadPart(i15, i13, i12);
                    }
                });
            }
        }
        if (checkWaitCondition(i12)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        if (this.mUploadException != null) {
            abortThisUpload();
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        releasePool();
        return completeMultipartUploadResult;
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void initMultipartUploadId() throws ServiceException, ClientException {
        String uploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(new InitiateMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mRequest.getMetadata()), null).getResult()).getUploadId();
        this.mUploadId = uploadId;
        this.mRequest.setUploadId(uploadId);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void preUploadPart(int i11, int i12, int i13) throws Exception {
        checkException();
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    protected void processException(Exception exc) {
        synchronized (this.mLock) {
            try {
                this.mPartExceptionCount++;
                if (this.mUploadException == null) {
                    this.mUploadException = exc;
                    this.mLock.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
