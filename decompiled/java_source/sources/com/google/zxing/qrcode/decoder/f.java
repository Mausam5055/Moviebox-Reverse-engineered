package com.google.zxing.qrcode.decoder;

import com.google.zxing.k;

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f32993a;

    f(boolean z10) {
        this.f32993a = z10;
    }

    public void a(k[] kVarArr) {
        if (!this.f32993a || kVarArr == null || kVarArr.length < 3) {
            return;
        }
        k kVar = kVarArr[0];
        kVarArr[0] = kVarArr[2];
        kVarArr[2] = kVar;
    }
}
