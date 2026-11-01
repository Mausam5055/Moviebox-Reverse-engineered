package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes4.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f32859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final id.b f32860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f32861c;

    a(id.b bVar) throws FormatException {
        int iK = bVar.k();
        if (iK < 8 || iK > 144 || (iK & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        this.f32861c = j(bVar);
        id.b bVarA = a(bVar);
        this.f32859a = bVarA;
        this.f32860b = new id.b(bVarA.n(), bVarA.k());
    }

    private id.b a(id.b bVar) {
        int iF = this.f32861c.f();
        int iE = this.f32861c.e();
        if (bVar.k() != iF) {
            throw new IllegalArgumentException("Dimension of bitMatrix must match the version size");
        }
        int iC = this.f32861c.c();
        int iB = this.f32861c.b();
        int i11 = iF / iC;
        int i12 = iE / iB;
        id.b bVar2 = new id.b(i12 * iB, i11 * iC);
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i13 * iC;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = i15 * iB;
                for (int i17 = 0; i17 < iC; i17++) {
                    int i18 = ((iC + 2) * i13) + 1 + i17;
                    int i19 = i14 + i17;
                    for (int i20 = 0; i20 < iB; i20++) {
                        if (bVar.g(((iB + 2) * i15) + 1 + i20, i18)) {
                            bVar2.r(i16 + i20, i19);
                        }
                    }
                }
            }
        }
        return bVar2;
    }

    private int d(int i11, int i12) {
        int i13 = i11 - 1;
        int i14 = (h(i13, 0, i11, i12) ? 1 : 0) << 1;
        if (h(i13, 1, i11, i12)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        if (h(i13, 2, i11, i12)) {
            i15 |= 1;
        }
        int i16 = i15 << 1;
        if (h(0, i12 - 2, i11, i12)) {
            i16 |= 1;
        }
        int i17 = i16 << 1;
        int i18 = i12 - 1;
        if (h(0, i18, i11, i12)) {
            i17 |= 1;
        }
        int i19 = i17 << 1;
        if (h(1, i18, i11, i12)) {
            i19 |= 1;
        }
        int i20 = i19 << 1;
        if (h(2, i18, i11, i12)) {
            i20 |= 1;
        }
        int i21 = i20 << 1;
        return h(3, i18, i11, i12) ? i21 | 1 : i21;
    }

    private int e(int i11, int i12) {
        int i13 = (h(i11 + (-3), 0, i11, i12) ? 1 : 0) << 1;
        if (h(i11 - 2, 0, i11, i12)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (h(i11 - 1, 0, i11, i12)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        if (h(0, i12 - 4, i11, i12)) {
            i15 |= 1;
        }
        int i16 = i15 << 1;
        if (h(0, i12 - 3, i11, i12)) {
            i16 |= 1;
        }
        int i17 = i16 << 1;
        if (h(0, i12 - 2, i11, i12)) {
            i17 |= 1;
        }
        int i18 = i17 << 1;
        int i19 = i12 - 1;
        if (h(0, i19, i11, i12)) {
            i18 |= 1;
        }
        int i20 = i18 << 1;
        return h(1, i19, i11, i12) ? i20 | 1 : i20;
    }

    private int f(int i11, int i12) {
        int i13 = i11 - 1;
        int i14 = (h(i13, 0, i11, i12) ? 1 : 0) << 1;
        int i15 = i12 - 1;
        if (h(i13, i15, i11, i12)) {
            i14 |= 1;
        }
        int i16 = i14 << 1;
        int i17 = i12 - 3;
        if (h(0, i17, i11, i12)) {
            i16 |= 1;
        }
        int i18 = i16 << 1;
        int i19 = i12 - 2;
        if (h(0, i19, i11, i12)) {
            i18 |= 1;
        }
        int i20 = i18 << 1;
        if (h(0, i15, i11, i12)) {
            i20 |= 1;
        }
        int i21 = i20 << 1;
        if (h(1, i17, i11, i12)) {
            i21 |= 1;
        }
        int i22 = i21 << 1;
        if (h(1, i19, i11, i12)) {
            i22 |= 1;
        }
        int i23 = i22 << 1;
        return h(1, i15, i11, i12) ? i23 | 1 : i23;
    }

    private int g(int i11, int i12) {
        int i13 = (h(i11 + (-3), 0, i11, i12) ? 1 : 0) << 1;
        if (h(i11 - 2, 0, i11, i12)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (h(i11 - 1, 0, i11, i12)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        if (h(0, i12 - 2, i11, i12)) {
            i15 |= 1;
        }
        int i16 = i15 << 1;
        int i17 = i12 - 1;
        if (h(0, i17, i11, i12)) {
            i16 |= 1;
        }
        int i18 = i16 << 1;
        if (h(1, i17, i11, i12)) {
            i18 |= 1;
        }
        int i19 = i18 << 1;
        if (h(2, i17, i11, i12)) {
            i19 |= 1;
        }
        int i20 = i19 << 1;
        return h(3, i17, i11, i12) ? i20 | 1 : i20;
    }

    private boolean h(int i11, int i12, int i13, int i14) {
        if (i11 < 0) {
            i11 += i13;
            i12 += 4 - ((i13 + 4) & 7);
        }
        if (i12 < 0) {
            i12 += i14;
            i11 += 4 - ((i14 + 4) & 7);
        }
        if (i11 >= i13) {
            i11 -= i13;
        }
        this.f32860b.r(i12, i11);
        return this.f32859a.g(i12, i11);
    }

    private int i(int i11, int i12, int i13, int i14) {
        int i15 = i11 - 2;
        int i16 = i12 - 2;
        int i17 = (h(i15, i16, i13, i14) ? 1 : 0) << 1;
        int i18 = i12 - 1;
        if (h(i15, i18, i13, i14)) {
            i17 |= 1;
        }
        int i19 = i17 << 1;
        int i20 = i11 - 1;
        if (h(i20, i16, i13, i14)) {
            i19 |= 1;
        }
        int i21 = i19 << 1;
        if (h(i20, i18, i13, i14)) {
            i21 |= 1;
        }
        int i22 = i21 << 1;
        if (h(i20, i12, i13, i14)) {
            i22 |= 1;
        }
        int i23 = i22 << 1;
        if (h(i11, i16, i13, i14)) {
            i23 |= 1;
        }
        int i24 = i23 << 1;
        if (h(i11, i18, i13, i14)) {
            i24 |= 1;
        }
        int i25 = i24 << 1;
        return h(i11, i12, i13, i14) ? i25 | 1 : i25;
    }

    private static d j(id.b bVar) {
        return d.h(bVar.k(), bVar.n());
    }

    d b() {
        return this.f32861c;
    }

    byte[] c() throws FormatException {
        byte[] bArr = new byte[this.f32861c.g()];
        int iK = this.f32859a.k();
        int iN = this.f32859a.n();
        int i11 = 0;
        boolean z10 = false;
        int i12 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        int i13 = 4;
        while (true) {
            if (i13 == iK && i11 == 0 && !z10) {
                bArr[i12] = (byte) d(iK, iN);
                i13 -= 2;
                i11 += 2;
                i12++;
                z10 = true;
            } else {
                int i14 = iK - 2;
                if (i13 == i14 && i11 == 0 && (iN & 3) != 0 && !z11) {
                    bArr[i12] = (byte) e(iK, iN);
                    i13 -= 2;
                    i11 += 2;
                    i12++;
                    z11 = true;
                } else if (i13 == iK + 4 && i11 == 2 && (iN & 7) == 0 && !z12) {
                    bArr[i12] = (byte) f(iK, iN);
                    i13 -= 2;
                    i11 += 2;
                    i12++;
                    z12 = true;
                } else if (i13 == i14 && i11 == 0 && (iN & 7) == 4 && !z13) {
                    bArr[i12] = (byte) g(iK, iN);
                    i13 -= 2;
                    i11 += 2;
                    i12++;
                    z13 = true;
                } else {
                    while (true) {
                        if (i13 < iK && i11 >= 0 && !this.f32860b.g(i11, i13)) {
                            bArr[i12] = (byte) i(i13, i11, iK, iN);
                            i12++;
                        }
                        int i15 = i13 - 2;
                        int i16 = i11 + 2;
                        if (i15 < 0 || i16 >= iN) {
                            break;
                        }
                        i13 = i15;
                        i11 = i16;
                    }
                    int i17 = i13 - 1;
                    int i18 = i11 + 5;
                    while (true) {
                        if (i17 >= 0 && i18 < iN && !this.f32860b.g(i18, i17)) {
                            bArr[i12] = (byte) i(i17, i18, iK, iN);
                            i12++;
                        }
                        int i19 = i17 + 2;
                        int i20 = i18 - 2;
                        if (i19 >= iK || i20 < 0) {
                            break;
                        }
                        i17 = i19;
                        i18 = i20;
                    }
                    i13 = i17 + 5;
                    i11 = i18 - 1;
                }
            }
            if (i13 >= iK && i11 >= iN) {
                break;
            }
        }
        if (i12 == this.f32861c.g()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }
}
