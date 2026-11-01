package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public enum uvD {
    NO_WRAP(0, "nowrap"),
    WRAP(1, "wrap"),
    WRAP_REVERSE(2, "wrap_reverse");

    private final int EjP;
    private final String HiB;

    uvD(int i11, String str) {
        this.EjP = i11;
        this.HiB = str;
    }

    public static uvD Sj(int i11) {
        if (i11 == 0) {
            return NO_WRAP;
        }
        if (i11 == 1) {
            return WRAP;
        }
        if (i11 == 2) {
            return WRAP_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }

    public static uvD Sj(String str) {
        str.hashCode();
        switch (str) {
            case "nowrap":
                return NO_WRAP;
            case "wrap":
                return WRAP;
            case "wrap_reverse":
                return WRAP_REVERSE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }

    public int Sj() {
        return this.EjP;
    }
}
