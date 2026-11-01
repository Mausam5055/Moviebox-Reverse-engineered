package com.google.android.gms.internal.measurement;

import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
final class zzmo {
    static /* synthetic */ void zza(byte b11, byte b12, byte b13, byte b14, char[] cArr, int i11) throws zzkb {
        if (zza(b12) || (((b11 << 28) + (b12 + 112)) >> 30) != 0 || zza(b13) || zza(b14)) {
            throw zzkb.zzd();
        }
        int i12 = ((b11 & 7) << 18) | ((b12 & Utf8.REPLACEMENT_BYTE) << 12) | ((b13 & Utf8.REPLACEMENT_BYTE) << 6) | (b14 & Utf8.REPLACEMENT_BYTE);
        cArr[i11] = (char) ((i12 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i11 + 1] = (char) ((i12 & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    static /* synthetic */ void zza(byte b11, byte b12, byte b13, char[] cArr, int i11) throws zzkb {
        if (zza(b12) || ((b11 == -32 && b12 < -96) || ((b11 == -19 && b12 >= -96) || zza(b13)))) {
            throw zzkb.zzd();
        }
        cArr[i11] = (char) (((b11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
    }

    static /* synthetic */ void zza(byte b11, byte b12, char[] cArr, int i11) throws zzkb {
        if (b11 < -62 || zza(b12)) {
            throw zzkb.zzd();
        }
        cArr[i11] = (char) (((b11 & 31) << 6) | (b12 & Utf8.REPLACEMENT_BYTE));
    }

    static /* synthetic */ void zza(byte b11, char[] cArr, int i11) {
        cArr[i11] = (char) b11;
    }

    private static boolean zza(byte b11) {
        return b11 > -65;
    }
}
