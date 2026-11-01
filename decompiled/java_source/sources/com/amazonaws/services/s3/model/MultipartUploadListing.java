package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MultipartUploadListing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f18751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f18752f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f18753g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f18754h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f18755i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f18756j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f18757k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f18758l = new ArrayList();

    public List a() {
        return this.f18758l;
    }

    public List b() {
        if (this.f18757k == null) {
            this.f18757k = new ArrayList();
        }
        return this.f18757k;
    }

    public void c(String str) {
        this.f18747a = str;
    }

    public void d(String str) {
        this.f18749c = str;
    }

    public void e(String str) {
        this.f18753g = str;
    }

    public void f(String str) {
        this.f18748b = str;
    }

    public void g(int i11) {
        this.f18752f = i11;
    }

    public void h(String str) {
        this.f18755i = str;
    }

    public void i(String str) {
        this.f18756j = str;
    }

    public void j(String str) {
        this.f18750d = str;
    }

    public void k(boolean z10) {
        this.f18754h = z10;
    }

    public void l(String str) {
        this.f18751e = str;
    }
}
