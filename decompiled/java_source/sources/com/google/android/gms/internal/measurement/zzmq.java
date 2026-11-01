package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzmq extends zzmr {
    zzmq() {
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    final int zza(int i11, byte[] bArr, int i12, int i13) {
        while (i12 < i13 && bArr[i12] >= 0) {
            i12++;
        }
        if (i12 >= i13) {
            return 0;
        }
        while (i12 < i13) {
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            if (b11 < 0) {
                if (b11 < -32) {
                    if (i14 >= i13) {
                        return b11;
                    }
                    if (b11 >= -62) {
                        i12 += 2;
                        if (bArr[i14] > -65) {
                        }
                    }
                    return -1;
                }
                if (b11 >= -16) {
                    if (i14 >= i13 - 2) {
                        return zzmp.zza(bArr, i14, i13);
                    }
                    int i15 = i12 + 2;
                    byte b12 = bArr[i14];
                    if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                        int i16 = i12 + 3;
                        if (bArr[i15] <= -65) {
                            i12 += 4;
                            if (bArr[i16] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i14 >= i13 - 1) {
                    return zzmp.zza(bArr, i14, i13);
                }
                int i17 = i12 + 2;
                byte b13 = bArr[i14];
                if (b13 <= -65 && ((b11 != -32 || b13 >= -96) && (b11 != -19 || b13 < -96))) {
                    i12 += 3;
                    if (bArr[i17] > -65) {
                    }
                }
                return -1;
            }
            i12 = i14;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    final int zza(String str, byte[] bArr, int i11, int i12) {
        int i13;
        int i14;
        char cCharAt;
        int length = str.length();
        int i15 = i12 + i11;
        int i16 = 0;
        while (i16 < length && (i14 = i16 + i11) < i15 && (cCharAt = str.charAt(i16)) < 128) {
            bArr[i14] = (byte) cCharAt;
            i16++;
        }
        if (i16 == length) {
            return i11 + length;
        }
        int i17 = i11 + i16;
        while (i16 < length) {
            char cCharAt2 = str.charAt(i16);
            if (cCharAt2 < 128 && i17 < i15) {
                bArr[i17] = (byte) cCharAt2;
                i17++;
            } else if (cCharAt2 < 2048 && i17 <= i15 - 2) {
                int i18 = i17 + 1;
                bArr[i17] = (byte) ((cCharAt2 >>> 6) | 960);
                i17 += 2;
                bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i17 > i15 - 3) {
                    if (i17 > i15 - 4) {
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i13 = i16 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i13)))) {
                            throw new zzmt(i16, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i17);
                    }
                    int i19 = i16 + 1;
                    if (i19 != str.length()) {
                        char cCharAt3 = str.charAt(i19);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i17] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i17 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i20 = i17 + 3;
                            bArr[i17 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i17 += 4;
                            bArr[i20] = (byte) ((codePoint & 63) | 128);
                            i16 = i19;
                        } else {
                            i16 = i19;
                        }
                    }
                    throw new zzmt(i16 - 1, length);
                }
                bArr[i17] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i21 = i17 + 2;
                bArr[i17 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i17 += 3;
                bArr[i21] = (byte) ((cCharAt2 & '?') | 128);
            }
            i16++;
        }
        return i17;
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    final String zza(byte[] bArr, int i11, int i12) throws zzkb {
        if ((i11 | i12 | ((bArr.length - i11) - i12)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        int i13 = i11 + i12;
        char[] cArr = new char[i12];
        int i14 = 0;
        while (i11 < i13) {
            byte b11 = bArr[i11];
            if (b11 < 0) {
                break;
            }
            i11++;
            zzmo.zza(b11, cArr, i14);
            i14++;
        }
        int i15 = i14;
        while (i11 < i13) {
            int i16 = i11 + 1;
            byte b12 = bArr[i11];
            if (b12 >= 0) {
                int i17 = i15 + 1;
                zzmo.zza(b12, cArr, i15);
                while (i16 < i13) {
                    byte b13 = bArr[i16];
                    if (b13 < 0) {
                        break;
                    }
                    i16++;
                    zzmo.zza(b13, cArr, i17);
                    i17++;
                }
                i15 = i17;
                i11 = i16;
            } else if (b12 < -32) {
                if (i16 >= i13) {
                    throw zzkb.zzd();
                }
                i11 += 2;
                zzmo.zza(b12, bArr[i16], cArr, i15);
                i15++;
            } else if (b12 < -16) {
                if (i16 >= i13 - 1) {
                    throw zzkb.zzd();
                }
                int i18 = i11 + 2;
                i11 += 3;
                zzmo.zza(b12, bArr[i16], bArr[i18], cArr, i15);
                i15++;
            } else {
                if (i16 >= i13 - 2) {
                    throw zzkb.zzd();
                }
                byte b14 = bArr[i16];
                int i19 = i11 + 3;
                byte b15 = bArr[i11 + 2];
                i11 += 4;
                zzmo.zza(b12, b14, b15, bArr[i19], cArr, i15);
                i15 += 2;
            }
        }
        return new String(cArr, 0, i15);
    }
}
