package com.mbridge.msdk.splash.request;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37585e;

    public int a() {
        return this.f37585e;
    }

    public void a(int i11) {
        this.f37585e = i11;
    }

    public void a(String str) {
        this.f37582b = str;
    }

    public int b() {
        return this.f37584d;
    }

    public void b(int i11) {
        this.f37584d = i11;
    }

    public int c() {
        return this.f37583c;
    }

    public void c(int i11) {
        this.f37583c = i11;
    }

    public int d() {
        return this.f37581a;
    }

    public void d(int i11) {
        this.f37581a = i11;
    }

    public String e() {
        return this.f37582b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f37581a + ", session_id='" + this.f37582b + "', offset=" + this.f37583c + ", expectWidth=" + this.f37584d + ", expectHeight=" + this.f37585e + '}';
    }
}
