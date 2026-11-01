package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetBucketInventoryConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18701id;

    public GetBucketInventoryConfigurationRequest() {
    }

    public GetBucketInventoryConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18701id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18701id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18701id = str;
    }

    public GetBucketInventoryConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketInventoryConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
