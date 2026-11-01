package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes4.dex */
final class zzhm {
    private static final zzhk zza;

    static {
        if (zzhi.zzu() && zzhi.zzv()) {
            int i11 = zzdr.zza;
        }
        zza = new zzhl();
    }

    static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i11, int i12) {
        byte b11 = bArr[i11 - 1];
        int i13 = i12 - i11;
        if (i13 != 0) {
            if (i13 == 1) {
                byte b12 = bArr[i11];
                if (b11 <= -12 && b12 <= -65) {
                    return b11 ^ (b12 << 8);
                }
            } else {
                if (i13 != 2) {
                    throw new AssertionError();
                }
                byte b13 = bArr[i11];
                byte b14 = bArr[i11 + 1];
                if (b11 <= -12 && b13 <= -65 && b14 <= -65) {
                    return ((b13 << 8) ^ b11) ^ (b14 << 16);
                }
            }
        } else if (b11 <= -12) {
            return b11;
        }
        return -1;
    }

    static String zzb(byte[] bArr, int i11, int i12) throws zzfa {
        int length = bArr.length;
        if ((i11 | i12 | ((length - i11) - i12)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        int i13 = i11 + i12;
        char[] cArr = new char[i12];
        int i14 = 0;
        while (i11 < i13) {
            byte b11 = bArr[i11];
            if (!zzhj.zzd(b11)) {
                break;
            }
            i11++;
            cArr[i14] = (char) b11;
            i14++;
        }
        int i15 = i14;
        while (i11 < i13) {
            int i16 = i11 + 1;
            byte b12 = bArr[i11];
            if (zzhj.zzd(b12)) {
                cArr[i15] = (char) b12;
                i15++;
                i11 = i16;
                while (i11 < i13) {
                    byte b13 = bArr[i11];
                    if (!zzhj.zzd(b13)) {
                        break;
                    }
                    i11++;
                    cArr[i15] = (char) b13;
                    i15++;
                }
            } else if (b12 < -32) {
                if (i16 >= i13) {
                    throw zzfa.zzb();
                }
                i11 += 2;
                zzhj.zzc(b12, bArr[i16], cArr, i15);
                i15++;
            } else if (b12 < -16) {
                if (i16 >= i13 - 1) {
                    throw zzfa.zzb();
                }
                int i17 = i11 + 2;
                i11 += 3;
                zzhj.zzb(b12, bArr[i16], bArr[i17], cArr, i15);
                i15++;
            } else {
                if (i16 >= i13 - 2) {
                    throw zzfa.zzb();
                }
                int i18 = i11 + 2;
                int i19 = i11 + 3;
                i11 += 4;
                zzhj.zza(b12, bArr[i16], bArr[i18], bArr[i19], cArr, i15);
                i15 += 2;
            }
        }
        return new String(cArr, 0, i15);
    }

    static boolean zzc(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }

    static boolean zzd(byte[] bArr, int i11, int i12) {
        return zza.zzb(bArr, i11, i12);
    }
}
