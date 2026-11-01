package com.google.android.gms.internal.measurement;

import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes4.dex */
final class zzmp {
    private static final zzmr zza;

    static {
        if (zzml.zzc()) {
            zzml.zzd();
        }
        zza = new zzmq();
    }

    static int zza(String str) {
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (i12 < length && str.charAt(i12) < 128) {
            i12++;
        }
        int i13 = length;
        while (i12 < length) {
            char cCharAt = str.charAt(i12);
            if (cCharAt >= 2048) {
                int length2 = str.length();
                while (i12 < length2) {
                    char cCharAt2 = str.charAt(i12);
                    if (cCharAt2 < 2048) {
                        i11 += (127 - cCharAt2) >>> 31;
                    } else {
                        i11 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i12) < 65536) {
                                throw new zzmt(i12, length2);
                            }
                            i12++;
                        }
                    }
                    i12++;
                }
                i13 += i11;
                break;
            }
            i13 += (127 - cCharAt) >>> 31;
            i12++;
        }
        if (i13 >= length) {
            return i13;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i13) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE));
    }

    static int zza(String str, byte[] bArr, int i11, int i12) {
        return zza.zza(str, bArr, i11, i12);
    }

    static /* synthetic */ int zza(byte[] bArr, int i11, int i12) {
        byte b11 = bArr[i11 - 1];
        int i13 = i12 - i11;
        if (i13 == 0) {
            if (b11 > -12) {
                return -1;
            }
            return b11;
        }
        if (i13 == 1) {
            byte b12 = bArr[i11];
            if (b11 > -12 || b12 > -65) {
                return -1;
            }
            return (b12 << 8) ^ b11;
        }
        if (i13 != 2) {
            throw new AssertionError();
        }
        byte b13 = bArr[i11];
        byte b14 = bArr[i11 + 1];
        if (b11 > -12 || b13 > -65 || b14 > -65) {
            return -1;
        }
        return (b14 << 16) ^ ((b13 << 8) ^ b11);
    }

    static String zzb(byte[] bArr, int i11, int i12) throws zzkb {
        return zza.zza(bArr, i11, i12);
    }

    static boolean zzc(byte[] bArr, int i11, int i12) {
        return zza.zza(0, bArr, i11, i12) == 0;
    }
}
