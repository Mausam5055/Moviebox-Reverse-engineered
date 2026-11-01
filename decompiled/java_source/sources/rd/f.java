package rd;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f {
    private static int a(int i11, int i12) {
        int i13 = i11 - i12;
        if (i13 <= i12) {
            i13 = i12;
            i12 = i13;
        }
        int i14 = 1;
        int i15 = 1;
        while (i11 > i13) {
            i14 *= i11;
            if (i15 <= i12) {
                i14 /= i15;
                i15++;
            }
            i11--;
        }
        while (i15 <= i12) {
            i14 /= i15;
            i15++;
        }
        return i14;
    }

    public static int b(int[] iArr, int i11, boolean z10) {
        int[] iArr2 = iArr;
        int i12 = 0;
        for (int i13 : iArr2) {
            i12 += i13;
        }
        int length = iArr2.length;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int i17 = length - 1;
            if (i14 >= i17) {
                return i15;
            }
            int i18 = 1 << i14;
            i16 |= i18;
            int i19 = 1;
            while (i19 < iArr2[i14]) {
                int i20 = i12 - i19;
                int i21 = length - i14;
                int i22 = i21 - 2;
                int iA = a(i20 - 1, i22);
                if (z10 && i16 == 0) {
                    int i23 = i21 - 1;
                    if (i20 - i23 >= i23) {
                        iA -= a(i20 - i21, i22);
                    }
                }
                if (i21 - 1 > 1) {
                    int iA2 = 0;
                    for (int i24 = i20 - i22; i24 > i11; i24--) {
                        iA2 += a((i20 - i24) - 1, i21 - 3);
                    }
                    iA -= iA2 * (i17 - i14);
                } else if (i20 > i11) {
                    iA--;
                }
                i15 += iA;
                i19++;
                i16 &= ~i18;
                iArr2 = iArr;
            }
            i12 -= i19;
            i14++;
            iArr2 = iArr;
        }
    }
}
