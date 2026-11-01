package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public enum TEQ {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);

    private final int EjP;

    TEQ(int i11) {
        this.EjP = i11;
    }

    public static TEQ Sj(int i11) {
        if (i11 == 0) {
            return UNDEFINED;
        }
        if (i11 == 1) {
            return EXACTLY;
        }
        if (i11 == 2) {
            return AT_MOST;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }
}
