package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
class UploadPartTask implements Callable<Boolean> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Log f18538f = LogFactory.b(UploadPartTask.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UploadTask.UploadPartTaskMetadata f18539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final UploadTask.UploadTaskProgressListener f18540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final UploadPartRequest f18541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AmazonS3 f18542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TransferDBUtil f18543e;

    private class UploadPartTaskProgressListener implements ProgressListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private UploadTask.UploadTaskProgressListener f18544a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f18545b;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            this.f18544a = uploadTaskProgressListener;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
            if (32 == progressEvent.b()) {
                UploadPartTask.f18538f.d("Reset Event triggered. Resetting the bytesCurrent to 0.");
                this.f18545b = 0L;
            } else {
                this.f18545b += progressEvent.a();
            }
            this.f18544a.b(UploadPartTask.this.f18541c.getPartNumber(), this.f18545b);
        }
    }

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.f18539a = uploadPartTaskMetadata;
        this.f18540b = uploadTaskProgressListener;
        this.f18541c = uploadPartRequest;
        this.f18542d = amazonS3;
        this.f18543e = transferDBUtil;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws Exception {
        try {
            this.f18539a.f18558d = TransferState.IN_PROGRESS;
            this.f18541c.setGeneralProgressListener(new UploadPartTaskProgressListener(this.f18540b));
            UploadPartResult uploadPartResultA = this.f18542d.a(this.f18541c);
            UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata = this.f18539a;
            TransferState transferState = TransferState.PART_COMPLETED;
            uploadPartTaskMetadata.f18558d = transferState;
            this.f18543e.s(this.f18541c.getId(), transferState);
            this.f18543e.q(this.f18541c.getId(), uploadPartResultA.getETag());
            return Boolean.TRUE;
        } catch (Exception e11) {
            Log log = f18538f;
            log.f("Upload part interrupted: " + e11);
            new ProgressEvent(0L).c(32);
            this.f18540b.a(new ProgressEvent(0L));
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    log.d("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata2 = this.f18539a;
                    TransferState transferState2 = TransferState.WAITING_FOR_NETWORK;
                    uploadPartTaskMetadata2.f18558d = transferState2;
                    this.f18543e.s(this.f18541c.getId(), transferState2);
                    log.d("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e12) {
                f18538f.f("TransferUtilityException: [" + e12 + "]");
            }
            UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata3 = this.f18539a;
            TransferState transferState3 = TransferState.FAILED;
            uploadPartTaskMetadata3.f18558d = transferState3;
            this.f18543e.s(this.f18541c.getId(), transferState3);
            f18538f.e("Encountered error uploading part ", e11);
            throw e11;
        }
    }
}
