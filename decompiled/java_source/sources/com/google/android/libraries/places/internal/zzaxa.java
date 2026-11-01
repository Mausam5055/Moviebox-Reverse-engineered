package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzaxa extends zzawz {
    zzaxa() {
    }

    @Override // com.google.android.libraries.places.internal.zzawz
    final int zza(int i11, byte[] bArr, int i12, int i13) {
        int i14 = 0;
        while (i14 < i13 && bArr[i14] >= 0) {
            i14++;
        }
        if (i14 >= i13) {
            return 0;
        }
        while (i14 < i13) {
            int i15 = i14 + 1;
            byte b11 = bArr[i14];
            if (b11 < 0) {
                if (b11 < -32) {
                    if (i15 >= i13) {
                        return b11;
                    }
                    if (b11 >= -62) {
                        i14 += 2;
                        if (bArr[i15] > -65) {
                        }
                    }
                    return -1;
                }
                if (b11 >= -16) {
                    if (i15 >= i13 - 2) {
                        return zzaxc.zza(bArr, i15, i13);
                    }
                    int i16 = i14 + 2;
                    byte b12 = bArr[i15];
                    if (b12 <= -65 && (((b11 << 28) + (b12 + 112)) >> 30) == 0) {
                        int i17 = i14 + 3;
                        if (bArr[i16] <= -65) {
                            i14 += 4;
                            if (bArr[i17] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i15 >= i13 - 1) {
                    return zzaxc.zza(bArr, i15, i13);
                }
                int i18 = i14 + 2;
                byte b13 = bArr[i15];
                if (b13 <= -65 && ((b11 != -32 || b13 >= -96) && (b11 != -19 || b13 < -96))) {
                    i14 += 3;
                    if (bArr[i18] > -65) {
                    }
                }
                return -1;
            }
            i14 = i15;
        }
        return 0;
    }
}
