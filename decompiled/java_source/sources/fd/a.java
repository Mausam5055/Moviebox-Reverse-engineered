package fd;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.k;
import kd.c;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f62368g = {3808, 476, 2107, 1799};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.b f62369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f62370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f62371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f62372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62374f;

    /* JADX INFO: renamed from: fd.a$a, reason: collision with other inner class name */
    static final class C0756a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f62375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f62376b;

        C0756a(int i11, int i12) {
            this.f62375a = i11;
            this.f62376b = i12;
        }

        int a() {
            return this.f62375a;
        }

        int b() {
            return this.f62376b;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f62377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f62378b;

        b(int i11, int i12) {
            this.f62377a = i11;
            this.f62378b = i12;
        }

        int a() {
            return this.f62377a;
        }

        int b() {
            return this.f62378b;
        }

        k c() {
            return new k(this.f62377a, this.f62378b);
        }

        public String toString() {
            return "<" + this.f62377a + ' ' + this.f62378b + '>';
        }
    }

    public a(id.b bVar) {
        this.f62369a = bVar;
    }

    private static float b(k kVar, k kVar2) {
        return jd.a.a(kVar.c(), kVar.d(), kVar2.c(), kVar2.d());
    }

    private static float c(b bVar, b bVar2) {
        return jd.a.b(bVar.a(), bVar.b(), bVar2.a(), bVar2.b());
    }

    private static k[] d(k[] kVarArr, int i11, int i12) {
        float f11 = i12 / (i11 * 2.0f);
        float fC = kVarArr[0].c() - kVarArr[2].c();
        float fD = kVarArr[0].d() - kVarArr[2].d();
        float fC2 = (kVarArr[0].c() + kVarArr[2].c()) / 2.0f;
        float fD2 = (kVarArr[0].d() + kVarArr[2].d()) / 2.0f;
        float f12 = fC * f11;
        float f13 = fD * f11;
        k kVar = new k(fC2 + f12, fD2 + f13);
        k kVar2 = new k(fC2 - f12, fD2 - f13);
        float fC3 = kVarArr[1].c() - kVarArr[3].c();
        float fD3 = kVarArr[1].d() - kVarArr[3].d();
        float fC4 = (kVarArr[1].c() + kVarArr[3].c()) / 2.0f;
        float fD4 = (kVarArr[1].d() + kVarArr[3].d()) / 2.0f;
        float f14 = fC3 * f11;
        float f15 = f11 * fD3;
        return new k[]{kVar, new k(fC4 + f14, fD4 + f15), kVar2, new k(fC4 - f14, fD4 - f15)};
    }

    private int e(k[] kVarArr) throws NotFoundException {
        long j11;
        long j12;
        if (!o(kVarArr[0]) || !o(kVarArr[1]) || !o(kVarArr[2]) || !o(kVarArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = this.f62373e * 2;
        int[] iArr = {r(kVarArr[0], kVarArr[1], i11), r(kVarArr[1], kVarArr[2], i11), r(kVarArr[2], kVarArr[3], i11), r(kVarArr[3], kVarArr[0], i11)};
        this.f62374f = m(iArr, i11);
        long j13 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            int i13 = iArr[(this.f62374f + i12) % 4];
            if (this.f62370b) {
                j11 = j13 << 7;
                j12 = (i13 >> 1) & 127;
            } else {
                j11 = j13 << 10;
                j12 = ((i13 >> 2) & 992) + ((i13 >> 1) & 31);
            }
            j13 = j11 + j12;
        }
        C0756a c0756aH = h(j13, this.f62370b);
        int iA = c0756aH.a();
        if (this.f62370b) {
            this.f62371c = (iA >> 6) + 1;
            this.f62372d = (iA & 63) + 1;
        } else {
            this.f62371c = (iA >> 11) + 1;
            this.f62372d = (iA & 2047) + 1;
        }
        return c0756aH.b();
    }

    private k[] f(b bVar) throws NotFoundException {
        this.f62373e = 1;
        b bVar2 = bVar;
        b bVar3 = bVar2;
        b bVar4 = bVar3;
        b bVar5 = bVar4;
        boolean z10 = true;
        while (this.f62373e < 9) {
            b bVarJ = j(bVar2, z10, 1, -1);
            b bVarJ2 = j(bVar3, z10, 1, 1);
            b bVarJ3 = j(bVar4, z10, -1, 1);
            b bVarJ4 = j(bVar5, z10, -1, -1);
            if (this.f62373e > 2) {
                double dC = (c(bVarJ4, bVarJ) * this.f62373e) / (c(bVar5, bVar2) * (this.f62373e + 2));
                if (dC < 0.75d || dC > 1.25d || !p(bVarJ, bVarJ2, bVarJ3, bVarJ4)) {
                    break;
                }
            }
            z10 = !z10;
            this.f62373e++;
            bVar5 = bVarJ4;
            bVar2 = bVarJ;
            bVar3 = bVarJ2;
            bVar4 = bVarJ3;
        }
        int i11 = this.f62373e;
        if (i11 != 5 && i11 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.f62370b = i11 == 5;
        k[] kVarArr = {new k(bVar2.a() + 0.5f, bVar2.b() - 0.5f), new k(bVar3.a() + 0.5f, bVar3.b() + 0.5f), new k(bVar4.a() - 0.5f, bVar4.b() + 0.5f), new k(bVar5.a() - 0.5f, bVar5.b() - 0.5f)};
        int i12 = this.f62373e;
        return d(kVarArr, (i12 * 2) - 3, i12 * 2);
    }

    private int g(b bVar, b bVar2) {
        float fC = c(bVar, bVar2);
        if (fC == 0.0f) {
            return 0;
        }
        float fA = (bVar2.a() - bVar.a()) / fC;
        float fB = (bVar2.b() - bVar.b()) / fC;
        float fA2 = bVar.a();
        float fB2 = bVar.b();
        boolean zG = this.f62369a.g(bVar.a(), bVar.b());
        int iFloor = (int) Math.floor(fC);
        int i11 = 0;
        for (int i12 = 0; i12 < iFloor; i12++) {
            if (this.f62369a.g(jd.a.c(fA2), jd.a.c(fB2)) != zG) {
                i11++;
            }
            fA2 += fA;
            fB2 += fB;
        }
        float f11 = i11 / fC;
        if (f11 <= 0.1f || f11 >= 0.9f) {
            return (f11 <= 0.1f) == zG ? 1 : -1;
        }
        return 0;
    }

    private static C0756a h(long j11, boolean z10) throws NotFoundException {
        int i11;
        int i12;
        if (z10) {
            i11 = 7;
            i12 = 2;
        } else {
            i11 = 10;
            i12 = 4;
        }
        int i13 = i11 - i12;
        int[] iArr = new int[i11];
        for (int i14 = i11 - 1; i14 >= 0; i14--) {
            iArr[i14] = ((int) j11) & 15;
            j11 >>= 4;
        }
        try {
            int iA = new c(kd.a.f66764k).a(iArr, i13);
            int i15 = 0;
            for (int i16 = 0; i16 < i12; i16++) {
                i15 = (i15 << 4) + iArr[i16];
            }
            return new C0756a(i15, iA);
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private int i() {
        if (this.f62370b) {
            return (this.f62371c * 4) + 11;
        }
        int i11 = this.f62371c;
        return (i11 * 4) + ((((i11 * 2) + 6) / 15) * 2) + 15;
    }

    private b j(b bVar, boolean z10, int i11, int i12) {
        int iA = bVar.a() + i11;
        int iB = bVar.b();
        while (true) {
            iB += i12;
            if (!n(iA, iB) || this.f62369a.g(iA, iB) != z10) {
                break;
            }
            iA += i11;
        }
        int i13 = iA - i11;
        int i14 = iB - i12;
        while (n(i13, i14) && this.f62369a.g(i13, i14) == z10) {
            i13 += i11;
        }
        int i15 = i13 - i11;
        while (n(i15, i14) && this.f62369a.g(i15, i14) == z10) {
            i14 += i12;
        }
        return new b(i15, i14 - i12);
    }

    private b k() {
        k kVarC;
        k kVar;
        k kVar2;
        k kVar3;
        k kVarC2;
        k kVarC3;
        k kVarC4;
        k kVarC5;
        try {
            k[] kVarArrC = new jd.b(this.f62369a).c();
            kVar2 = kVarArrC[0];
            kVar3 = kVarArrC[1];
            kVar = kVarArrC[2];
            kVarC = kVarArrC[3];
        } catch (NotFoundException unused) {
            int iN = this.f62369a.n() / 2;
            int iK = this.f62369a.k() / 2;
            int i11 = iN + 7;
            int i12 = iK - 7;
            k kVarC6 = j(new b(i11, i12), false, 1, -1).c();
            int i13 = iK + 7;
            k kVarC7 = j(new b(i11, i13), false, 1, 1).c();
            int i14 = iN - 7;
            k kVarC8 = j(new b(i14, i13), false, -1, 1).c();
            kVarC = j(new b(i14, i12), false, -1, -1).c();
            kVar = kVarC8;
            kVar2 = kVarC6;
            kVar3 = kVarC7;
        }
        int iC = jd.a.c((((kVar2.c() + kVarC.c()) + kVar3.c()) + kVar.c()) / 4.0f);
        int iC2 = jd.a.c((((kVar2.d() + kVarC.d()) + kVar3.d()) + kVar.d()) / 4.0f);
        try {
            k[] kVarArrC2 = new jd.b(this.f62369a, 15, iC, iC2).c();
            kVarC2 = kVarArrC2[0];
            kVarC3 = kVarArrC2[1];
            kVarC4 = kVarArrC2[2];
            kVarC5 = kVarArrC2[3];
        } catch (NotFoundException unused2) {
            int i15 = iC + 7;
            int i16 = iC2 - 7;
            kVarC2 = j(new b(i15, i16), false, 1, -1).c();
            int i17 = iC2 + 7;
            kVarC3 = j(new b(i15, i17), false, 1, 1).c();
            int i18 = iC - 7;
            kVarC4 = j(new b(i18, i17), false, -1, 1).c();
            kVarC5 = j(new b(i18, i16), false, -1, -1).c();
        }
        return new b(jd.a.c((((kVarC2.c() + kVarC5.c()) + kVarC3.c()) + kVarC4.c()) / 4.0f), jd.a.c((((kVarC2.d() + kVarC5.d()) + kVarC3.d()) + kVarC4.d()) / 4.0f));
    }

    private k[] l(k[] kVarArr) {
        return d(kVarArr, this.f62373e * 2, i());
    }

    private static int m(int[] iArr, int i11) throws NotFoundException {
        int i12 = 0;
        for (int i13 : iArr) {
            i12 = (i12 << 3) + ((i13 >> (i11 - 2)) << 1) + (i13 & 1);
        }
        int i14 = ((i12 & 1) << 11) + (i12 >> 1);
        for (int i15 = 0; i15 < 4; i15++) {
            if (Integer.bitCount(f62368g[i15] ^ i14) <= 2) {
                return i15;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private boolean n(int i11, int i12) {
        return i11 >= 0 && i11 < this.f62369a.n() && i12 >= 0 && i12 < this.f62369a.k();
    }

    private boolean o(k kVar) {
        return n(jd.a.c(kVar.c()), jd.a.c(kVar.d()));
    }

    private boolean p(b bVar, b bVar2, b bVar3, b bVar4) {
        b bVar5 = new b(Math.max(0, bVar.a() - 3), Math.min(this.f62369a.k() - 1, bVar.b() + 3));
        b bVar6 = new b(Math.max(0, bVar2.a() - 3), Math.max(0, bVar2.b() - 3));
        b bVar7 = new b(Math.min(this.f62369a.n() - 1, bVar3.a() + 3), Math.max(0, Math.min(this.f62369a.k() - 1, bVar3.b() - 3)));
        b bVar8 = new b(Math.min(this.f62369a.n() - 1, bVar4.a() + 3), Math.min(this.f62369a.k() - 1, bVar4.b() + 3));
        int iG = g(bVar8, bVar5);
        return iG != 0 && g(bVar5, bVar6) == iG && g(bVar6, bVar7) == iG && g(bVar7, bVar8) == iG;
    }

    private id.b q(id.b bVar, k kVar, k kVar2, k kVar3, k kVar4) {
        id.k kVarB = id.k.b();
        int i11 = i();
        float f11 = i11 / 2.0f;
        int i12 = this.f62373e;
        float f12 = f11 - i12;
        float f13 = f11 + i12;
        return kVarB.c(bVar, i11, i11, f12, f12, f13, f12, f13, f13, f12, f13, kVar.c(), kVar.d(), kVar2.c(), kVar2.d(), kVar3.c(), kVar3.d(), kVar4.c(), kVar4.d());
    }

    private int r(k kVar, k kVar2, int i11) {
        float fB = b(kVar, kVar2);
        float f11 = fB / i11;
        float fC = kVar.c();
        float fD = kVar.d();
        float fC2 = ((kVar2.c() - kVar.c()) * f11) / fB;
        float fD2 = (f11 * (kVar2.d() - kVar.d())) / fB;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            float f12 = i13;
            if (this.f62369a.g(jd.a.c((f12 * fC2) + fC), jd.a.c((f12 * fD2) + fD))) {
                i12 |= 1 << ((i11 - i13) - 1);
            }
        }
        return i12;
    }

    public ed.a a(boolean z10) throws NotFoundException {
        k[] kVarArrF = f(k());
        if (z10) {
            k kVar = kVarArrF[0];
            kVarArrF[0] = kVarArrF[2];
            kVarArrF[2] = kVar;
        }
        int iE = e(kVarArrF);
        id.b bVar = this.f62369a;
        int i11 = this.f62374f;
        return new ed.a(q(bVar, kVarArrF[i11 % 4], kVarArrF[(i11 + 1) % 4], kVarArrF[(i11 + 2) % 4], kVarArrF[(i11 + 3) % 4]), l(kVarArrF), this.f62370b, this.f62372d, this.f62371c, iE);
    }
}
