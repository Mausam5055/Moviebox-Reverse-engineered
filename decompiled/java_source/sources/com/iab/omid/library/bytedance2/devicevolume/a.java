package com.iab.omid.library.bytedance2.devicevolume;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public float a(int i11, int i12) {
        if (i12 <= 0 || i11 <= 0) {
            return 0.0f;
        }
        float f11 = i11 / i12;
        if (f11 > 1.0f) {
            return 1.0f;
        }
        return f11;
    }
}
