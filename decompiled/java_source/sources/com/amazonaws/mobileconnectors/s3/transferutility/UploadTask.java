package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.util.Mimetypes;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
class UploadTask implements Callable<Boolean> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Log f18547g = LogFactory.b(UploadTask.class);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Map f18548h = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AmazonS3 f18549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TransferRecord f18550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TransferDBUtil f18551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TransferStatusUpdater f18552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Map f18553e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f18554f;

    class UploadPartTaskMetadata {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        UploadPartRequest f18555a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Future f18556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f18557c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TransferState f18558d;

        UploadPartTaskMetadata() {
        }
    }

    class UploadTaskProgressListener implements ProgressListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f18560a;

        UploadTaskProgressListener(TransferRecord transferRecord) {
            this.f18560a = transferRecord.f18489i;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
        }

        public synchronized void b(int i11, long j11) {
            UploadPartTaskMetadata uploadPartTaskMetadata = (UploadPartTaskMetadata) UploadTask.this.f18553e.get(Integer.valueOf(i11));
            if (uploadPartTaskMetadata == null) {
                UploadTask.f18547g.d("Update received for unknown part. Ignoring.");
                return;
            }
            uploadPartTaskMetadata.f18557c = j11;
            Iterator it = UploadTask.this.f18553e.entrySet().iterator();
            long j12 = 0;
            while (it.hasNext()) {
                j12 += ((UploadPartTaskMetadata) ((Map.Entry) it.next()).getValue()).f18557c;
            }
            if (j12 > this.f18560a) {
                UploadTask.this.f18552d.k(UploadTask.this.f18550b.f18481a, j12, UploadTask.this.f18550b.f18488h, true);
                this.f18560a = j12;
            }
        }
    }

    static {
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            f18548h.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.f18550b = transferRecord;
        this.f18549a = amazonS3;
        this.f18551c = transferDBUtil;
        this.f18552d = transferStatusUpdater;
    }

    private void a(int i11, String str, String str2, String str3) {
        Log log = f18547g;
        log.d("Aborting the multipart since complete multipart failed.");
        try {
            this.f18549a.e(new AbortMultipartUploadRequest(str, str2, str3));
            log.a("Successfully aborted multipart upload: " + i11);
        } catch (AmazonClientException e11) {
            f18547g.g("Failed to abort the multipart upload: " + i11, e11);
        }
    }

    private void f(int i11, String str, String str2, String str3) {
        CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(str, str2, str3, this.f18551c.m(i11));
        TransferUtility.a(completeMultipartUploadRequest);
        this.f18549a.b(completeMultipartUploadRequest);
    }

    private PutObjectRequest g(TransferRecord transferRecord) {
        File file = new File(transferRecord.f18499s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.f18496p, transferRecord.f18497q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.length());
        String str = transferRecord.f18506z;
        if (str != null) {
            objectMetadata.setCacheControl(str);
        }
        String str2 = transferRecord.f18504x;
        if (str2 != null) {
            objectMetadata.setContentDisposition(str2);
        }
        String str3 = transferRecord.f18505y;
        if (str3 != null) {
            objectMetadata.setContentEncoding(str3);
        }
        String str4 = transferRecord.f18502v;
        if (str4 != null) {
            objectMetadata.setContentType(str4);
        } else {
            objectMetadata.setContentType(Mimetypes.a().b(file));
        }
        String str5 = transferRecord.B;
        if (str5 != null) {
            putObjectRequest.setStorageClass(str5);
        }
        String str6 = transferRecord.D;
        if (str6 != null) {
            objectMetadata.setExpirationTimeRuleId(str6);
        }
        if (transferRecord.E != null) {
            objectMetadata.setHttpExpiresDate(new Date(Long.valueOf(transferRecord.E).longValue()));
        }
        String str7 = transferRecord.F;
        if (str7 != null) {
            objectMetadata.setSSEAlgorithm(str7);
        }
        Map<String, String> map = transferRecord.C;
        if (map != null) {
            objectMetadata.setUserMetadata(map);
            String str8 = (String) transferRecord.C.get("x-amz-tagging");
            if (str8 != null) {
                try {
                    String[] strArrSplit = str8.split(UrlUtils.AND_MARK);
                    ArrayList arrayList = new ArrayList();
                    for (String str9 : strArrSplit) {
                        String[] strArrSplit2 = str9.split(UrlUtils.EQUAL_MARK);
                        arrayList.add(new Tag(strArrSplit2[0], strArrSplit2[1]));
                    }
                    putObjectRequest.setTagging(new ObjectTagging(arrayList));
                } catch (Exception e11) {
                    f18547g.e("Error in passing the object tags as request headers.", e11);
                }
            }
            String str10 = (String) transferRecord.C.get("x-amz-website-redirect-location");
            if (str10 != null) {
                putObjectRequest.setRedirectLocation(str10);
            }
            String str11 = (String) transferRecord.C.get("x-amz-request-payer");
            if (str11 != null) {
                putObjectRequest.setRequesterPays("requester".equals(str11));
            }
        }
        String str12 = transferRecord.H;
        if (str12 != null) {
            objectMetadata.setContentMD5(str12);
        }
        String str13 = transferRecord.G;
        if (str13 != null) {
            putObjectRequest.setSSEAwsKeyManagementParams(new SSEAwsKeyManagementParams(str13));
        }
        putObjectRequest.setMetadata(objectMetadata);
        putObjectRequest.setCannedAcl(h(transferRecord.I));
        return putObjectRequest;
    }

    private static CannedAccessControlList h(String str) {
        if (str == null) {
            return null;
        }
        return (CannedAccessControlList) f18548h.get(str);
    }

    private String i(PutObjectRequest putObjectRequest) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequestWithTagging = new InitiateMultipartUploadRequest(putObjectRequest.getBucketName(), putObjectRequest.getKey()).withCannedACL(putObjectRequest.getCannedAcl()).withObjectMetadata(putObjectRequest.getMetadata()).withSSEAwsKeyManagementParams(putObjectRequest.getSSEAwsKeyManagementParams()).withTagging(putObjectRequest.getTagging());
        TransferUtility.a(initiateMultipartUploadRequestWithTagging);
        return this.f18549a.c(initiateMultipartUploadRequestWithTagging).a();
    }

    private Boolean j() {
        long j11;
        String str = this.f18550b.f18500t;
        if (str == null || str.isEmpty()) {
            PutObjectRequest putObjectRequestG = g(this.f18550b);
            TransferUtility.a(putObjectRequestG);
            try {
                this.f18550b.f18500t = i(putObjectRequestG);
                TransferDBUtil transferDBUtil = this.f18551c;
                TransferRecord transferRecord = this.f18550b;
                transferDBUtil.r(transferRecord.f18481a, transferRecord.f18500t);
                j11 = 0;
            } catch (AmazonClientException e11) {
                f18547g.e("Error initiating multipart upload: " + this.f18550b.f18481a + " due to " + e11.getMessage(), e11);
                this.f18552d.i(this.f18550b.f18481a, e11);
                this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } else {
            long jL = this.f18551c.l(this.f18550b.f18481a);
            if (jL > 0) {
                f18547g.d(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f18550b.f18481a), Long.valueOf(jL)));
            }
            j11 = jL;
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(this.f18550b);
        TransferStatusUpdater transferStatusUpdater = this.f18552d;
        TransferRecord transferRecord2 = this.f18550b;
        transferStatusUpdater.k(transferRecord2.f18481a, j11, transferRecord2.f18488h, false);
        TransferDBUtil transferDBUtil2 = this.f18551c;
        TransferRecord transferRecord3 = this.f18550b;
        this.f18554f = transferDBUtil2.g(transferRecord3.f18481a, transferRecord3.f18500t);
        f18547g.d("Multipart upload " + this.f18550b.f18481a + " in " + this.f18554f.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.f18554f) {
            TransferUtility.a(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.f18555a = uploadPartRequest;
            uploadPartTaskMetadata.f18557c = 0L;
            uploadPartTaskMetadata.f18558d = TransferState.WAITING;
            this.f18553e.put(Integer.valueOf(uploadPartRequest.getPartNumber()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.f18556b = TransferThreadPool.c(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f18549a, this.f18551c));
        }
        try {
            Iterator it = this.f18553e.values().iterator();
            boolean zBooleanValue = true;
            while (it.hasNext()) {
                zBooleanValue &= ((Boolean) ((UploadPartTaskMetadata) it.next()).f18556b.get()).booleanValue();
            }
            if (!zBooleanValue) {
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        f18547g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f18552d.l(this.f18550b.f18481a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e12) {
                    f18547g.f("TransferUtilityException: [" + e12 + "]");
                }
            }
            f18547g.d("Completing the multi-part upload transfer for " + this.f18550b.f18481a);
            try {
                TransferRecord transferRecord4 = this.f18550b;
                f(transferRecord4.f18481a, transferRecord4.f18496p, transferRecord4.f18497q, transferRecord4.f18500t);
                TransferStatusUpdater transferStatusUpdater2 = this.f18552d;
                TransferRecord transferRecord5 = this.f18550b;
                int i11 = transferRecord5.f18481a;
                long j12 = transferRecord5.f18488h;
                transferStatusUpdater2.k(i11, j12, j12, true);
                this.f18552d.l(this.f18550b.f18481a, TransferState.COMPLETED);
                return Boolean.TRUE;
            } catch (AmazonClientException e13) {
                f18547g.e("Failed to complete multipart: " + this.f18550b.f18481a + " due to " + e13.getMessage(), e13);
                TransferRecord transferRecord6 = this.f18550b;
                a(transferRecord6.f18481a, transferRecord6.f18496p, transferRecord6.f18497q, transferRecord6.f18500t);
                this.f18552d.i(this.f18550b.f18481a, e13);
                this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } catch (Exception e14) {
            f18547g.f("Upload resulted in an exception. " + e14);
            Iterator it2 = this.f18553e.values().iterator();
            while (it2.hasNext()) {
                ((UploadPartTaskMetadata) it2.next()).f18556b.cancel(true);
            }
            if (TransferState.PENDING_CANCEL.equals(this.f18550b.f18495o)) {
                TransferStatusUpdater transferStatusUpdater3 = this.f18552d;
                int i12 = this.f18550b.f18481a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater3.l(i12, transferState);
                f18547g.d("Transfer is " + transferState);
                return Boolean.FALSE;
            }
            if (TransferState.PENDING_PAUSE.equals(this.f18550b.f18495o)) {
                TransferStatusUpdater transferStatusUpdater4 = this.f18552d;
                int i13 = this.f18550b.f18481a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater4.l(i13, transferState2);
                f18547g.d("Transfer is " + transferState2);
                return Boolean.FALSE;
            }
            for (UploadPartTaskMetadata uploadPartTaskMetadata2 : this.f18553e.values()) {
                TransferState transferState3 = TransferState.WAITING_FOR_NETWORK;
                if (transferState3.equals(uploadPartTaskMetadata2.f18558d)) {
                    f18547g.d("Individual part is WAITING_FOR_NETWORK.");
                    this.f18552d.l(this.f18550b.f18481a, transferState3);
                    return Boolean.FALSE;
                }
            }
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    f18547g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                    this.f18552d.l(this.f18550b.f18481a, TransferState.WAITING_FOR_NETWORK);
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e15) {
                f18547g.f("TransferUtilityException: [" + e15 + "]");
            }
            if (RetryUtils.b(e14)) {
                f18547g.d("Transfer is interrupted. " + e14);
                this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            f18547g.e("Error encountered during multi-part upload: " + this.f18550b.f18481a + " due to " + e14.getMessage(), e14);
            this.f18552d.i(this.f18550b.f18481a, e14);
            this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
            return Boolean.FALSE;
        }
    }

    private Boolean k() {
        PutObjectRequest putObjectRequestG = g(this.f18550b);
        ProgressListener progressListenerF = this.f18552d.f(this.f18550b.f18481a);
        long length = putObjectRequestG.getFile().length();
        TransferUtility.b(putObjectRequestG);
        putObjectRequestG.setGeneralProgressListener(progressListenerF);
        try {
            this.f18549a.f(putObjectRequestG);
            this.f18552d.k(this.f18550b.f18481a, length, length, true);
            this.f18552d.l(this.f18550b.f18481a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e11) {
            if (TransferState.PENDING_CANCEL.equals(this.f18550b.f18495o)) {
                TransferStatusUpdater transferStatusUpdater = this.f18552d;
                int i11 = this.f18550b.f18481a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater.l(i11, transferState);
                f18547g.d("Transfer is " + transferState);
                return Boolean.FALSE;
            }
            if (TransferState.PENDING_PAUSE.equals(this.f18550b.f18495o)) {
                TransferStatusUpdater transferStatusUpdater2 = this.f18552d;
                int i12 = this.f18550b.f18481a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater2.l(i12, transferState2);
                f18547g.d("Transfer is " + transferState2);
                new ProgressEvent(0L).c(32);
                progressListenerF.a(new ProgressEvent(0L));
                return Boolean.FALSE;
            }
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    Log log = f18547g;
                    log.d("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.f18552d.l(this.f18550b.f18481a, TransferState.WAITING_FOR_NETWORK);
                    log.a("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    new ProgressEvent(0L).c(32);
                    progressListenerF.a(new ProgressEvent(0L));
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e12) {
                f18547g.f("TransferUtilityException: [" + e12 + "]");
            }
            if (RetryUtils.b(e11)) {
                f18547g.d("Transfer is interrupted. " + e11);
                this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            f18547g.a("Failed to upload: " + this.f18550b.f18481a + " due to " + e11.getMessage());
            this.f18552d.i(this.f18550b.f18481a, e11);
            this.f18552d.l(this.f18550b.f18481a, TransferState.FAILED);
            return Boolean.FALSE;
        }
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                f18547g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.f18552d.l(this.f18550b.f18481a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e11) {
            f18547g.f("TransferUtilityException: [" + e11 + "]");
        }
        this.f18552d.l(this.f18550b.f18481a, TransferState.IN_PROGRESS);
        TransferRecord transferRecord = this.f18550b;
        int i11 = transferRecord.f18484d;
        if (i11 == 1 && transferRecord.f18487g == 0) {
            return j();
        }
        return i11 == 0 ? k() : Boolean.FALSE;
    }
}
