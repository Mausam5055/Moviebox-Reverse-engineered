package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.model.AmazonS3Exception;

/* JADX INFO: loaded from: classes2.dex */
public class CompleteMultipartUploadRetryCondition implements RetryPolicy.RetryCondition {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18620b;

    public CompleteMultipartUploadRetryCondition() {
        this(3);
    }

    CompleteMultipartUploadRetryCondition(int i11) {
        this.f18620b = i11;
    }

    @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
    public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11) {
        return (amazonClientException instanceof AmazonS3Exception) && b((AmazonS3Exception) amazonClientException) && i11 < this.f18620b;
    }

    boolean b(AmazonS3Exception amazonS3Exception) {
        return (amazonS3Exception == null || amazonS3Exception.getErrorCode() == null || amazonS3Exception.getErrorMessage() == null || !amazonS3Exception.getErrorCode().contains("InternalError") || !amazonS3Exception.getErrorMessage().contains("Please try again.")) ? false : true;
    }
}
