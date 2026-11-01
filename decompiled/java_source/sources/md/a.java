package md;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import id.b;
import id.f;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f69512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final jd.b f69513b;

    public a(b bVar) {
        this.f69512a = bVar;
        this.f69513b = new jd.b(bVar);
    }

    private k a(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = j(kVar, kVar4);
        k kVarH = h(kVar, kVar2, (j(kVar2, kVar4) + 1) * 4);
        k kVarH2 = h(kVar3, kVar2, (iJ + 1) * 4);
        int iJ2 = j(kVarH, kVar4);
        int iJ3 = j(kVarH2, kVar4);
        float f11 = iJ2 + 1;
        k kVar5 = new k(kVar4.c() + ((kVar3.c() - kVar2.c()) / f11), kVar4.d() + ((kVar3.d() - kVar2.d()) / f11));
        float f12 = iJ3 + 1;
        k kVar6 = new k(kVar4.c() + ((kVar.c() - kVar2.c()) / f12), kVar4.d() + ((kVar.d() - kVar2.d()) / f12));
        if (e(kVar5)) {
            return (e(kVar6) && j(kVarH, kVar5) + j(kVarH2, kVar5) <= j(kVarH, kVar6) + j(kVarH2, kVar6)) ? kVar6 : kVar5;
        }
        if (e(kVar6)) {
            return kVar6;
        }
        return null;
    }

    private k[] c(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[3];
        k kVar4 = kVarArr[2];
        int iJ = j(kVar, kVar2);
        int iJ2 = j(kVar2, kVar3);
        int iJ3 = j(kVar3, kVar4);
        int iJ4 = j(kVar4, kVar);
        k[] kVarArr2 = {kVar4, kVar, kVar2, kVar3};
        if (iJ > iJ2) {
            kVarArr2[0] = kVar;
            kVarArr2[1] = kVar2;
            kVarArr2[2] = kVar3;
            kVarArr2[3] = kVar4;
            iJ = iJ2;
        }
        if (iJ > iJ3) {
            kVarArr2[0] = kVar2;
            kVarArr2[1] = kVar3;
            kVarArr2[2] = kVar4;
            kVarArr2[3] = kVar;
        } else {
            iJ3 = iJ;
        }
        if (iJ3 > iJ4) {
            kVarArr2[0] = kVar3;
            kVarArr2[1] = kVar4;
            kVarArr2[2] = kVar;
            kVarArr2[3] = kVar2;
        }
        return kVarArr2;
    }

    private k[] d(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = (j(kVar, kVar4) + 1) * 4;
        if (j(h(kVar2, kVar3, iJ), kVar) < j(h(kVar3, kVar2, iJ), kVar4)) {
            kVarArr[0] = kVar;
            kVarArr[1] = kVar2;
            kVarArr[2] = kVar3;
            kVarArr[3] = kVar4;
        } else {
            kVarArr[0] = kVar2;
            kVarArr[1] = kVar3;
            kVarArr[2] = kVar4;
            kVarArr[3] = kVar;
        }
        return kVarArr;
    }

    private boolean e(k kVar) {
        return kVar.c() >= 0.0f && kVar.c() <= ((float) (this.f69512a.n() - 1)) && kVar.d() > 0.0f && kVar.d() <= ((float) (this.f69512a.k() - 1));
    }

    private static k f(k kVar, float f11, float f12) {
        float fC = kVar.c();
        float fD = kVar.d();
        return new k(fC < f11 ? fC - 1.0f : fC + 1.0f, fD < f12 ? fD - 1.0f : fD + 1.0f);
    }

    private static b g(b bVar, k kVar, k kVar2, k kVar3, k kVar4, int i11, int i12) {
        float f11 = i11 - 0.5f;
        float f12 = i12 - 0.5f;
        return id.k.b().c(bVar, i11, i12, 0.5f, 0.5f, f11, 0.5f, f11, f12, 0.5f, f12, kVar.c(), kVar.d(), kVar4.c(), kVar4.d(), kVar3.c(), kVar3.d(), kVar2.c(), kVar2.d());
    }

    private static k h(k kVar, k kVar2, int i11) {
        float f11 = i11 + 1;
        return new k(kVar.c() + ((kVar2.c() - kVar.c()) / f11), kVar.d() + ((kVar2.d() - kVar.d()) / f11));
    }

    private k[] i(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = j(kVar, kVar4) + 1;
        k kVarH = h(kVar, kVar2, (j(kVar3, kVar4) + 1) * 4);
        k kVarH2 = h(kVar3, kVar2, iJ * 4);
        int iJ2 = j(kVarH, kVar4);
        int i11 = iJ2 + 1;
        int iJ3 = j(kVarH2, kVar4);
        int i12 = iJ3 + 1;
        if ((i11 & 1) == 1) {
            i11 = iJ2 + 2;
        }
        if ((i12 & 1) == 1) {
            i12 = iJ3 + 2;
        }
        float fC = (((kVar.c() + kVar2.c()) + kVar3.c()) + kVar4.c()) / 4.0f;
        float fD = (((kVar.d() + kVar2.d()) + kVar3.d()) + kVar4.d()) / 4.0f;
        k kVarF = f(kVar, fC, fD);
        k kVarF2 = f(kVar2, fC, fD);
        k kVarF3 = f(kVar3, fC, fD);
        k kVarF4 = f(kVar4, fC, fD);
        int i13 = i12 * 4;
        int i14 = i11 * 4;
        return new k[]{h(h(kVarF, kVarF2, i13), kVarF4, i14), h(h(kVarF2, kVarF, i13), kVarF3, i14), h(h(kVarF3, kVarF4, i13), kVarF2, i14), h(h(kVarF4, kVarF3, i13), kVarF, i14)};
    }

    private int j(k kVar, k kVar2) {
        int iC = (int) kVar.c();
        int iD = (int) kVar.d();
        int iC2 = (int) kVar2.c();
        int iMin = Math.min(this.f69512a.k() - 1, (int) kVar2.d());
        int i11 = 0;
        boolean z10 = Math.abs(iMin - iD) > Math.abs(iC2 - iC);
        if (z10) {
            iD = iC;
            iC = iD;
            iMin = iC2;
            iC2 = iMin;
        }
        int iAbs = Math.abs(iC2 - iC);
        int iAbs2 = Math.abs(iMin - iD);
        int i12 = (-iAbs) / 2;
        int i13 = iD < iMin ? 1 : -1;
        int i14 = iC >= iC2 ? -1 : 1;
        boolean zG = this.f69512a.g(z10 ? iD : iC, z10 ? iC : iD);
        while (iC != iC2) {
            boolean zG2 = this.f69512a.g(z10 ? iD : iC, z10 ? iC : iD);
            if (zG2 != zG) {
                i11++;
                zG = zG2;
            }
            i12 += iAbs2;
            if (i12 > 0) {
                if (iD == iMin) {
                    break;
                }
                iD += i13;
                i12 -= iAbs;
            }
            iC += i14;
        }
        return i11;
    }

    public f b() throws NotFoundException {
        int iMax;
        int i11;
        k[] kVarArrD = d(c(this.f69513b.c()));
        k kVarA = a(kVarArrD);
        kVarArrD[3] = kVarA;
        if (kVarA == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k[] kVarArrI = i(kVarArrD);
        k kVar = kVarArrI[0];
        k kVar2 = kVarArrI[1];
        k kVar3 = kVarArrI[2];
        k kVar4 = kVarArrI[3];
        int iJ = j(kVar, kVar4);
        int i12 = iJ + 1;
        int iJ2 = j(kVar3, kVar4);
        int i13 = iJ2 + 1;
        if ((i12 & 1) == 1) {
            i12 = iJ + 2;
        }
        if ((i13 & 1) == 1) {
            i13 = iJ2 + 2;
        }
        if (i12 * 4 >= i13 * 6 || i13 * 4 >= i12 * 6) {
            iMax = i12;
            i11 = i13;
        } else {
            iMax = Math.max(i12, i13);
            i11 = iMax;
        }
        return new f(g(this.f69512a, kVar, kVar2, kVar3, kVar4, iMax, i11), new k[]{kVar, kVar2, kVar3, kVar4});
    }
}
