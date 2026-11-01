package com.amazonaws.services.s3;

import com.amazonaws.services.s3.internal.S3DirectSpi;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;

/* JADX INFO: loaded from: classes2.dex */
public interface AmazonS3 extends S3DirectSpi {
    @Override // com.amazonaws.services.s3.internal.S3DirectSpi
    UploadPartResult a(UploadPartRequest uploadPartRequest);

    CompleteMultipartUploadResult b(CompleteMultipartUploadRequest completeMultipartUploadRequest);

    InitiateMultipartUploadResult c(InitiateMultipartUploadRequest initiateMultipartUploadRequest);

    S3Object d(GetObjectRequest getObjectRequest);

    void e(AbortMultipartUploadRequest abortMultipartUploadRequest);

    PutObjectResult f(PutObjectRequest putObjectRequest);
}
