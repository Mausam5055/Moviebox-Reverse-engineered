package com.google.zxing.qrcode.detector;

import com.google.zxing.k;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f33010c;

    a(float f11, float f12, float f13) {
        super(f11, f12);
        this.f33010c = f13;
    }

    boolean f(float f11, float f12, float f13) {
        if (Math.abs(f12 - d()) > f11 || Math.abs(f13 - c()) > f11) {
            return false;
        }
        float fAbs = Math.abs(f11 - this.f33010c);
        return fAbs <= 1.0f || fAbs <= this.f33010c;
    }

    a g(float f11, float f12, float f13) {
        return new a((c() + f12) / 2.0f, (d() + f11) / 2.0f, (this.f33010c + f13) / 2.0f);
    }
}
