package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes2.dex */
public class ListObjectsRequest extends AmazonWebServiceRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f18716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18717f;

    public ListObjectsRequest() {
    }

    public ListObjectsRequest(String str, String str2, String str3, String str4, Integer num) {
        setBucketName(str);
        e(str2);
        setMarker(str3);
        b(str4);
        d(num);
    }

    public void b(String str) {
        this.f18715d = str;
    }

    public void c(String str) {
        this.f18717f = str;
    }

    public void d(Integer num) {
        this.f18716e = num;
    }

    public void e(String str) {
        this.f18713b = str;
    }

    public ListObjectsRequest f(String str) {
        c(str);
        return this;
    }

    public void setBucketName(String str) {
        this.f18712a = str;
    }

    public void setMarker(String str) {
        this.f18714c = str;
    }
}
