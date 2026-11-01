package com.amazonaws.services.s3.model;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class S3ObjectSummary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f18808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f18809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f18810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected long f18811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Date f18812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f18813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Owner f18814g;

    public String a() {
        return this.f18809b;
    }

    public void b(String str) {
        this.f18808a = str;
    }

    public void c(String str) {
        this.f18810c = str;
    }

    public void d(String str) {
        this.f18809b = str;
    }

    public void e(Date date) {
        this.f18812e = date;
    }

    public void f(Owner owner) {
        this.f18814g = owner;
    }

    public void g(long j11) {
        this.f18811d = j11;
    }

    public void h(String str) {
        this.f18813f = str;
    }

    public String toString() {
        return "S3ObjectSummary{bucketName='" + this.f18808a + "', key='" + this.f18809b + "', eTag='" + this.f18810c + "', size=" + this.f18811d + ", lastModified=" + this.f18812e + ", storageClass='" + this.f18813f + "', owner=" + this.f18814g + '}';
    }
}
