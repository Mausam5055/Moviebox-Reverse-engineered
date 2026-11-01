package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public enum Zq {
    STATIC(0, "static"),
    RELATIVE(1, "relative"),
    ABSOLUTE(2, "absolute");

    private final int EjP;
    private final String HiB;

    Zq(int i11, String str) {
        this.EjP = i11;
        this.HiB = str;
    }

    public static Zq Sj(int i11) {
        if (i11 == 0) {
            return STATIC;
        }
        if (i11 == 1) {
            return RELATIVE;
        }
        if (i11 == 2) {
            return ABSOLUTE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }

    public static Zq Sj(String str) {
        str.hashCode();
        switch (str) {
            case "static":
                return STATIC;
            case "relative":
                return RELATIVE;
            case "absolute":
                return ABSOLUTE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }

    public int Sj() {
        return this.EjP;
    }
}
