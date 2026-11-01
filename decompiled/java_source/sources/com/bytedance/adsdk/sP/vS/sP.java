package com.bytedance.adsdk.sP.vS;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static float Sj(float f11) {
        return f11 <= 0.0031308f ? f11 * 12.92f : (float) ((Math.pow(f11, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int Sj(float f11, int i11, int i12) {
        if (i11 == i12) {
            return i11;
        }
        float f12 = ((i11 >> 24) & 255) / 255.0f;
        float fSP = sP(((i11 >> 16) & 255) / 255.0f);
        float fSP2 = sP(((i11 >> 8) & 255) / 255.0f);
        float fSP3 = sP((i11 & 255) / 255.0f);
        float fSP4 = sP(((i12 >> 16) & 255) / 255.0f);
        float f13 = f12 + (((((i12 >> 24) & 255) / 255.0f) - f12) * f11);
        float fSP5 = fSP2 + ((sP(((i12 >> 8) & 255) / 255.0f) - fSP2) * f11);
        float fSP6 = fSP3 + (f11 * (sP((i12 & 255) / 255.0f) - fSP3));
        return (Math.round(Sj(fSP + ((fSP4 - fSP) * f11)) * 255.0f) << 16) | (Math.round(f13 * 255.0f) << 24) | (Math.round(Sj(fSP5) * 255.0f) << 8) | Math.round(Sj(fSP6) * 255.0f);
    }

    private static float sP(float f11) {
        return f11 <= 0.04045f ? f11 / 12.92f : (float) Math.pow((f11 + 0.055f) / 1.055f, 2.4000000953674316d);
    }
}
