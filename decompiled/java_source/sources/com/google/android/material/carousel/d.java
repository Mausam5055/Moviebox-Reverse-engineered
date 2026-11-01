package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f28613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f28614b;

    static int[] a(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr2[i11] = iArr[i11] * 2;
        }
        return iArr2;
    }

    static float b(float f11, float f12, float f13) {
        return 1.0f - ((f11 - f13) / (f12 - f13));
    }

    public float c() {
        return this.f28614b;
    }

    public float d() {
        return this.f28613a;
    }

    void e(Context context) {
        float fH = this.f28613a;
        if (fH <= 0.0f) {
            fH = e.h(context);
        }
        this.f28613a = fH;
        float fG = this.f28614b;
        if (fG <= 0.0f) {
            fG = e.g(context);
        }
        this.f28614b = fG;
    }

    boolean f() {
        return true;
    }

    abstract f g(b bVar, View view);

    boolean h(b bVar, int i11) {
        return false;
    }
}
