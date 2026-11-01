package org.brotli.dec;

/* JADX INFO: loaded from: classes7.dex */
abstract class f {
    static void a(int[] iArr, int i11, int i12, int[] iArr2, int i13) {
        int[] iArr3 = new int[i13];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        int i14 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            int i16 = iArr2[i15];
            iArr4[i16] = iArr4[i16] + 1;
        }
        iArr5[1] = 0;
        int i17 = 1;
        while (i17 < 15) {
            int i18 = i17 + 1;
            iArr5[i18] = iArr5[i17] + iArr4[i17];
            i17 = i18;
        }
        for (int i19 = 0; i19 < i13; i19++) {
            int i20 = iArr2[i19];
            if (i20 != 0) {
                int i21 = iArr5[i20];
                iArr5[i20] = i21 + 1;
                iArr3[i21] = i19;
            }
        }
        int i22 = 1 << i12;
        if (iArr5[15] == 1) {
            for (int i23 = 0; i23 < i22; i23++) {
                iArr[i11 + i23] = iArr3[0];
            }
            return;
        }
        int i24 = 2;
        int i25 = 2;
        int iB = 0;
        int i26 = 1;
        while (i26 <= i12) {
            while (iArr4[i26] > 0) {
                d(iArr, i11 + iB, i25, i22, iArr3[i14] | (i26 << 16));
                iB = b(iB, i26);
                iArr4[i26] = iArr4[i26] - 1;
                i14++;
            }
            i26++;
            i25 <<= 1;
        }
        int i27 = i22 - 1;
        int i28 = i12 + 1;
        int i29 = -1;
        int i30 = i11;
        while (i28 <= 15) {
            while (iArr4[i28] > 0) {
                int i31 = iB & i27;
                if (i31 != i29) {
                    i30 += i22;
                    int iC = c(iArr4, i28, i12);
                    iArr[i11 + i31] = ((iC + i12) << 16) | ((i30 - i11) - i31);
                    i22 = 1 << iC;
                    i29 = i31;
                }
                d(iArr, (iB >> i12) + i30, i24, i22, ((i28 - i12) << 16) | iArr3[i14]);
                iB = b(iB, i28);
                iArr4[i28] = iArr4[i28] - 1;
                i14++;
            }
            i28++;
            i24 <<= 1;
        }
    }

    private static int b(int i11, int i12) {
        int i13 = 1 << (i12 - 1);
        while ((i11 & i13) != 0) {
            i13 >>= 1;
        }
        return (i11 & (i13 - 1)) + i13;
    }

    private static int c(int[] iArr, int i11, int i12) {
        int i13;
        int i14 = 1 << (i11 - i12);
        while (i11 < 15 && (i13 = i14 - iArr[i11]) > 0) {
            i11++;
            i14 = i13 << 1;
        }
        return i11 - i12;
    }

    private static void d(int[] iArr, int i11, int i12, int i13, int i14) {
        do {
            i13 -= i12;
            iArr[i11 + i13] = i14;
        } while (i13 > 0);
    }
}
