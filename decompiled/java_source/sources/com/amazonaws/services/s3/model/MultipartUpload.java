package com.amazonaws.services.s3.model;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MultipartUpload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Owner f18743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Owner f18744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f18745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Date f18746f;

    public void a(Date date) {
        this.f18746f = date;
    }

    public void b(Owner owner) {
        this.f18744d = owner;
    }

    public void c(String str) {
        this.f18741a = str;
    }

    public void d(Owner owner) {
        this.f18743c = owner;
    }

    public void e(String str) {
        this.f18745e = str;
    }

    public void f(String str) {
        this.f18742b = str;
    }
}
