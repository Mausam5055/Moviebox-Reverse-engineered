package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
abstract class d {
    public static c a(byte[] bArr, int i11) {
        ArrayList arrayListF;
        j0 j0Var = new j0(bArr);
        try {
            arrayListF = c(j0Var) ? f(j0Var) : e(j0Var);
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

    private static boolean c(j0 j0Var) {
        j0Var.X(4);
        int iQ = j0Var.q();
        j0Var.W(0);
        return iQ == 1886547818;
    }

    private static c.a d(j0 j0Var) {
        int iQ = j0Var.q();
        if (iQ > 10000) {
            return null;
        }
        float[] fArr = new float[iQ];
        for (int i11 = 0; i11 < iQ; i11++) {
            fArr[i11] = j0Var.p();
        }
        int iQ2 = j0Var.q();
        if (iQ2 > 32000) {
            return null;
        }
        double d11 = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iQ) * 2.0d) / dLog);
        i0 i0Var = new i0(j0Var.e());
        int i12 = 8;
        i0Var.p(j0Var.f() * 8);
        float[] fArr2 = new float[iQ2 * 5];
        int i13 = 5;
        int[] iArr = new int[5];
        int i14 = 0;
        int i15 = 0;
        while (i14 < iQ2) {
            int i16 = 0;
            while (i16 < i13) {
                int iB = iArr[i16] + b(i0Var.h(iCeil));
                if (iB >= iQ || iB < 0) {
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
        i0Var.p((i0Var.e() + 7) & (-8));
        int i17 = 32;
        int iH = i0Var.h(32);
        c.b[] bVarArr = new c.b[iH];
        int i18 = 0;
        while (i18 < iH) {
            int iH2 = i0Var.h(i12);
            int iH3 = i0Var.h(i12);
            int iH4 = i0Var.h(i17);
            if (iH4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iQ2) * d11) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i19 = 0; i19 < iH4; i19++) {
                iB2 += b(i0Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iQ2) {
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

    private static ArrayList e(j0 j0Var) {
        if (j0Var.H() != 0) {
            return null;
        }
        j0Var.X(7);
        int iQ = j0Var.q();
        if (iQ == 1684433976) {
            j0 j0Var2 = new j0();
            Inflater inflater = new Inflater(true);
            try {
                if (!a1.B0(j0Var, j0Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                j0Var = j0Var2;
            } catch (Throwable th2) {
                inflater.end();
                throw th2;
            }
        } else if (iQ != 1918990112) {
            return null;
        }
        return g(j0Var);
    }

    private static ArrayList f(j0 j0Var) {
        int iQ;
        j0Var.X(8);
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG && (iQ = j0Var.q() + iF) > iF && iQ <= iG) {
            int iQ2 = j0Var.q();
            if (iQ2 == 2037673328 || iQ2 == 1836279920) {
                j0Var.V(iQ);
                return e(j0Var);
            }
            j0Var.W(iQ);
            iF = iQ;
        }
        return null;
    }

    private static ArrayList g(j0 j0Var) {
        ArrayList arrayList = new ArrayList();
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG) {
            int iQ = j0Var.q() + iF;
            if (iQ <= iF || iQ > iG) {
                return null;
            }
            if (j0Var.q() == 1835365224) {
                c.a aVarD = d(j0Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            j0Var.W(iQ);
            iF = iQ;
        }
        return arrayList;
    }
}
