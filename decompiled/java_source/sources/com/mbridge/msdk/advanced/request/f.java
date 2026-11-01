package com.mbridge.msdk.advanced.request;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34212e;

    public int a() {
        return this.f34212e;
    }

    public void a(int i11) {
        this.f34212e = i11;
    }

    public void a(String str) {
        this.f34209b = str;
    }

    public int b() {
        return this.f34211d;
    }

    public void b(int i11) {
        this.f34211d = i11;
    }

    public int c() {
        return this.f34210c;
    }

    public void c(int i11) {
        this.f34210c = i11;
    }

    public int d() {
        return this.f34208a;
    }

    public void d(int i11) {
        this.f34208a = i11;
    }

    public String e() {
        return this.f34209b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f34208a + ", session_id='" + this.f34209b + "', offset=" + this.f34210c + ", expectWidth=" + this.f34211d + ", expectHeight=" + this.f34212e + '}';
    }
}
