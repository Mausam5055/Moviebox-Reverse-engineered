package com.google.zxing.aztec.encoder;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f32839a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int[] a(id.a aVar, int i11, int i12) {
        int[] iArr = new int[i12];
        int iM = aVar.m() / i11;
        for (int i13 = 0; i13 < iM; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                i14 |= aVar.i((i13 * i11) + i15) ? 1 << ((i11 - i15) - 1) : 0;
            }
            iArr[i13] = i14;
        }
        return iArr;
    }

    private static void b(id.b bVar, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13 += 2) {
            int i14 = i11 - i13;
            int i15 = i14;
            while (true) {
                int i16 = i11 + i13;
                if (i15 <= i16) {
                    bVar.r(i15, i14);
                    bVar.r(i15, i16);
                    bVar.r(i14, i15);
                    bVar.r(i16, i15);
                    i15++;
                }
            }
        }
        int i17 = i11 - i12;
        bVar.r(i17, i17);
        int i18 = i17 + 1;
        bVar.r(i18, i17);
        bVar.r(i17, i18);
        int i19 = i11 + i12;
        bVar.r(i19, i17);
        bVar.r(i19, i18);
        bVar.r(i19, i19 - 1);
    }

    private static void c(id.b bVar, boolean z10, int i11, id.a aVar) {
        int i12 = i11 / 2;
        int i13 = 0;
        if (z10) {
            while (i13 < 7) {
                int i14 = (i12 - 3) + i13;
                if (aVar.i(i13)) {
                    bVar.r(i14, i12 - 5);
                }
                if (aVar.i(i13 + 7)) {
                    bVar.r(i12 + 5, i14);
                }
                if (aVar.i(20 - i13)) {
                    bVar.r(i14, i12 + 5);
                }
                if (aVar.i(27 - i13)) {
                    bVar.r(i12 - 5, i14);
                }
                i13++;
            }
            return;
        }
        while (i13 < 10) {
            int i15 = (i12 - 5) + i13 + (i13 / 5);
            if (aVar.i(i13)) {
                bVar.r(i15, i12 - 7);
            }
            if (aVar.i(i13 + 10)) {
                bVar.r(i12 + 7, i15);
            }
            if (aVar.i(29 - i13)) {
                bVar.r(i15, i12 + 7);
            }
            if (aVar.i(39 - i13)) {
                bVar.r(i12 - 7, i15);
            }
            i13++;
        }
    }

    public static a d(String str, int i11, int i12, Charset charset) {
        return e(str.getBytes(charset != null ? charset : StandardCharsets.ISO_8859_1), i11, i12, charset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a e(byte[] bArr, int i11, int i12, Charset charset) {
        id.a aVarI;
        int i13;
        boolean z10;
        int iAbs;
        int iJ;
        int i14;
        int i15;
        int i16 = 2;
        id.a aVarA = new HighLevelEncoder(bArr, charset).a();
        int iM = ((aVarA.m() * i11) / 100) + 11;
        int iM2 = aVarA.m() + iM;
        int i17 = 32;
        int i18 = 4;
        int i19 = 0;
        int i20 = 1;
        if (i12 != 0) {
            boolean z11 = i12 < 0;
            iAbs = Math.abs(i12);
            if (iAbs > (z11 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i12)));
            }
            iJ = j(iAbs, z11);
            i13 = f32839a[iAbs];
            int i21 = iJ - (iJ % i13);
            aVarI = i(aVarA, i13);
            if (aVarI.m() + iM > i21) {
                z10 = z11;
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z11) {
                z10 = z11;
                if (aVarI.m() > i13 * 64) {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            }
        } else {
            id.a aVarI2 = null;
            int i22 = 0;
            int i23 = 0;
            while (true) {
                if (i22 > i17) {
                    throw new IllegalArgumentException("Data too large for an Aztec code");
                }
                boolean z12 = i22 <= 3 ? i20 : i19;
                int i24 = z12 != 0 ? i22 + 1 : i22;
                int iJ2 = j(i24, z12);
                if (iM2 > iJ2) {
                    i14 = i20;
                } else {
                    if (aVarI2 == null || i23 != f32839a[i24]) {
                        int i25 = f32839a[i24];
                        i23 = i25;
                        aVarI2 = i(aVarA, i25);
                    }
                    int i26 = iJ2 - (iJ2 % i23);
                    if ((z12 == 0 || aVarI2.m() <= i23 * 64) && aVarI2.m() + iM <= i26) {
                        aVarI = aVarI2;
                        i13 = i23;
                        z10 = z12;
                        iAbs = i24;
                        iJ = iJ2;
                        break;
                    }
                    i14 = 1;
                }
                i22 += i14;
                i20 = i14;
                i17 = 32;
                i18 = 4;
                i19 = 0;
            }
        }
        id.a aVarF = f(aVarI, iJ, i13);
        int iM3 = aVarI.m() / i13;
        id.a aVarG = g(z10, iAbs, iM3);
        int i27 = (z10 ? 11 : 14) + (iAbs * 4);
        int[] iArr = new int[i27];
        if (z10) {
            for (int i28 = i19; i28 < i27; i28 += i20) {
                iArr[i28] = i28;
            }
            i15 = i27;
        } else {
            int i29 = i27 / 2;
            i15 = i27 + 1 + (((i29 - 1) / 15) * 2);
            int i30 = i15 / 2;
            for (int i31 = i19; i31 < i29; i31 += i20) {
                int i32 = (i31 / 15) + i31;
                iArr[(i29 - i31) - 1] = (i30 - i32) - 1;
                iArr[i29 + i31] = i32 + i30 + i20;
            }
        }
        id.b bVar = new id.b(i15);
        int i33 = i19;
        int i34 = i33;
        while (i33 < iAbs) {
            int i35 = ((iAbs - i33) * i18) + (z10 ? 9 : 12);
            while (i19 < i35) {
                int i36 = i19 * 2;
                int i37 = 0;
                while (i37 < i16) {
                    if (aVarF.i(i34 + i36 + i37)) {
                        int i38 = i33 * 2;
                        bVar.r(iArr[i38 + i37], iArr[i38 + i19]);
                    }
                    if (aVarF.i((i35 * 2) + i34 + i36 + i37)) {
                        int i39 = i33 * 2;
                        bVar.r(iArr[i39 + i19], iArr[((i27 - 1) - i39) - i37]);
                    }
                    if (aVarF.i((i35 * 4) + i34 + i36 + i37)) {
                        int i40 = (i27 - 1) - (i33 * 2);
                        bVar.r(iArr[i40 - i37], iArr[i40 - i19]);
                    }
                    if (aVarF.i((i35 * 6) + i34 + i36 + i37)) {
                        int i41 = i33 * 2;
                        bVar.r(iArr[((i27 - 1) - i41) - i19], iArr[i41 + i37]);
                    }
                    i37++;
                    i20 = 1;
                    i16 = 2;
                }
                i19 += i20;
                i16 = 2;
            }
            i34 += i35 * 8;
            i33 += i20;
            i16 = 2;
            i18 = 4;
            i19 = 0;
        }
        c(bVar, z10, i15, aVarG);
        if (z10) {
            b(bVar, i15 / 2, 5);
        } else {
            int i42 = i15 / 2;
            b(bVar, i42, 7);
            int i43 = 0;
            int i44 = 0;
            while (i44 < (i27 / 2) - 1) {
                for (int i45 = i42 & 1; i45 < i15; i45 += 2) {
                    int i46 = i42 - i43;
                    bVar.r(i46, i45);
                    int i47 = i42 + i43;
                    bVar.r(i47, i45);
                    bVar.r(i45, i46);
                    bVar.r(i45, i47);
                }
                i44 += 15;
                i43 += 16;
            }
        }
        a aVar = new a();
        aVar.c(z10);
        aVar.f(i15);
        aVar.d(iAbs);
        aVar.b(iM3);
        aVar.e(bVar);
        return aVar;
    }

    private static id.a f(id.a aVar, int i11, int i12) {
        int iM = aVar.m() / i12;
        kd.d dVar = new kd.d(h(i12));
        int i13 = i11 / i12;
        int[] iArrA = a(aVar, i12, i13);
        dVar.b(iArrA, i13 - iM);
        id.a aVar2 = new id.a();
        aVar2.c(0, i11 % i12);
        for (int i14 : iArrA) {
            aVar2.c(i14, i12);
        }
        return aVar2;
    }

    static id.a g(boolean z10, int i11, int i12) {
        id.a aVar = new id.a();
        if (z10) {
            aVar.c(i11 - 1, 2);
            aVar.c(i12 - 1, 6);
            return f(aVar, 28, 4);
        }
        aVar.c(i11 - 1, 5);
        aVar.c(i12 - 1, 11);
        return f(aVar, 40, 4);
    }

    private static kd.a h(int i11) {
        if (i11 == 4) {
            return kd.a.f66764k;
        }
        if (i11 == 6) {
            return kd.a.f66763j;
        }
        if (i11 == 8) {
            return kd.a.f66767n;
        }
        if (i11 == 10) {
            return kd.a.f66762i;
        }
        if (i11 == 12) {
            return kd.a.f66761h;
        }
        throw new IllegalArgumentException("Unsupported word size " + i11);
    }

    static id.a i(id.a aVar, int i11) {
        id.a aVar2 = new id.a();
        int iM = aVar.m();
        int i12 = (1 << i11) - 2;
        int i13 = 0;
        while (i13 < iM) {
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = i13 + i15;
                if (i16 >= iM || aVar.i(i16)) {
                    i14 |= 1 << ((i11 - 1) - i15);
                }
            }
            int i17 = i14 & i12;
            if (i17 == i12) {
                aVar2.c(i17, i11);
            } else {
                if (i17 == 0) {
                    aVar2.c(i14 | 1, i11);
                } else {
                    aVar2.c(i14, i11);
                }
                i13 += i11;
            }
            i13--;
            i13 += i11;
        }
        return aVar2;
    }

    private static int j(int i11, boolean z10) {
        return ((z10 ? 88 : 112) + (i11 * 16)) * i11;
    }
}
