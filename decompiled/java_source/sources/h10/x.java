package h10;

import org.mvel2.optimizers.OptimizationNotSupported;

/* JADX INFO: loaded from: classes7.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final g f64237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f64238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f64240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a[] f64242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f64244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64245i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f64246j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64247k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a[] f64248l;

    private static class a extends w {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final int f64249h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        a f64250i;

        a(int i11, int i12, long j11, int i13) {
            super(i11, i12, null, null, null, j11);
            this.f64249h = i13;
        }

        a(int i11, int i12, String str, int i13) {
            super(i11, i12, null, null, str, 0L);
            this.f64249h = i13;
        }

        a(int i11, int i12, String str, long j11, int i13) {
            super(i11, i12, null, null, str, j11);
            this.f64249h = i13;
        }

        a(int i11, int i12, String str, String str2, int i13) {
            super(i11, i12, null, str, str2, 0L);
            this.f64249h = i13;
        }

        a(int i11, int i12, String str, String str2, String str3, long j11, int i13) {
            super(i11, i12, str, str2, str3, j11);
            this.f64249h = i13;
        }
    }

    x(g gVar) {
        this.f64237a = gVar;
        this.f64238b = null;
        this.f64242f = new a[256];
        this.f64243g = 1;
        this.f64244h = new d();
    }

    x(g gVar, e eVar) {
        this.f64237a = gVar;
        this.f64238b = eVar;
        byte[] bArr = eVar.f64069a;
        int iF = eVar.f(1) - 1;
        int i11 = eVar.f64075g - iF;
        this.f64243g = eVar.g();
        d dVar = new d(i11);
        this.f64244h = dVar;
        dVar.h(bArr, iF, i11);
        this.f64242f = new a[this.f64243g * 2];
        char[] cArr = new char[eVar.h()];
        boolean z10 = false;
        int i12 = 1;
        while (i12 < this.f64243g) {
            int iF2 = eVar.f(i12);
            byte b11 = bArr[iF2 - 1];
            switch (b11) {
                case 1:
                    E(i12, eVar.J(i12, cArr));
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                    n(i12, b11, eVar.t(iF2));
                    break;
                case 5:
                case 6:
                    r(i12, b11, eVar.v(iF2));
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    G(i12, b11, eVar.G(iF2, cArr));
                    break;
                case 9:
                case 10:
                case 11:
                    int iF3 = eVar.f(eVar.H(iF2 + 2));
                    t(i12, b11, eVar.m(iF2, cArr), eVar.G(iF3, cArr), eVar.G(iF3 + 2, cArr));
                    break;
                case 12:
                    A(i12, eVar.G(iF2, cArr), eVar.G(iF2 + 2, cArr));
                    break;
                case 15:
                    int iF4 = eVar.f(eVar.H(iF2 + 1));
                    int iF5 = eVar.f(eVar.H(iF4 + 2));
                    v(i12, eVar.l(iF2), eVar.m(iF4, cArr), eVar.G(iF5, cArr), eVar.G(iF5 + 2, cArr));
                    break;
                case 17:
                case 18:
                    int iF6 = eVar.f(eVar.H(iF2 + 2));
                    i(b11, i12, eVar.G(iF6, cArr), eVar.G(iF6 + 2, cArr), eVar.H(iF2));
                    z10 = true;
                    break;
            }
            i12 += (b11 == 5 || b11 == 6) ? 2 : 1;
        }
        if (z10) {
            M(eVar, cArr);
        }
    }

    private void A(int i11, String str, String str2) {
        a(new a(i11, 12, str, str2, Y(12, str, str2)));
    }

    private void E(int i11, String str) {
        a(new a(i11, 1, str, W(1, str)));
    }

    private w F(int i11, String str) {
        int iW = W(i11, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == i11 && aVarN.f64249h == iW && aVarN.f64234e.equals(str)) {
                return aVarN;
            }
        }
        this.f64244h.e(i11, D(str));
        int i12 = this.f64243g;
        this.f64243g = i12 + 1;
        return c0(new a(i12, i11, str, iW));
    }

    private void G(int i11, int i12, String str) {
        a(new a(i11, i12, str, W(i12, str)));
    }

    private int J(a aVar) {
        if (this.f64248l == null) {
            this.f64248l = new a[16];
        }
        int i11 = this.f64247k;
        a[] aVarArr = this.f64248l;
        if (i11 == aVarArr.length) {
            a[] aVarArr2 = new a[aVarArr.length * 2];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, aVarArr.length);
            this.f64248l = aVarArr2;
        }
        a[] aVarArr3 = this.f64248l;
        int i12 = this.f64247k;
        this.f64247k = i12 + 1;
        aVarArr3[i12] = aVar;
        return c0(aVar).f64230a;
    }

    private void M(e eVar, char[] cArr) {
        byte[] bArr = eVar.f64069a;
        int iE = eVar.e();
        for (int iH = eVar.H(iE - 2); iH > 0; iH--) {
            if ("BootstrapMethods".equals(eVar.G(iE, cArr))) {
                this.f64245i = eVar.H(iE + 6);
                break;
            }
            iE += eVar.t(iE + 2) + 6;
        }
        if (this.f64245i > 0) {
            int i11 = iE + 8;
            int iT = eVar.t(iE + 2) - 2;
            d dVar = new d(iT);
            this.f64246j = dVar;
            dVar.h(bArr, i11, iT);
            int i12 = i11;
            for (int i13 = 0; i13 < this.f64245i; i13++) {
                int i14 = i12 - i11;
                int iH2 = eVar.H(i12);
                int iH3 = eVar.H(i12 + 2);
                i12 += 4;
                int iHashCode = eVar.o(iH2, cArr).hashCode();
                while (true) {
                    int i15 = iH3 - 1;
                    if (iH3 > 0) {
                        int iH4 = eVar.H(i12);
                        i12 += 2;
                        iHashCode ^= eVar.o(iH4, cArr).hashCode();
                        iH3 = i15;
                    }
                }
                a(new a(i13, 64, i14, iHashCode & Integer.MAX_VALUE));
            }
        }
    }

    private a N(int i11) {
        a[] aVarArr = this.f64242f;
        return aVarArr[i11 % aVarArr.length];
    }

    private static int U(int i11, int i12) {
        return (i11 + i12) & Integer.MAX_VALUE;
    }

    private static int V(int i11, long j11) {
        return (i11 + ((int) j11) + ((int) (j11 >>> 32))) & Integer.MAX_VALUE;
    }

    private static int W(int i11, String str) {
        return (i11 + str.hashCode()) & Integer.MAX_VALUE;
    }

    private static int X(int i11, String str, int i12) {
        return (i11 + str.hashCode() + i12) & Integer.MAX_VALUE;
    }

    private static int Y(int i11, String str, String str2) {
        return (i11 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
    }

    private static int Z(int i11, String str, String str2, int i12) {
        return (i11 + (str.hashCode() * str2.hashCode() * (i12 + 1))) & Integer.MAX_VALUE;
    }

    private void a(a aVar) {
        this.f64241e++;
        int i11 = aVar.f64249h;
        a[] aVarArr = this.f64242f;
        int length = i11 % aVarArr.length;
        aVar.f64250i = aVarArr[length];
        aVarArr[length] = aVar;
    }

    private static int a0(int i11, String str, String str2, String str3) {
        return (i11 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
    }

    private w b(int i11, int i12, int i13) {
        byte[] bArr = this.f64246j.f64067a;
        for (a aVarN = N(i13); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 64 && aVarN.f64249h == i13) {
                int i14 = (int) aVarN.f64235f;
                int i15 = 0;
                while (true) {
                    if (i15 >= i12) {
                        this.f64246j.f64068b = i11;
                        return aVarN;
                    }
                    if (bArr[i11 + i15] != bArr[i14 + i15]) {
                        break;
                    }
                    i15++;
                }
            }
        }
        int i16 = this.f64245i;
        this.f64245i = i16 + 1;
        return c0(new a(i16, 64, i11, i13));
    }

    private static int b0(int i11, String str, String str2, String str3, int i12) {
        return (i11 + (str.hashCode() * str2.hashCode() * str3.hashCode() * i12)) & Integer.MAX_VALUE;
    }

    private a c0(a aVar) {
        int i11 = this.f64241e;
        a[] aVarArr = this.f64242f;
        if (i11 > (aVarArr.length * 3) / 4) {
            int length = aVarArr.length;
            int i12 = (length * 2) + 1;
            a[] aVarArr2 = new a[i12];
            for (int i13 = length - 1; i13 >= 0; i13--) {
                a aVar2 = this.f64242f[i13];
                while (aVar2 != null) {
                    int i14 = aVar2.f64249h % i12;
                    a aVar3 = aVar2.f64250i;
                    aVar2.f64250i = aVarArr2[i14];
                    aVarArr2[i14] = aVar2;
                    aVar2 = aVar3;
                }
            }
            this.f64242f = aVarArr2;
        }
        this.f64241e++;
        int i15 = aVar.f64249h;
        a[] aVarArr3 = this.f64242f;
        int length2 = i15 % aVarArr3.length;
        aVar.f64250i = aVarArr3[length2];
        aVarArr3[length2] = aVar;
        return aVar;
    }

    private w h(int i11, String str, String str2, int i12) {
        int iZ = Z(i11, str, str2, i12);
        for (a aVarN = N(iZ); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == i11 && aVarN.f64249h == iZ && aVarN.f64235f == i12 && aVarN.f64233d.equals(str) && aVarN.f64234e.equals(str2)) {
                return aVarN;
            }
        }
        this.f64244h.f(i11, i12, z(str, str2));
        int i13 = this.f64243g;
        this.f64243g = i13 + 1;
        return c0(new a(i13, i11, null, str, str2, i12, iZ));
    }

    private void i(int i11, int i12, String str, String str2, int i13) {
        a(new a(i12, i11, null, str, str2, i13, Z(i11, str, str2, i13)));
    }

    private w m(int i11, int i12) {
        int iU = U(i11, i12);
        for (a aVarN = N(iU); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == i11 && aVarN.f64249h == iU && aVarN.f64235f == i12) {
                return aVarN;
            }
        }
        this.f64244h.g(i11).i(i12);
        int i13 = this.f64243g;
        this.f64243g = i13 + 1;
        return c0(new a(i13, i11, i12, iU));
    }

    private void n(int i11, int i12, int i13) {
        a(new a(i11, i12, i13, U(i12, i13)));
    }

    private w q(int i11, long j11) {
        int iV = V(i11, j11);
        for (a aVarN = N(iV); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == i11 && aVarN.f64249h == iV && aVarN.f64235f == j11) {
                return aVarN;
            }
        }
        int i12 = this.f64243g;
        this.f64244h.g(i11).j(j11);
        this.f64243g += 2;
        return c0(new a(i12, i11, j11, iV));
    }

    private void r(int i11, int i12, long j11) {
        a(new a(i11, i12, j11, V(i12, j11)));
    }

    private a s(int i11, String str, String str2, String str3) {
        int iA0 = a0(i11, str, str2, str3);
        for (a aVarN = N(iA0); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == i11 && aVarN.f64249h == iA0 && aVarN.f64232c.equals(str) && aVarN.f64233d.equals(str2) && aVarN.f64234e.equals(str3)) {
                return aVarN;
            }
        }
        this.f64244h.f(i11, e(str).f64230a, z(str2, str3));
        int i12 = this.f64243g;
        this.f64243g = i12 + 1;
        return c0(new a(i12, i11, str, str2, str3, 0L, iA0));
    }

    private void t(int i11, int i12, String str, String str2, String str3) {
        a(new a(i11, i12, str, str2, str3, 0L, a0(i12, str, str2, str3)));
    }

    private void v(int i11, int i12, String str, String str2, String str3) {
        a(new a(i11, 15, str, str2, str3, i12, b0(15, str, str2, str3, i12)));
    }

    w B(String str) {
        return F(20, str);
    }

    w C(String str) {
        return F(8, str);
    }

    int D(String str) {
        int iW = W(1, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 1 && aVarN.f64249h == iW && aVarN.f64234e.equals(str)) {
                return aVarN.f64230a;
            }
        }
        this.f64244h.g(1).l(str);
        int i11 = this.f64243g;
        this.f64243g = i11 + 1;
        return c0(new a(i11, 1, str, iW)).f64230a;
    }

    int H(int i11, int i12) {
        long j11 = ((long) i11) | (((long) i12) << 32);
        int iU = U(130, i11 + i12);
        for (a aVarN = N(iU); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 130 && aVarN.f64249h == iU && aVarN.f64235f == j11) {
                return aVarN.f64236g;
            }
        }
        a[] aVarArr = this.f64248l;
        int I = I(this.f64237a.p(aVarArr[i11].f64234e, aVarArr[i12].f64234e));
        c0(new a(this.f64247k, 130, j11, iU)).f64236g = I;
        return I;
    }

    int I(String str) {
        int iW = W(128, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 128 && aVarN.f64249h == iW && aVarN.f64234e.equals(str)) {
                return aVarN.f64230a;
            }
        }
        return J(new a(this.f64247k, 128, str, iW));
    }

    int K(String str, int i11) {
        int iX = X(129, str, i11);
        for (a aVarN = N(iX); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 129 && aVarN.f64249h == iX && aVarN.f64235f == i11 && aVarN.f64234e.equals(str)) {
                return aVarN.f64230a;
            }
        }
        return J(new a(this.f64247k, 129, str, i11, iX));
    }

    int L() {
        if (this.f64246j == null) {
            return 0;
        }
        D("BootstrapMethods");
        return this.f64246j.f64068b + 8;
    }

    String O() {
        return this.f64240d;
    }

    int P() {
        return this.f64243g;
    }

    int Q() {
        return this.f64244h.f64068b;
    }

    int R() {
        return this.f64239c;
    }

    e S() {
        return this.f64238b;
    }

    w T(int i11) {
        return this.f64248l[i11];
    }

    w c(o oVar, Object... objArr) {
        d dVar = this.f64246j;
        if (dVar == null) {
            dVar = new d();
            this.f64246j = dVar;
        }
        for (Object obj : objArr) {
            d(obj);
        }
        int i11 = dVar.f64068b;
        dVar.k(u(oVar.d(), oVar.c(), oVar.b(), oVar.a(), oVar.e()).f64230a);
        dVar.k(objArr.length);
        for (Object obj2 : objArr) {
            dVar.k(d(obj2).f64230a);
        }
        int i12 = dVar.f64068b - i11;
        int iHashCode = oVar.hashCode();
        for (Object obj3 : objArr) {
            iHashCode ^= obj3.hashCode();
        }
        return b(i11, i12, iHashCode & Integer.MAX_VALUE);
    }

    w d(Object obj) {
        if (obj instanceof Integer) {
            return l(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return l(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return l(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return l(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return l(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return k(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return p(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return f(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return C((String) obj);
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            int iL = yVar.l();
            if (iL == 10) {
                return e(yVar.g());
            }
            return iL == 11 ? w(yVar.e()) : e(yVar.e());
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return u(oVar.d(), oVar.c(), oVar.b(), oVar.a(), oVar.e());
        }
        if (!(obj instanceof h)) {
            throw new OptimizationNotSupported();
        }
        h hVar = (h) obj;
        return g(hVar.d(), hVar.c(), hVar.a(), hVar.b());
    }

    void d0(d dVar) {
        if (this.f64246j != null) {
            d dVarK = dVar.k(D("BootstrapMethods")).i(this.f64246j.f64068b + 2).k(this.f64245i);
            d dVar2 = this.f64246j;
            dVarK.h(dVar2.f64067a, 0, dVar2.f64068b);
        }
    }

    w e(String str) {
        return F(7, str);
    }

    void e0(d dVar) {
        d dVarK = dVar.k(this.f64243g);
        d dVar2 = this.f64244h;
        dVarK.h(dVar2.f64067a, 0, dVar2.f64068b);
    }

    w f(double d11) {
        return q(6, Double.doubleToRawLongBits(d11));
    }

    int f0(int i11, String str) {
        this.f64239c = i11;
        this.f64240d = str;
        return e(str).f64230a;
    }

    w g(String str, String str2, o oVar, Object... objArr) {
        return h(17, str, str2, c(oVar, objArr).f64230a);
    }

    w j(String str, String str2, String str3) {
        return s(9, str, str2, str3);
    }

    w k(float f11) {
        return m(4, Float.floatToRawIntBits(f11));
    }

    w l(int i11) {
        return m(3, i11);
    }

    w o(String str, String str2, o oVar, Object... objArr) {
        return h(18, str, str2, c(oVar, objArr).f64230a);
    }

    w p(long j11) {
        return q(5, j11);
    }

    w u(int i11, String str, String str2, String str3, boolean z10) {
        int iB0 = b0(15, str, str2, str3, i11);
        for (a aVarN = N(iB0); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 15 && aVarN.f64249h == iB0 && aVarN.f64235f == i11 && aVarN.f64232c.equals(str) && aVarN.f64233d.equals(str2) && aVarN.f64234e.equals(str3)) {
                return aVarN;
            }
        }
        if (i11 <= 4) {
            this.f64244h.d(15, i11, j(str, str2, str3).f64230a);
        } else {
            this.f64244h.d(15, i11, x(str, str2, str3, z10).f64230a);
        }
        int i12 = this.f64243g;
        this.f64243g = i12 + 1;
        return c0(new a(i12, 15, str, str2, str3, i11, iB0));
    }

    w w(String str) {
        return F(16, str);
    }

    w x(String str, String str2, String str3, boolean z10) {
        return s(z10 ? 11 : 10, str, str2, str3);
    }

    w y(String str) {
        return F(19, str);
    }

    int z(String str, String str2) {
        int iY = Y(12, str, str2);
        for (a aVarN = N(iY); aVarN != null; aVarN = aVarN.f64250i) {
            if (aVarN.f64231b == 12 && aVarN.f64249h == iY && aVarN.f64233d.equals(str) && aVarN.f64234e.equals(str2)) {
                return aVarN.f64230a;
            }
        }
        this.f64244h.f(12, D(str), D(str2));
        int i11 = this.f64243g;
        this.f64243g = i11 + 1;
        return c0(new a(i11, 12, str, str2, iY)).f64230a;
    }
}
