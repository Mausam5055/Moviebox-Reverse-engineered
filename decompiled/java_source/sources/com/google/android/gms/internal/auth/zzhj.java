package com.google.android.gms.internal.auth;

import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
final class zzhj {
    static /* bridge */ /* synthetic */ void zza(byte b11, byte b12, byte b13, byte b14, char[] cArr, int i11) throws zzfa {
        if (zze(b12) || (((b11 << 28) + (b12 + 112)) >> 30) != 0 || zze(b13) || zze(b14)) {
            throw zzfa.zzb();
        }
        int i12 = ((b11 & 7) << 18) | ((b12 & Utf8.REPLACEMENT_BYTE) << 12) | ((b13 & Utf8.REPLACEMENT_BYTE) << 6) | (b14 & Utf8.REPLACEMENT_BYTE);
        cArr[i11] = (char) ((i12 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i11 + 1] = (char) ((i12 & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0015  */
    /* JADX WARN: Code duplicated, block: B:12:0x0016 A[PHI: r2
  0x0016: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0011, B:11:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001c  */
    static /* bridge */ /* synthetic */ void zzb(byte b11, byte b12, byte b13, char[] cArr, int i11) throws zzfa {
        if (!zze(b12)) {
            if (b11 != -32) {
                if (b11 != -19) {
                    if (!zze(b13)) {
                        cArr[i11] = (char) (((b11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                } else if (b12 < -96) {
                    b11 = -19;
                    if (!zze(b13)) {
                        cArr[i11] = (char) (((b11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            } else if (b12 >= -96) {
                b11 = -32;
                if (b11 != -19) {
                    if (!zze(b13)) {
                        cArr[i11] = (char) (((b11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                } else if (b12 < -96) {
                    b11 = -19;
                    if (!zze(b13)) {
                        cArr[i11] = (char) (((b11 & 15) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            }
        }
        throw zzfa.zzb();
    }

    static /* bridge */ /* synthetic */ void zzc(byte b11, byte b12, char[] cArr, int i11) throws zzfa {
        if (b11 < -62 || zze(b12)) {
            throw zzfa.zzb();
        }
        cArr[i11] = (char) (((b11 & 31) << 6) | (b12 & Utf8.REPLACEMENT_BYTE));
    }

    static /* bridge */ /* synthetic */ boolean zzd(byte b11) {
        return b11 >= 0;
    }

    private static boolean zze(byte b11) {
        return b11 > -65;
    }
}
