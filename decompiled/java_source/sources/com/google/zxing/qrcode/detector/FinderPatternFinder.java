package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import com.google.zxing.l;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class FinderPatternFinder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final EstimatedModuleComparator f33004f = new EstimatedModuleComparator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f33005a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33007c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l f33009e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f33006b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f33008d = new int[5];

    private static final class EstimatedModuleComparator implements Comparator<d>, Serializable {
        private EstimatedModuleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(d dVar, d dVar2) {
            return Float.compare(dVar.i(), dVar2.i());
        }
    }

    public FinderPatternFinder(id.b bVar, l lVar) {
        this.f33005a = bVar;
        this.f33009e = lVar;
    }

    private static float a(int[] iArr, int i11) {
        return ((i11 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private boolean b(int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int[] iArrK = k();
        int i16 = 0;
        while (i11 >= i16 && i12 >= i16 && this.f33005a.g(i12 - i16, i11 - i16)) {
            iArrK[2] = iArrK[2] + 1;
            i16++;
        }
        if (iArrK[2] == 0) {
            return false;
        }
        while (i11 >= i16 && i12 >= i16 && !this.f33005a.g(i12 - i16, i11 - i16)) {
            iArrK[1] = iArrK[1] + 1;
            i16++;
        }
        if (iArrK[1] == 0) {
            return false;
        }
        while (i11 >= i16 && i12 >= i16 && this.f33005a.g(i12 - i16, i11 - i16)) {
            iArrK[0] = iArrK[0] + 1;
            i16++;
        }
        if (iArrK[0] == 0) {
            return false;
        }
        int iK = this.f33005a.k();
        int iN = this.f33005a.n();
        int i17 = 1;
        while (true) {
            int i18 = i11 + i17;
            if (i18 >= iK || (i15 = i12 + i17) >= iN || !this.f33005a.g(i15, i18)) {
                break;
            }
            iArrK[2] = iArrK[2] + 1;
            i17++;
        }
        while (true) {
            int i19 = i11 + i17;
            if (i19 >= iK || (i14 = i12 + i17) >= iN || this.f33005a.g(i14, i19)) {
                break;
            }
            iArrK[3] = iArrK[3] + 1;
            i17++;
        }
        if (iArrK[3] == 0) {
            return false;
        }
        while (true) {
            int i20 = i11 + i17;
            if (i20 >= iK || (i13 = i12 + i17) >= iN || !this.f33005a.g(i13, i20)) {
                break;
            }
            iArrK[4] = iArrK[4] + 1;
            i17++;
        }
        if (iArrK[4] == 0) {
            return false;
        }
        return j(iArrK);
    }

    private float c(int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        id.b bVar = this.f33005a;
        int iN = bVar.n();
        int[] iArrK = k();
        int i18 = i11;
        while (i18 >= 0 && bVar.g(i18, i12)) {
            iArrK[2] = iArrK[2] + 1;
            i18--;
        }
        if (i18 < 0) {
            return Float.NaN;
        }
        while (i18 >= 0 && !bVar.g(i18, i12)) {
            int i19 = iArrK[1];
            if (i19 > i13) {
                break;
            }
            iArrK[1] = i19 + 1;
            i18--;
        }
        if (i18 < 0 || iArrK[1] > i13) {
            return Float.NaN;
        }
        while (i18 >= 0 && bVar.g(i18, i12) && (i17 = iArrK[0]) <= i13) {
            iArrK[0] = i17 + 1;
            i18--;
        }
        if (iArrK[0] > i13) {
            return Float.NaN;
        }
        int i20 = i11 + 1;
        while (i20 < iN && bVar.g(i20, i12)) {
            iArrK[2] = iArrK[2] + 1;
            i20++;
        }
        if (i20 == iN) {
            return Float.NaN;
        }
        while (i20 < iN && !bVar.g(i20, i12) && (i16 = iArrK[3]) < i13) {
            iArrK[3] = i16 + 1;
            i20++;
        }
        if (i20 == iN || iArrK[3] >= i13) {
            return Float.NaN;
        }
        while (i20 < iN && bVar.g(i20, i12) && (i15 = iArrK[4]) < i13) {
            iArrK[4] = i15 + 1;
            i20++;
        }
        int i21 = iArrK[4];
        if (i21 < i13 && Math.abs(((((iArrK[0] + iArrK[1]) + iArrK[2]) + iArrK[3]) + i21) - i14) * 5 < i14 && i(iArrK)) {
            return a(iArrK, i20);
        }
        return Float.NaN;
    }

    private float d(int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        id.b bVar = this.f33005a;
        int iK = bVar.k();
        int[] iArrK = k();
        int i18 = i11;
        while (i18 >= 0 && bVar.g(i12, i18)) {
            iArrK[2] = iArrK[2] + 1;
            i18--;
        }
        if (i18 < 0) {
            return Float.NaN;
        }
        while (i18 >= 0 && !bVar.g(i12, i18)) {
            int i19 = iArrK[1];
            if (i19 > i13) {
                break;
            }
            iArrK[1] = i19 + 1;
            i18--;
        }
        if (i18 < 0 || iArrK[1] > i13) {
            return Float.NaN;
        }
        while (i18 >= 0 && bVar.g(i12, i18) && (i17 = iArrK[0]) <= i13) {
            iArrK[0] = i17 + 1;
            i18--;
        }
        if (iArrK[0] > i13) {
            return Float.NaN;
        }
        int i20 = i11 + 1;
        while (i20 < iK && bVar.g(i12, i20)) {
            iArrK[2] = iArrK[2] + 1;
            i20++;
        }
        if (i20 == iK) {
            return Float.NaN;
        }
        while (i20 < iK && !bVar.g(i12, i20) && (i16 = iArrK[3]) < i13) {
            iArrK[3] = i16 + 1;
            i20++;
        }
        if (i20 == iK || iArrK[3] >= i13) {
            return Float.NaN;
        }
        while (i20 < iK && bVar.g(i12, i20) && (i15 = iArrK[4]) < i13) {
            iArrK[4] = i15 + 1;
            i20++;
        }
        int i21 = iArrK[4];
        if (i21 < i13 && Math.abs(((((iArrK[0] + iArrK[1]) + iArrK[2]) + iArrK[3]) + i21) - i14) * 5 < i14 * 2 && i(iArrK)) {
            return a(iArrK, i20);
        }
        return Float.NaN;
    }

    protected static void e(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    protected static void f(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private int h() {
        if (this.f33006b.size() <= 1) {
            return 0;
        }
        d dVar = null;
        for (d dVar2 : this.f33006b) {
            if (dVar2.h() >= 2) {
                if (dVar != null) {
                    this.f33007c = true;
                    return ((int) (Math.abs(dVar.c() - dVar2.c()) - Math.abs(dVar.d() - dVar2.d()))) / 2;
                }
                dVar = dVar2;
            }
        }
        return 0;
    }

    protected static boolean i(int[] iArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < 5; i12++) {
            int i13 = iArr[i12];
            if (i13 == 0) {
                return false;
            }
            i11 += i13;
        }
        if (i11 < 7) {
            return false;
        }
        float f11 = i11 / 7.0f;
        float f12 = f11 / 2.0f;
        return Math.abs(f11 - ((float) iArr[0])) < f12 && Math.abs(f11 - ((float) iArr[1])) < f12 && Math.abs((f11 * 3.0f) - ((float) iArr[2])) < 3.0f * f12 && Math.abs(f11 - ((float) iArr[3])) < f12 && Math.abs(f11 - ((float) iArr[4])) < f12;
    }

    protected static boolean j(int[] iArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < 5; i12++) {
            int i13 = iArr[i12];
            if (i13 == 0) {
                return false;
            }
            i11 += i13;
        }
        if (i11 < 7) {
            return false;
        }
        float f11 = i11 / 7.0f;
        float f12 = f11 / 1.333f;
        return Math.abs(f11 - ((float) iArr[0])) < f12 && Math.abs(f11 - ((float) iArr[1])) < f12 && Math.abs((f11 * 3.0f) - ((float) iArr[2])) < 3.0f * f12 && Math.abs(f11 - ((float) iArr[3])) < f12 && Math.abs(f11 - ((float) iArr[4])) < f12;
    }

    private int[] k() {
        e(this.f33008d);
        return this.f33008d;
    }

    private boolean m() {
        int size = this.f33006b.size();
        float fAbs = 0.0f;
        int i11 = 0;
        float fI = 0.0f;
        for (d dVar : this.f33006b) {
            if (dVar.h() >= 2) {
                i11++;
                fI += dVar.i();
            }
        }
        if (i11 < 3) {
            return false;
        }
        float f11 = fI / size;
        Iterator it = this.f33006b.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(((d) it.next()).i() - f11);
        }
        return fAbs <= fI * 0.05f;
    }

    private d[] n() throws NotFoundException {
        double d11;
        if (this.f33006b.size() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        Iterator it = this.f33006b.iterator();
        while (it.hasNext()) {
            if (((d) it.next()).h() < 2) {
                it.remove();
            }
        }
        Collections.sort(this.f33006b, f33004f);
        d[] dVarArr = new d[3];
        int i11 = 0;
        double d12 = Double.MAX_VALUE;
        while (i11 < this.f33006b.size() - 2) {
            d dVar = (d) this.f33006b.get(i11);
            float fI = dVar.i();
            i11++;
            int i12 = i11;
            while (i12 < this.f33006b.size() - 1) {
                d dVar2 = (d) this.f33006b.get(i12);
                double dO = o(dVar, dVar2);
                i12++;
                for (int i13 = i12; i13 < this.f33006b.size(); i13++) {
                    d dVar3 = (d) this.f33006b.get(i13);
                    if (dVar3.i() <= 1.4f * fI) {
                        double dO2 = o(dVar2, dVar3);
                        double dO3 = o(dVar, dVar3);
                        if (dO >= dO2) {
                            if (dO2 >= dO3) {
                                d11 = dO3;
                                dO3 = dO2;
                            } else if (dO < dO3) {
                                d11 = dO2;
                                dO2 = dO3;
                                dO3 = dO;
                            } else {
                                d11 = dO2;
                            }
                            dO2 = dO;
                        } else if (dO2 <= dO3) {
                            d11 = dO;
                            dO2 = dO3;
                            dO3 = dO2;
                        } else if (dO < dO3) {
                            d11 = dO;
                        } else {
                            d11 = dO3;
                            dO3 = dO;
                        }
                        double dAbs = Math.abs(dO2 - (dO3 * 2.0d)) + Math.abs(dO2 - (d11 * 2.0d));
                        if (dAbs < d12) {
                            dVarArr[0] = dVar;
                            dVarArr[1] = dVar2;
                            dVarArr[2] = dVar3;
                            d12 = dAbs;
                        }
                    }
                }
            }
        }
        if (d12 != Double.MAX_VALUE) {
            return dVarArr;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static double o(d dVar, d dVar2) {
        double dC = dVar.c() - dVar2.c();
        double d11 = dVar.d() - dVar2.d();
        return (dC * dC) + (d11 * d11);
    }

    final e g(Map map) throws NotFoundException {
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int iK = this.f33005a.k();
        int iN = this.f33005a.n();
        int i11 = (iK * 3) / 388;
        if (i11 < 3 || z10) {
            i11 = 3;
        }
        int[] iArr = new int[5];
        int i12 = i11 - 1;
        boolean zM = false;
        while (i12 < iK && !zM) {
            e(iArr);
            int i13 = 0;
            int i14 = 0;
            while (i13 < iN) {
                if (this.f33005a.g(i13, i12)) {
                    if ((i14 & 1) == 1) {
                        i14++;
                    }
                    iArr[i14] = iArr[i14] + 1;
                } else if ((i14 & 1) != 0) {
                    iArr[i14] = iArr[i14] + 1;
                } else if (i14 != 4) {
                    i14++;
                    iArr[i14] = iArr[i14] + 1;
                } else if (i(iArr) && l(iArr, i12, i13)) {
                    if (this.f33007c) {
                        zM = m();
                    } else {
                        int iH = h();
                        int i15 = iArr[2];
                        if (iH > i15) {
                            i12 += (iH - i15) - 2;
                            i13 = iN - 1;
                        }
                    }
                    e(iArr);
                    i11 = 2;
                    i14 = 0;
                } else {
                    f(iArr);
                    i14 = 3;
                }
                i13++;
            }
            if (i(iArr) && l(iArr, i12, iN)) {
                i11 = iArr[0];
                if (this.f33007c) {
                    zM = m();
                }
            }
            i12 += i11;
        }
        d[] dVarArrN = n();
        k.e(dVarArrN);
        return new e(dVarArrN);
    }

    protected final boolean l(int[] iArr, int i11, int i12) {
        int i13 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iA = (int) a(iArr, i12);
        float fD = d(i11, iA, iArr[2], i13);
        if (!Float.isNaN(fD)) {
            int i14 = (int) fD;
            float fC = c(iA, i14, iArr[2], i13);
            if (!Float.isNaN(fC) && b(i14, (int) fC)) {
                float f11 = i13 / 7.0f;
                for (int i15 = 0; i15 < this.f33006b.size(); i15++) {
                    d dVar = (d) this.f33006b.get(i15);
                    if (dVar.f(f11, fD, fC)) {
                        this.f33006b.set(i15, dVar.g(fD, fC, f11));
                        return true;
                    }
                }
                d dVar2 = new d(fC, fD, f11);
                this.f33006b.add(dVar2);
                l lVar = this.f33009e;
                if (lVar != null) {
                    lVar.a(dVar2);
                }
                return true;
            }
        }
        return false;
    }
}
