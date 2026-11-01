package com.google.android.material.carousel;

import android.content.Context;
import com.google.android.material.R$dimen;

/* JADX INFO: loaded from: classes4.dex */
abstract class e {
    static float a(float f11, float f12, int i11) {
        return f11 + (Math.max(0, i11 - 1) * f12);
    }

    static float b(float f11, float f12, int i11) {
        return i11 > 0 ? f11 + (f12 / 2.0f) : f11;
    }

    static f c(Context context, float f11, float f12, a aVar) {
        float f13;
        float fMin = Math.min(f(context) + f11, aVar.f28607f);
        float f14 = fMin / 2.0f;
        float f15 = 0.0f - f14;
        float fB = b(0.0f, aVar.f28603b, aVar.f28604c);
        float fJ = j(0.0f, a(fB, aVar.f28603b, (int) Math.floor(aVar.f28604c / 2.0f)), aVar.f28603b, aVar.f28604c);
        float fB2 = b(fJ, aVar.f28606e, aVar.f28605d);
        float fJ2 = j(fJ, a(fB2, aVar.f28606e, (int) Math.floor(aVar.f28605d / 2.0f)), aVar.f28606e, aVar.f28605d);
        float fB3 = b(fJ2, aVar.f28607f, aVar.f28608g);
        float fJ3 = j(fJ2, a(fB3, aVar.f28607f, aVar.f28608g), aVar.f28607f, aVar.f28608g);
        float fB4 = b(fJ3, aVar.f28606e, aVar.f28605d);
        float fB5 = b(j(fJ3, a(fB4, aVar.f28606e, (int) Math.ceil(aVar.f28605d / 2.0f)), aVar.f28606e, aVar.f28605d), aVar.f28603b, aVar.f28604c);
        float f16 = f14 + f12;
        float fB6 = d.b(fMin, aVar.f28607f, f11);
        float fB7 = d.b(aVar.f28603b, aVar.f28607f, f11);
        float fB8 = d.b(aVar.f28606e, aVar.f28607f, f11);
        f.b bVarA = new f.b(aVar.f28607f, f12).a(f15, fB6, fMin);
        int i11 = aVar.f28604c;
        if (i11 > 0) {
            bVarA.g(fB, fB7, aVar.f28603b, (int) Math.floor(i11 / 2.0f));
        }
        int i12 = aVar.f28605d;
        if (i12 > 0) {
            bVarA.g(fB2, fB8, aVar.f28606e, (int) Math.floor(i12 / 2.0f));
        }
        bVarA.h(fB3, 0.0f, aVar.f28607f, aVar.f28608g, true);
        int i13 = aVar.f28605d;
        if (i13 > 0) {
            f13 = 2.0f;
            bVarA.g(fB4, fB8, aVar.f28606e, (int) Math.ceil(i13 / 2.0f));
        } else {
            f13 = 2.0f;
        }
        int i14 = aVar.f28604c;
        if (i14 > 0) {
            bVarA.g(fB5, fB7, aVar.f28603b, (int) Math.ceil(i14 / f13));
        }
        bVarA.a(f16, fB6, fMin);
        return bVarA.i();
    }

    static f d(Context context, float f11, float f12, a aVar, int i11) {
        return i11 == 1 ? c(context, f11, f12, aVar) : e(context, f11, f12, aVar);
    }

    static f e(Context context, float f11, float f12, a aVar) {
        float fMin = Math.min(f(context) + f11, aVar.f28607f);
        float f13 = fMin / 2.0f;
        float f14 = 0.0f - f13;
        float fB = b(0.0f, aVar.f28607f, aVar.f28608g);
        float fJ = j(0.0f, a(fB, aVar.f28607f, aVar.f28608g), aVar.f28607f, aVar.f28608g);
        float fB2 = b(fJ, aVar.f28606e, aVar.f28605d);
        float fB3 = b(j(fJ, fB2, aVar.f28606e, aVar.f28605d), aVar.f28603b, aVar.f28604c);
        float f15 = f13 + f12;
        float fB4 = d.b(fMin, aVar.f28607f, f11);
        float fB5 = d.b(aVar.f28603b, aVar.f28607f, f11);
        float fB6 = d.b(aVar.f28606e, aVar.f28607f, f11);
        f.b bVarH = new f.b(aVar.f28607f, f12).a(f14, fB4, fMin).h(fB, 0.0f, aVar.f28607f, aVar.f28608g, true);
        if (aVar.f28605d > 0) {
            bVarH.b(fB2, fB6, aVar.f28606e);
        }
        int i11 = aVar.f28604c;
        if (i11 > 0) {
            bVarH.g(fB3, fB5, aVar.f28603b, i11);
        }
        bVarH.a(f15, fB4, fMin);
        return bVarH.i();
    }

    static float f(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_gone_size);
    }

    static float g(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_small_item_size_max);
    }

    static float h(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_small_item_size_min);
    }

    static int i(int[] iArr) {
        int i11 = Integer.MIN_VALUE;
        for (int i12 : iArr) {
            if (i12 > i11) {
                i11 = i12;
            }
        }
        return i11;
    }

    static float j(float f11, float f12, float f13, int i11) {
        return i11 > 0 ? f12 + (f13 / 2.0f) : f11;
    }
}
