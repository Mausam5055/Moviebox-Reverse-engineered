package com.google.android.libraries.places.internal;

import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
final class zzbty {
    private static final String[] zza = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] zzb = new String[64];
    private static final String[] zzc = new String[256];

    static {
        for (int i11 = 0; i11 < 256; i11++) {
            zzc[i11] = String.format("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
        }
        String[] strArr = zzb;
        strArr[0] = "";
        strArr[1] = "END_STREAM";
        int[] iArr = {1};
        strArr[8] = "PADDED";
        for (int i12 = 0; i12 <= 0; i12++) {
            int i13 = iArr[i12];
            String[] strArr2 = zzb;
            strArr2[i13 | 8] = String.valueOf(strArr2[i13]).concat("|PADDED");
        }
        String[] strArr3 = zzb;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i14 = 0; i14 < 3; i14++) {
            int i15 = iArr2[i14];
            for (int i16 = 0; i16 <= 0; i16++) {
                int i17 = iArr[i16];
                int i18 = i17 | i15;
                String[] strArr4 = zzb;
                strArr4[i18] = strArr4[i17] + "|" + strArr4[i15];
                strArr4[i18 | 8] = strArr4[i17] + "|" + strArr4[i15] + "|PADDED";
            }
        }
        for (int i19 = 0; i19 < 64; i19++) {
            String[] strArr5 = zzb;
            if (strArr5[i19] == null) {
                strArr5[i19] = zzc[i19];
            }
        }
    }

    zzbty() {
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    static String zza(boolean z10, int i11, int i12, byte b11, byte b12) {
        String strReplace;
        String str = b11 < 10 ? zza[b11] : String.format("0x%02x", Byte.valueOf(b11));
        if (b12 == 0) {
            strReplace = "";
        } else if (b11 == 2 || b11 == 3) {
            strReplace = zzc[b12];
        } else if (b11 == 4 || b11 == 6) {
            strReplace = b12 == 1 ? "ACK" : zzc[b12];
        } else if (b11 == 7 || b11 == 8) {
            strReplace = zzc[b12];
        } else {
            String str2 = b12 < 64 ? zzb[b12] : zzc[b12];
            if (b11 == 5) {
                if ((b12 & 4) != 0) {
                    strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                } else {
                    strReplace = str2;
                }
            } else if (b11 != 0 || (b12 & 32) == 0) {
                strReplace = str2;
            } else {
                strReplace = str2.replace("PRIORITY", "COMPRESSED");
            }
        }
        return String.format(Locale.US, "%s 0x%08x %5d %-13s %s", true != z10 ? ">>" : "<<", Integer.valueOf(i11), Integer.valueOf(i12), str, strReplace);
    }
}
