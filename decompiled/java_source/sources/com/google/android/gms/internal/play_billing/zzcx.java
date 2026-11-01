package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
enum zzcx {
    BOOLEAN,
    STRING,
    LONG,
    DOUBLE;

    static /* bridge */ /* synthetic */ zzcx zza(Object obj) {
        if (obj instanceof String) {
            return STRING;
        }
        if (obj instanceof Boolean) {
            return BOOLEAN;
        }
        if (obj instanceof Long) {
            return LONG;
        }
        if (obj instanceof Double) {
            return DOUBLE;
        }
        throw new AssertionError("invalid tag type: ".concat(String.valueOf(obj.getClass())));
    }
}
