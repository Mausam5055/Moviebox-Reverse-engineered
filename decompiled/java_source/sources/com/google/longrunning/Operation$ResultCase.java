package com.google.longrunning;

/* JADX INFO: loaded from: classes4.dex */
public enum Operation$ResultCase {
    ERROR(4),
    RESPONSE(5),
    RESULT_NOT_SET(0);

    private final int value;

    Operation$ResultCase(int i11) {
        this.value = i11;
    }

    public static Operation$ResultCase forNumber(int i11) {
        if (i11 == 0) {
            return RESULT_NOT_SET;
        }
        if (i11 == 4) {
            return ERROR;
        }
        if (i11 != 5) {
            return null;
        }
        return RESPONSE;
    }

    @Deprecated
    public static Operation$ResultCase valueOf(int i11) {
        return forNumber(i11);
    }

    public int getNumber() {
        return this.value;
    }
}
