package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import com.google.zxing.l;
import com.google.zxing.qrcode.decoder.g;
import id.f;
import id.n;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f33020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f33021b;

    public c(id.b bVar) {
        this.f33020a = bVar;
    }

    private float b(k kVar, k kVar2) {
        float fJ = j((int) kVar.c(), (int) kVar.d(), (int) kVar2.c(), (int) kVar2.d());
        float fJ2 = j((int) kVar2.c(), (int) kVar2.d(), (int) kVar.c(), (int) kVar.d());
        if (Float.isNaN(fJ)) {
            return fJ2 / 7.0f;
        }
        return Float.isNaN(fJ2) ? fJ / 7.0f : (fJ + fJ2) / 14.0f;
    }

    private static int c(k kVar, k kVar2, k kVar3, float f11) throws NotFoundException {
        int iC = (jd.a.c(k.b(kVar, kVar2) / f11) + jd.a.c(k.b(kVar, kVar3) / f11)) / 2;
        int i11 = iC + 7;
        int i12 = i11 & 3;
        if (i12 == 0) {
            return iC + 8;
        }
        if (i12 == 2) {
            return iC + 6;
        }
        if (i12 != 3) {
            return i11;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static n d(k kVar, k kVar2, k kVar3, k kVar4, int i11) {
        float fC;
        float fD;
        float f11;
        float f12 = i11 - 3.5f;
        if (kVar4 != null) {
            fC = kVar4.c();
            fD = kVar4.d();
            f11 = f12 - 3.0f;
        } else {
            fC = (kVar2.c() - kVar.c()) + kVar3.c();
            fD = (kVar2.d() - kVar.d()) + kVar3.d();
            f11 = f12;
        }
        return n.b(3.5f, 3.5f, f12, 3.5f, f11, f11, 3.5f, f12, kVar.c(), kVar.d(), kVar2.c(), kVar2.d(), fC, fD, kVar3.c(), kVar3.d());
    }

    private static id.b h(id.b bVar, n nVar, int i11) {
        return id.k.b().d(bVar, i11, i11, nVar);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f A[RETURN] */
    private float i(int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20 = 1;
        boolean z10 = Math.abs(i14 - i12) > Math.abs(i13 - i11);
        if (z10) {
            i16 = i11;
            i15 = i12;
            i18 = i13;
            i17 = i14;
        } else {
            i15 = i11;
            i16 = i12;
            i17 = i13;
            i18 = i14;
        }
        int iAbs = Math.abs(i17 - i15);
        int iAbs2 = Math.abs(i18 - i16);
        int i21 = 2;
        int i22 = (-iAbs) / 2;
        int i23 = i15 < i17 ? 1 : -1;
        int i24 = i16 < i18 ? 1 : -1;
        int i25 = i17 + i23;
        int i26 = i15;
        int i27 = i16;
        int i28 = 0;
        while (i26 != i25) {
            if ((i28 == i20 ? i20 : 0) == this.f33020a.g(z10 ? i27 : i26, z10 ? i26 : i27)) {
                if (i28 == 2) {
                    return jd.a.b(i26, i27, i15, i16);
                }
                i28++;
            }
            i22 += iAbs2;
            if (i22 > 0) {
                if (i27 == i18) {
                    i19 = 2;
                    if (i28 == i19) {
                        return jd.a.b(i25, i18, i15, i16);
                    }
                    return Float.NaN;
                }
                i27 += i24;
                i22 -= iAbs;
            }
            i26 += i23;
            i25 = i25;
            z10 = z10;
            i20 = 1;
            i21 = 2;
        }
        i25 = i25;
        i19 = i21;
        if (i28 == i19) {
            return jd.a.b(i25, i18, i15, i16);
        }
        return Float.NaN;
    }

    private float j(int i11, int i12, int i13, int i14) {
        float fN;
        float fK;
        float fI = i(i11, i12, i13, i14);
        int iN = i11 - (i13 - i11);
        int iK = 0;
        if (iN < 0) {
            fN = i11 / (i11 - iN);
            iN = 0;
        } else if (iN >= this.f33020a.n()) {
            fN = ((this.f33020a.n() - 1) - i11) / (iN - i11);
            iN = this.f33020a.n() - 1;
        } else {
            fN = 1.0f;
        }
        float f11 = i12;
        int i15 = (int) (f11 - ((i14 - i12) * fN));
        if (i15 < 0) {
            fK = f11 / (i12 - i15);
        } else if (i15 >= this.f33020a.k()) {
            fK = ((this.f33020a.k() - 1) - i12) / (i15 - i12);
            iK = this.f33020a.k() - 1;
        } else {
            iK = i15;
            fK = 1.0f;
        }
        return (fI + i(i11, i12, (int) (i11 + ((iN - i11) * fK)), iK)) - 1.0f;
    }

    protected final float a(k kVar, k kVar2, k kVar3) {
        return (b(kVar, kVar2) + b(kVar, kVar3)) / 2.0f;
    }

    public final f e(Map map) {
        this.f33021b = map == null ? null : (l) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        return g(new FinderPatternFinder(this.f33020a, this.f33021b).g(map));
    }

    protected final a f(float f11, int i11, int i12, float f12) throws NotFoundException {
        int i13 = (int) (f12 * f11);
        int iMax = Math.max(0, i11 - i13);
        int iMin = Math.min(this.f33020a.n() - 1, i11 + i13) - iMax;
        float f13 = 3.0f * f11;
        if (iMin < f13) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i12 - i13);
        int iMin2 = Math.min(this.f33020a.k() - 1, i12 + i13) - iMax2;
        if (iMin2 >= f13) {
            return new b(this.f33020a, iMax, iMax2, iMin, iMin2, f11, this.f33021b).c();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected final f g(e eVar) throws NotFoundException, FormatException {
        a aVarF;
        d dVarB = eVar.b();
        d dVarC = eVar.c();
        d dVarA = eVar.a();
        float fA = a(dVarB, dVarC, dVarA);
        if (fA < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iC = c(dVarB, dVarC, dVarA, fA);
        g gVarG = g.g(iC);
        int iE = gVarG.e() - 7;
        if (gVarG.d().length <= 0) {
            aVarF = null;
            break;
        }
        float fC = (dVarC.c() - dVarB.c()) + dVarA.c();
        float fD = (dVarC.d() - dVarB.d()) + dVarA.d();
        float f11 = 1.0f - (3.0f / iE);
        int iC2 = (int) (dVarB.c() + ((fC - dVarB.c()) * f11));
        int iD = (int) (dVarB.d() + (f11 * (fD - dVarB.d())));
        int i11 = 4;
        while (true) {
            if (i11 > 16) {
                aVarF = null;
                break;
            }
            try {
                aVarF = f(fA, iC2, iD, i11);
                break;
            } catch (NotFoundException unused) {
                i11 <<= 1;
            }
        }
        return new f(h(this.f33020a, d(dVarB, dVarC, dVarA, aVarF, iC), iC), aVarF == null ? new k[]{dVarA, dVarB, dVarC} : new k[]{dVarA, dVarB, dVarC, aVarF});
    }
}
