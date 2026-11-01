package com.google.zxing.pdf417.decoder;

/* JADX INFO: loaded from: classes4.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f32967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32971e = -1;

    d(int i11, int i12, int i13, int i14) {
        this.f32967a = i11;
        this.f32968b = i12;
        this.f32969c = i13;
        this.f32970d = i14;
    }

    int a() {
        return this.f32969c;
    }

    int b() {
        return this.f32968b;
    }

    int c() {
        return this.f32971e;
    }

    int d() {
        return this.f32967a;
    }

    int e() {
        return this.f32970d;
    }

    int f() {
        return this.f32968b - this.f32967a;
    }

    boolean g() {
        return h(this.f32971e);
    }

    boolean h(int i11) {
        return i11 != -1 && this.f32969c == (i11 % 3) * 3;
    }

    void i(int i11) {
        this.f32971e = i11;
    }

    void j() {
        this.f32971e = ((this.f32970d / 30) * 3) + (this.f32969c / 3);
    }

    public String toString() {
        return this.f32971e + "|" + this.f32970d;
    }
}
