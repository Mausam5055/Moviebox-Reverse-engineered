.class public interface abstract Lcom/amazonaws/services/s3/AmazonS3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3DirectSpi;


# virtual methods
.method public abstract a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
.end method

.method public abstract b(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.end method

.method public abstract c(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
.end method

.method public abstract d(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract e(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
.end method

.method public abstract f(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
.end method
