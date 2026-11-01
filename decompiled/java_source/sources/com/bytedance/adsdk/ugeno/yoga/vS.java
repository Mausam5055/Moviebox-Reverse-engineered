package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
public enum vS {
    COLUMN(0, "column"),
    COLUMN_REVERSE(1, "column_reverse"),
    ROW(2, "row"),
    ROW_REVERSE(3, "row_reverse");

    private final int HiB;
    private final String vS;

    vS(int i11, String str) {
        this.HiB = i11;
        this.vS = str;
    }

    public static vS Sj(int i11) {
        if (i11 == 0) {
            return COLUMN;
        }
        if (i11 == 1) {
            return COLUMN_REVERSE;
        }
        if (i11 == 2) {
            return ROW;
        }
        if (i11 == 3) {
            return ROW_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }

    public static vS Sj(String str) {
        str.hashCode();
        switch (str) {
            case "column_reverse":
                return COLUMN_REVERSE;
            case "column":
                return COLUMN;
            case "row_reverse":
                return ROW_REVERSE;
            case "row":
                return ROW;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }

    public int Sj() {
        return this.HiB;
    }
}
