package com.google.zxing.qrcode.detector;

import com.google.zxing.k;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f33022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f33023d;

    d(float f11, float f12, float f13) {
        this(f11, f12, f13, 1);
    }

    private d(float f11, float f12, float f13, int i11) {
        super(f11, f12);
        this.f33022c = f13;
        this.f33023d = i11;
    }

    boolean f(float f11, float f12, float f13) {
        if (Math.abs(f12 - d()) > f11 || Math.abs(f13 - c()) > f11) {
            return false;
        }
        float fAbs = Math.abs(f11 - this.f33022c);
        return fAbs <= 1.0f || fAbs <= this.f33022c;
    }

    d g(float f11, float f12, float f13) {
        int i11 = this.f33023d;
        int i12 = i11 + 1;
        float fC = (i11 * c()) + f12;
        float f14 = i12;
        return new d(fC / f14, ((this.f33023d * d()) + f11) / f14, ((this.f33023d * this.f33022c) + f13) / f14, i12);
    }

    public int h() {
        return this.f33023d;
    }

    public float i() {
        return this.f33022c;
    }
}
