package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PartListing implements S3RequesterChargedResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f18765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f18766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Owner f18768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Owner f18769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f18770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f18771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Integer f18772k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f18773l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f18774m;

    public List a() {
        if (this.f18773l == null) {
            this.f18773l = new ArrayList();
        }
        return this.f18773l;
    }

    public void b(String str) {
        this.f18762a = str;
    }

    public void c(String str) {
        this.f18767f = str;
    }

    public void d(Owner owner) {
        this.f18769h = owner;
    }

    public void e(String str) {
        this.f18763b = str;
    }

    public void f(int i11) {
        this.f18765d = Integer.valueOf(i11);
    }

    public void g(int i11) {
        this.f18772k = Integer.valueOf(i11);
    }

    public void h(Owner owner) {
        this.f18768g = owner;
    }

    public void i(int i11) {
        this.f18766e = Integer.valueOf(i11);
    }

    public void j(String str) {
        this.f18770i = str;
    }

    public void k(boolean z10) {
        this.f18771j = z10;
    }

    public void l(String str) {
        this.f18764c = str;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        this.f18774m = z10;
    }
}
