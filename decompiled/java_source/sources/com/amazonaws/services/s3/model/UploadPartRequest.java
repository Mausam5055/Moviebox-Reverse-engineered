package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class UploadPartRequest extends AmazonWebServiceRequest implements S3DataSource, Serializable {
    private static final long serialVersionUID = 1;
    private String bucketName;
    private File file;
    private long fileOffset;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f18830id;
    private transient InputStream inputStream;
    private boolean isLastPart;
    private boolean isRequesterPays;
    private String key;
    private int mainUploadId;
    private String md5Digest;
    private ObjectMetadata objectMetadata;
    private int partNumber;
    private long partSize;
    private SSECustomerKey sseCustomerKey;
    private String uploadId;

    public String getBucketName() {
        return this.bucketName;
    }

    public File getFile() {
        return this.file;
    }

    public long getFileOffset() {
        return this.fileOffset;
    }

    public int getId() {
        return this.f18830id;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public String getKey() {
        return this.key;
    }

    public int getMainUploadId() {
        return this.mainUploadId;
    }

    public String getMd5Digest() {
        return this.md5Digest;
    }

    public ObjectMetadata getObjectMetadata() {
        return this.objectMetadata;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    @Deprecated
    public ProgressListener getProgressListener() {
        com.amazonaws.event.ProgressListener generalProgressListener = getGeneralProgressListener();
        if (generalProgressListener instanceof LegacyS3ProgressListener) {
            ((LegacyS3ProgressListener) generalProgressListener).b();
        }
        return null;
    }

    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public boolean isLastPart() {
        return this.isLastPart;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public void setFile(File file) {
        this.file = file;
    }

    public void setFileOffset(long j11) {
        this.fileOffset = j11;
    }

    public void setId(int i11) {
        this.f18830id = i11;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLastPart(boolean z10) {
        this.isLastPart = z10;
    }

    public void setMainUploadId(int i11) {
        this.mainUploadId = i11;
    }

    public void setMd5Digest(String str) {
        this.md5Digest = str;
    }

    public void setObjectMetadata(ObjectMetadata objectMetadata) {
        this.objectMetadata = objectMetadata;
    }

    public void setPartNumber(int i11) {
        this.partNumber = i11;
    }

    public void setPartSize(long j11) {
        this.partSize = j11;
    }

    @Deprecated
    public void setProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(new LegacyS3ProgressListener(progressListener));
    }

    public void setRequesterPays(boolean z10) {
        this.isRequesterPays = z10;
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }

    public UploadPartRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public UploadPartRequest withFile(File file) {
        setFile(file);
        return this;
    }

    public UploadPartRequest withFileOffset(long j11) {
        setFileOffset(j11);
        return this;
    }

    public UploadPartRequest withId(int i11) {
        this.f18830id = i11;
        return this;
    }

    public UploadPartRequest withInputStream(InputStream inputStream) {
        setInputStream(inputStream);
        return this;
    }

    public UploadPartRequest withKey(String str) {
        this.key = str;
        return this;
    }

    public UploadPartRequest withLastPart(boolean z10) {
        setLastPart(z10);
        return this;
    }

    public UploadPartRequest withMD5Digest(String str) {
        this.md5Digest = str;
        return this;
    }

    public UploadPartRequest withMainUploadId(int i11) {
        this.mainUploadId = i11;
        return this;
    }

    public UploadPartRequest withObjectMetadata(ObjectMetadata objectMetadata) {
        setObjectMetadata(objectMetadata);
        return this;
    }

    public UploadPartRequest withPartNumber(int i11) {
        this.partNumber = i11;
        return this;
    }

    public UploadPartRequest withPartSize(long j11) {
        this.partSize = j11;
        return this;
    }

    @Deprecated
    public UploadPartRequest withProgressListener(ProgressListener progressListener) {
        setProgressListener(progressListener);
        return this;
    }

    public UploadPartRequest withRequesterPays(boolean z10) {
        setRequesterPays(z10);
        return this;
    }

    public UploadPartRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    public UploadPartRequest withUploadId(String str) {
        this.uploadId = str;
        return this;
    }
}
