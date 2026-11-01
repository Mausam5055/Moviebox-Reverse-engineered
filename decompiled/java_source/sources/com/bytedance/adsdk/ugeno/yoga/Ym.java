package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public class Ym {
    public static long Sj(float f11, float f12) {
        return ((long) Float.floatToRawIntBits(f12)) | (((long) Float.floatToRawIntBits(f11)) << 32);
    }

    public static long Sj(int i11, int i12) {
        return Sj(i11, i12);
    }
}
