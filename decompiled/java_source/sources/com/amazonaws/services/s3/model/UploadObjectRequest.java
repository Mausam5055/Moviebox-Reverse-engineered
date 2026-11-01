package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.UploadObjectObserver;
import com.amazonaws.services.s3.internal.MultiFileOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class UploadObjectRequest extends AbstractPutObjectRequest implements Serializable {
    static final int MIN_PART_SIZE = 5242880;
    private static final long serialVersionUID = 1;
    private long diskLimit;
    private transient ExecutorService executorService;
    private Map<String, String> materialsDescription;
    private transient MultiFileOutputStream multiFileOutputStream;
    private long partSize;
    private transient UploadObjectObserver uploadObjectObserver;
    private ObjectMetadata uploadPartMetadata;

    public UploadObjectRequest(String str, String str2, File file) {
        super(str, str2, file);
        this.partSize = 5242880L;
        this.diskLimit = Long.MAX_VALUE;
    }

    public UploadObjectRequest(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        super(str, str2, inputStream, objectMetadata);
        this.partSize = 5242880L;
        this.diskLimit = Long.MAX_VALUE;
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest, com.amazonaws.AmazonWebServiceRequest
    /* JADX INFO: renamed from: clone */
    public UploadObjectRequest mo198clone() {
        UploadObjectRequest uploadObjectRequest = (UploadObjectRequest) super.mo198clone();
        super.copyPutObjectBaseTo(uploadObjectRequest);
        Map<String, String> materialsDescription = getMaterialsDescription();
        ObjectMetadata uploadPartMetadata = getUploadPartMetadata();
        return uploadObjectRequest.withMaterialsDescription(materialsDescription == null ? null : new HashMap(materialsDescription)).withDiskLimit(getDiskLimit()).withExecutorService(getExecutorService()).withPartSize(getPartSize()).withUploadObjectObserver(getUploadObjectObserver()).withUploadPartMetadata(uploadPartMetadata != null ? uploadPartMetadata.m201clone() : null);
    }

    public long getDiskLimit() {
        return this.diskLimit;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }

    public MultiFileOutputStream getMultiFileOutputStream() {
        return this.multiFileOutputStream;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public UploadObjectObserver getUploadObjectObserver() {
        return this.uploadObjectObserver;
    }

    public ObjectMetadata getUploadPartMetadata() {
        return this.uploadPartMetadata;
    }

    public void setMaterialsDescription(Map<String, String> map) {
        this.materialsDescription = map == null ? null : Collections.unmodifiableMap(new HashMap(map));
    }

    public void setUploadPartMetadata(ObjectMetadata objectMetadata) {
        this.uploadPartMetadata = objectMetadata;
    }

    public UploadObjectRequest withDiskLimit(long j11) {
        this.diskLimit = j11;
        return this;
    }

    public UploadObjectRequest withExecutorService(ExecutorService executorService) {
        this.executorService = executorService;
        return this;
    }

    public UploadObjectRequest withMaterialsDescription(Map<String, String> map) {
        setMaterialsDescription(map);
        return this;
    }

    public UploadObjectRequest withMultiFileOutputStream(MultiFileOutputStream multiFileOutputStream) {
        this.multiFileOutputStream = multiFileOutputStream;
        return this;
    }

    public UploadObjectRequest withPartSize(long j11) {
        if (j11 < 5242880) {
            throw new IllegalArgumentException("partSize must be at least 5242880");
        }
        this.partSize = j11;
        return this;
    }

    public UploadObjectRequest withUploadObjectObserver(UploadObjectObserver uploadObjectObserver) {
        this.uploadObjectObserver = uploadObjectObserver;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends UploadObjectRequest> T withUploadPartMetadata(ObjectMetadata objectMetadata) {
        setUploadPartMetadata(objectMetadata);
        return this;
    }
}
