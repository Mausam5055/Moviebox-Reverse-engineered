package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes3.dex */
abstract class d {
    public static c a(byte[] bArr, int i11) {
        ArrayList arrayListF;
        d0 d0Var = new d0(bArr);
        try {
            arrayListF = c(d0Var) ? f(d0Var) : e(d0Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListF = null;
        }
        if (arrayListF == null) {
            return null;
        }
        int size = arrayListF.size();
        if (size == 1) {
            return new c((c.a) arrayListF.get(0), i11);
        }
        if (size != 2) {
            return null;
        }
        return new c((c.a) arrayListF.get(0), (c.a) arrayListF.get(1), i11);
    }

    private static int b(int i11) {
        return (-(i11 & 1)) ^ (i11 >> 1);
    }

    private static boolean c(d0 d0Var) {
        d0Var.Q(4);
        int iN = d0Var.n();
        d0Var.P(0);
        return iN == 1886547818;
    }

    private static c.a d(d0 d0Var) {
        int iN = d0Var.n();
        if (iN > 10000) {
            return null;
        }
        float[] fArr = new float[iN];
        for (int i11 = 0; i11 < iN; i11++) {
            fArr[i11] = d0Var.m();
        }
        int iN2 = d0Var.n();
        if (iN2 > 32000) {
            return null;
        }
        double d11 = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iN) * 2.0d) / dLog);
        c0 c0Var = new c0(d0Var.d());
        int i12 = 8;
        c0Var.p(d0Var.e() * 8);
        float[] fArr2 = new float[iN2 * 5];
        int i13 = 5;
        int[] iArr = new int[5];
        int i14 = 0;
        int i15 = 0;
        while (i14 < iN2) {
            int i16 = 0;
            while (i16 < i13) {
                int iB = iArr[i16] + b(c0Var.h(iCeil));
                if (iB >= iN || iB < 0) {
                    return null;
                }
                fArr2[i15] = fArr[iB];
                iArr[i16] = iB;
                i16++;
                i15++;
                i13 = 5;
            }
            i14++;
            i13 = 5;
        }
        c0Var.p((c0Var.e() + 7) & (-8));
        int i17 = 32;
        int iH = c0Var.h(32);
        c.b[] bVarArr = new c.b[iH];
        int i18 = 0;
        while (i18 < iH) {
            int iH2 = c0Var.h(i12);
            int iH3 = c0Var.h(i12);
            int iH4 = c0Var.h(i17);
            if (iH4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iN2) * d11) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i19 = 0; i19 < iH4; i19++) {
                iB2 += b(c0Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iN2) {
                    return null;
                }
                int i20 = i19 * 3;
                int i21 = iB2 * 5;
                fArr3[i20] = fArr2[i21];
                fArr3[i20 + 1] = fArr2[i21 + 1];
                fArr3[i20 + 2] = fArr2[i21 + 2];
                int i22 = i19 * 2;
                fArr4[i22] = fArr2[i21 + 3];
                fArr4[i22 + 1] = fArr2[i21 + 4];
            }
            bVarArr[i18] = new c.b(iH2, fArr3, fArr4, iH3);
            i18++;
            i17 = 32;
            d11 = 2.0d;
            i12 = 8;
        }
        return new c.a(bVarArr);
    }

    private static ArrayList e(d0 d0Var) {
        if (d0Var.D() != 0) {
            return null;
        }
        d0Var.Q(7);
        int iN = d0Var.n();
        if (iN == 1684433976) {
            d0 d0Var2 = new d0();
            Inflater inflater = new Inflater(true);
            try {
                if (!p0.r0(d0Var, d0Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                d0Var = d0Var2;
            } catch (Throwable th2) {
                inflater.end();
                throw th2;
            }
        } else if (iN != 1918990112) {
            return null;
        }
        return g(d0Var);
    }

    private static ArrayList f(d0 d0Var) {
        int iN;
        d0Var.Q(8);
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF && (iN = d0Var.n() + iE) > iE && iN <= iF) {
            int iN2 = d0Var.n();
            if (iN2 == 2037673328 || iN2 == 1836279920) {
                d0Var.O(iN);
                return e(d0Var);
            }
            d0Var.P(iN);
            iE = iN;
        }
        return null;
    }

    private static ArrayList g(d0 d0Var) {
        ArrayList arrayList = new ArrayList();
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF) {
            int iN = d0Var.n() + iE;
            if (iN <= iE || iN > iF) {
                return null;
            }
            if (d0Var.n() == 1835365224) {
                c.a aVarD = d(d0Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            d0Var.P(iN);
            iE = iN;
        }
        return arrayList;
    }
}
