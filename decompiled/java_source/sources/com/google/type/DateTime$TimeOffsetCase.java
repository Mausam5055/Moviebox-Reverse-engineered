package com.google.type;

/* JADX INFO: loaded from: classes4.dex */
public enum DateTime$TimeOffsetCase {
    UTC_OFFSET(8),
    TIME_ZONE(9),
    TIMEOFFSET_NOT_SET(0);

    private final int value;

    DateTime$TimeOffsetCase(int i11) {
        this.value = i11;
    }

    public static DateTime$TimeOffsetCase forNumber(int i11) {
        if (i11 == 0) {
            return TIMEOFFSET_NOT_SET;
        }
        if (i11 == 8) {
            return UTC_OFFSET;
        }
        if (i11 != 9) {
            return null;
        }
        return TIME_ZONE;
    }

    @Deprecated
    public static DateTime$TimeOffsetCase valueOf(int i11) {
        return forNumber(i11);
    }

    public int getNumber() {
        return this.value;
    }
}
