package com.google.api;

/* JADX INFO: loaded from: classes4.dex */
public enum BackendRule$AuthenticationCase {
    JWT_AUDIENCE(7),
    DISABLE_AUTH(8),
    AUTHENTICATION_NOT_SET(0);

    private final int value;

    BackendRule$AuthenticationCase(int i11) {
        this.value = i11;
    }

    public static BackendRule$AuthenticationCase forNumber(int i11) {
        if (i11 == 0) {
            return AUTHENTICATION_NOT_SET;
        }
        if (i11 == 7) {
            return JWT_AUDIENCE;
        }
        if (i11 != 8) {
            return null;
        }
        return DISABLE_AUTH;
    }

    @Deprecated
    public static BackendRule$AuthenticationCase valueOf(int i11) {
        return forNumber(i11);
    }

    public int getNumber() {
        return this.value;
    }
}
