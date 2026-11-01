package com.google.api;

/* JADX INFO: loaded from: classes4.dex */
public enum HttpRule$PatternCase {
    GET(2),
    PUT(3),
    POST(4),
    DELETE(5),
    PATCH(6),
    CUSTOM(8),
    PATTERN_NOT_SET(0);

    private final int value;

    HttpRule$PatternCase(int i11) {
        this.value = i11;
    }

    public static HttpRule$PatternCase forNumber(int i11) {
        if (i11 == 0) {
            return PATTERN_NOT_SET;
        }
        if (i11 == 8) {
            return CUSTOM;
        }
        if (i11 == 2) {
            return GET;
        }
        if (i11 == 3) {
            return PUT;
        }
        if (i11 == 4) {
            return POST;
        }
        if (i11 == 5) {
            return DELETE;
        }
        if (i11 != 6) {
            return null;
        }
        return PATCH;
    }

    @Deprecated
    public static HttpRule$PatternCase valueOf(int i11) {
        return forNumber(i11);
    }

    public int getNumber() {
        return this.value;
    }
}
