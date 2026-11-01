package com.bytedance.sdk.openadsdk.core.Dq.Sj;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    public static float Sj(Context context) {
        return FPG.TKC(context, FPG.Ym(context));
    }

    @NonNull
    public static Pair<Float, Float> Sj(Window window, int i11) {
        View decorView = window.getDecorView();
        float[] fArrSj = {decorView.getWidth() - (decorView.getPaddingLeft() * 2), decorView.getHeight() - (decorView.getPaddingTop() * 2)};
        fArrSj[0] = FPG.TKC(window.getContext(), fArrSj[0]);
        float fTKC = FPG.TKC(window.getContext(), fArrSj[1]);
        fArrSj[1] = fTKC;
        if (fArrSj[0] < 10.0f || fTKC < 10.0f) {
            fArrSj = Sj(window.getContext(), FPG.TKC(window.getContext(), FPG.Sj()), i11);
        }
        float fMax = Math.max(fArrSj[0], fArrSj[1]);
        float fMin = Math.min(fArrSj[0], fArrSj[1]);
        if (i11 == 1) {
            fArrSj[0] = fMin;
            fArrSj[1] = fMax;
        } else {
            fArrSj[0] = fMax;
            fArrSj[1] = fMin;
        }
        return new Pair<>(Float.valueOf(fArrSj[0]), Float.valueOf(fArrSj[1]));
    }

    private static float[] Sj(Context context, int i11, int i12) {
        float fSj = Sj(context);
        float fSP = sP(context);
        if ((i12 == 1) != (fSj > fSP)) {
            float f11 = fSj + fSP;
            fSP = f11 - fSP;
            fSj = f11 - fSP;
        }
        if (i12 == 1) {
            fSj -= i11;
        } else {
            fSP -= i11;
        }
        return new float[]{fSP, fSj};
    }

    public static float sP(Context context) {
        return FPG.TKC(context, FPG.aa(context));
    }
}
