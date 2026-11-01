package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18696id;

    public DeleteBucketMetricsConfigurationRequest() {
    }

    public DeleteBucketMetricsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18696id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18696id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18696id = str;
    }

    public DeleteBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketMetricsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
