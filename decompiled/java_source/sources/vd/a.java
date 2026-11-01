package vd;

import com.google.zxing.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f77262a = {0, 4, 1, 5};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f77263b = {6, 2, 7, 3};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f77264c = {8, 1, 1, 1, 1, 1, 1, 3};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f77265d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f77266e = {0, 180, 270, 90};

    private static id.b a(id.b bVar, int i11) {
        if (i11 % 360 == 0) {
            return bVar;
        }
        id.b bVarClone = bVar.clone();
        bVarClone.o(i11);
        return bVarClone;
    }

    private static void b(k[] kVarArr, k[] kVarArr2, int[] iArr) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            kVarArr[iArr[i11]] = kVarArr2[i11];
        }
    }

    private static List c(boolean z10, id.b bVar) {
        int iC;
        float fD;
        ArrayList<k[]> arrayList = new ArrayList();
        int iMax = 0;
        int i11 = 0;
        loop0: while (true) {
            int i12 = i11;
            while (iMax < bVar.k()) {
                k[] kVarArrG = g(bVar, iMax, i11);
                if (kVarArrG[0] == null && kVarArrG[3] == null) {
                    if (i12 == 0) {
                        break;
                    }
                    for (k[] kVarArr : arrayList) {
                        k kVar = kVarArr[1];
                        if (kVar != null) {
                            iMax = (int) Math.max(iMax, kVar.d());
                        }
                        k kVar2 = kVarArr[3];
                        if (kVar2 != null) {
                            iMax = Math.max(iMax, (int) kVar2.d());
                        }
                    }
                    iMax += 5;
                    i11 = 0;
                } else {
                    arrayList.add(kVarArrG);
                    if (!z10) {
                        break loop0;
                    }
                    k kVar3 = kVarArrG[2];
                    if (kVar3 != null) {
                        iC = (int) kVar3.c();
                        fD = kVarArrG[2].d();
                    } else {
                        iC = (int) kVarArrG[4].c();
                        fD = kVarArrG[4].d();
                    }
                    iMax = (int) fD;
                    i11 = iC;
                    i12 = 1;
                }
            }
            break loop0;
        }
        return arrayList;
    }

    public static b d(com.google.zxing.b bVar, Map map, boolean z10) {
        id.b bVarA = bVar.a();
        for (int i11 : f77266e) {
            id.b bVarA2 = a(bVarA, i11);
            List listC = c(z10, bVarA2);
            if (!listC.isEmpty()) {
                return new b(bVarA2, listC, i11);
            }
        }
        return new b(bVarA, new ArrayList(), 0);
    }

    private static int[] e(id.b bVar, int i11, int i12, int i13, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i14 = 0;
        while (bVar.g(i11, i12) && i11 > 0) {
            int i15 = i14 + 1;
            if (i14 >= 3) {
                break;
            }
            i11--;
            i14 = i15;
        }
        int length = iArr.length;
        int i16 = i11;
        int i17 = 0;
        boolean z10 = false;
        while (i11 < i13) {
            if (bVar.g(i11, i12) != z10) {
                iArr2[i17] = iArr2[i17] + 1;
            } else {
                if (i17 != length - 1) {
                    i17++;
                } else {
                    if (h(iArr2, iArr) < 0.42f) {
                        return new int[]{i16, i11};
                    }
                    i16 += iArr2[0] + iArr2[1];
                    int i18 = i17 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i18);
                    iArr2[i18] = 0;
                    iArr2[i17] = 0;
                    i17--;
                }
                iArr2[i17] = 1;
                z10 = !z10;
            }
            i11++;
        }
        if (i17 != length - 1 || h(iArr2, iArr) >= 0.42f) {
            return null;
        }
        return new int[]{i16, i11 - 1};
    }

    private static k[] f(id.b bVar, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        boolean z10;
        int i16;
        k[] kVarArr = new k[4];
        int[] iArr2 = new int[iArr.length];
        int i17 = i13;
        while (true) {
            if (i17 >= i11) {
                z10 = false;
                break;
            }
            int[] iArrE = e(bVar, i14, i17, i12, iArr, iArr2);
            if (iArrE != null) {
                int i18 = i17;
                int[] iArr3 = iArrE;
                while (i18 > 0) {
                    int i19 = i18 - 1;
                    int[] iArrE2 = e(bVar, i14, i19, i12, iArr, iArr2);
                    if (iArrE2 == null) {
                        break;
                    }
                    iArr3 = iArrE2;
                    i18 = i19;
                }
                float f11 = i18;
                kVarArr[0] = new k(iArr3[0], f11);
                kVarArr[1] = new k(iArr3[1], f11);
                z10 = true;
                i17 = i18;
                break;
            }
            i17 += 5;
        }
        int i20 = i17 + 1;
        if (z10) {
            int[] iArr4 = {(int) kVarArr[0].c(), (int) kVarArr[1].c()};
            int i21 = i20;
            int i22 = 0;
            while (true) {
                if (i21 >= i11) {
                    i16 = i22;
                    break;
                }
                i16 = i22;
                int[] iArrE3 = e(bVar, iArr4[0], i21, i12, iArr, iArr2);
                if (iArrE3 != null && Math.abs(iArr4[0] - iArrE3[0]) < 5 && Math.abs(iArr4[1] - iArrE3[1]) < 5) {
                    iArr4 = iArrE3;
                    i22 = 0;
                } else {
                    if (i16 > 25) {
                        break;
                    }
                    i22 = i16 + 1;
                }
                i21++;
            }
            i20 = i21 - (i16 + 1);
            float f12 = i20;
            kVarArr[2] = new k(iArr4[0], f12);
            kVarArr[3] = new k(iArr4[1], f12);
        }
        if (i20 - i17 < i15) {
            Arrays.fill(kVarArr, (Object) null);
        }
        return kVarArr;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x004a A[PHI: r12 r13
  0x004a: PHI (r12v1 int) = (r12v0 int), (r12v6 int) binds: [B:3:0x0022, B:5:0x0033] A[DONT_GENERATE, DONT_INLINE]
  0x004a: PHI (r13v1 int) = (r13v0 int), (r13v2 int) binds: [B:3:0x0022, B:5:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    private static k[] g(id.b bVar, int i11, int i12) {
        int i13;
        int i14;
        int iMax;
        int iK = bVar.k();
        int iN = bVar.n();
        k[] kVarArr = new k[8];
        b(kVarArr, f(bVar, iK, iN, i11, i12, 10, f77264c), f77262a);
        k kVar = kVarArr[4];
        if (kVar != null) {
            i12 = (int) kVar.c();
            i11 = (int) kVarArr[4].d();
            k kVar2 = kVarArr[5];
            if (kVar2 != null) {
                i13 = i11;
                i14 = i12;
                iMax = (int) Math.max((((int) kVar2.d()) - i11) * 0.5f, 10.0f);
            } else {
                i13 = i11;
                i14 = i12;
                iMax = 10;
            }
        } else {
            i13 = i11;
            i14 = i12;
            iMax = 10;
        }
        b(kVarArr, f(bVar, iK, iN, i13, i14, iMax, f77265d), f77263b);
        return kVarArr;
    }

    private static float h(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            i11 += iArr[i13];
            i12 += iArr2[i13];
        }
        if (i11 < i12) {
            return Float.POSITIVE_INFINITY;
        }
        float f11 = i11;
        float f12 = f11 / i12;
        float f13 = 0.8f * f12;
        float f14 = 0.0f;
        for (int i14 = 0; i14 < length; i14++) {
            int i15 = iArr[i14];
            float f15 = iArr2[i14] * f12;
            float f16 = i15;
            float f17 = f16 > f15 ? f16 - f15 : f15 - f16;
            if (f17 > f13) {
                return Float.POSITIVE_INFINITY;
            }
            f14 += f17;
        }
        return f14 / f11;
    }
}
