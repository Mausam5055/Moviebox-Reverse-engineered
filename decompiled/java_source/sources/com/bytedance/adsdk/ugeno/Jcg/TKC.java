package com.bytedance.adsdk.ugeno.Jcg;

/* JADX INFO: loaded from: classes2.dex */
public final class TKC {
    public static double Sj(String str, double d11) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d11;
        }
    }

    public static float Sj(String str, float f11) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f11;
        }
    }

    public static int Sj(String str, int i11) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i11;
        }
    }

    public static long Sj(String str, long j11) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j11;
        }
    }

    public static boolean Sj(String str, boolean z10) {
        try {
            return Boolean.parseBoolean(str);
        } catch (NumberFormatException unused) {
            return z10;
        }
    }
}
