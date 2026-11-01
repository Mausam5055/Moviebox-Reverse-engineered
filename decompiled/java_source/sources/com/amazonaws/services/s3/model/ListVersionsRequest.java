package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes2.dex */
public class ListVersionsRequest extends AmazonWebServiceRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f18734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f18735f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f18736g;

    public ListVersionsRequest() {
    }

    public ListVersionsRequest(String str, String str2, String str3, String str4, String str5, Integer num) {
        setBucketName(str);
        e(str2);
        d(str3);
        f(str4);
        b(str5);
        setMaxResults(num);
    }

    public void b(String str) {
        this.f18734e = str;
    }

    public void c(String str) {
        this.f18736g = str;
    }

    public void d(String str) {
        this.f18732c = str;
    }

    public void e(String str) {
        this.f18731b = str;
    }

    public void f(String str) {
        this.f18733d = str;
    }

    public ListVersionsRequest g(String str) {
        c(str);
        return this;
    }

    public void setBucketName(String str) {
        this.f18730a = str;
    }

    public void setMaxResults(Integer num) {
        this.f18735f = num;
    }
}
