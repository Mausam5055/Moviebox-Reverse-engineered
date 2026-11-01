package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GetBucketAnalyticsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18700id;

    public GetBucketAnalyticsConfigurationRequest() {
    }

    public GetBucketAnalyticsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18700id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18700id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18700id = str;
    }

    public GetBucketAnalyticsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketAnalyticsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
