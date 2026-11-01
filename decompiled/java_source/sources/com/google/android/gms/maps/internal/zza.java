package com.google.android.gms.maps.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zza {
    public static byte zza(Boolean bool) {
        if (bool != null) {
            return bool.booleanValue() ? (byte) 1 : (byte) 0;
        }
        return (byte) -1;
    }

    public static Boolean zza(byte b11) {
        if (b11 == 0) {
            return Boolean.FALSE;
        }
        if (b11 != 1) {
            return null;
        }
        return Boolean.TRUE;
    }
}
