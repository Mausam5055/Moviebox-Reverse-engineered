package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
final class e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k3.b f25025a = new k3.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k3.d f25026b = new k3.d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e9.a f25027c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f25028d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f25029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25030f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f25031g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b2 f25032h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b2 f25033i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b2 f25034j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f25035k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Object f25036l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f25037m;

    public e2(e9.a aVar, Handler handler) {
        this.f25027c = aVar;
        this.f25028d = handler;
    }

    private static com.google.android.exoplayer2.source.o.b A(k3 k3Var, Object obj, long j11, long j12, k3.d dVar, k3.b bVar) {
        k3Var.l(obj, bVar);
        k3Var.r(bVar.f25156c, dVar);
        int iF = k3Var.f(obj);
        Object objE = obj;
        while (bVar.f25157d == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i11 = iF + 1;
            if (iF >= dVar.f25184p) {
                break;
            }
            k3Var.k(i11, bVar, true);
            objE = com.google.android.exoplayer2.util.a.e(bVar.f25155b);
            iF = i11;
        }
        k3Var.l(objE, bVar);
        int iH = bVar.h(j11);
        return iH == -1 ? new com.google.android.exoplayer2.source.o.b(objE, j12, bVar.g(j11)) : new com.google.android.exoplayer2.source.o.b(objE, iH, bVar.n(iH), j12);
    }

    private long C(k3 k3Var, Object obj) {
        int iF;
        int i11 = k3Var.l(obj, this.f25025a).f25156c;
        Object obj2 = this.f25036l;
        if (obj2 != null && (iF = k3Var.f(obj2)) != -1 && k3Var.j(iF, this.f25025a).f25156c == i11) {
            return this.f25037m;
        }
        for (b2 b2VarJ = this.f25032h; b2VarJ != null; b2VarJ = b2VarJ.j()) {
            if (b2VarJ.f24805b.equals(obj)) {
                return b2VarJ.f24809f.f24821a.f76117d;
            }
        }
        for (b2 b2VarJ2 = this.f25032h; b2VarJ2 != null; b2VarJ2 = b2VarJ2.j()) {
            int iF2 = k3Var.f(b2VarJ2.f24805b);
            if (iF2 != -1 && k3Var.j(iF2, this.f25025a).f25156c == i11) {
                return b2VarJ2.f24809f.f24821a.f76117d;
            }
        }
        long j11 = this.f25029e;
        this.f25029e = 1 + j11;
        if (this.f25032h == null) {
            this.f25036l = obj;
            this.f25037m = j11;
        }
        return j11;
    }

    private boolean E(k3 k3Var) {
        b2 b2VarJ = this.f25032h;
        if (b2VarJ == null) {
            return true;
        }
        int iF = k3Var.f(b2VarJ.f24805b);
        while (true) {
            iF = k3Var.h(iF, this.f25025a, this.f25026b, this.f25030f, this.f25031g);
            while (b2VarJ.j() != null && !b2VarJ.f24809f.f24827g) {
                b2VarJ = b2VarJ.j();
            }
            b2 b2VarJ2 = b2VarJ.j();
            if (iF == -1 || b2VarJ2 == null || k3Var.f(b2VarJ2.f24805b) != iF) {
                break;
            }
            b2VarJ = b2VarJ2;
        }
        boolean z10 = z(b2VarJ);
        b2VarJ.f24809f = r(k3Var, b2VarJ.f24809f);
        return !z10;
    }

    private boolean d(long j11, long j12) {
        return j11 == C.TIME_UNSET || j11 == j12;
    }

    private boolean e(c2 c2Var, c2 c2Var2) {
        return c2Var.f24822b == c2Var2.f24822b && c2Var.f24821a.equals(c2Var2.f24821a);
    }

    private c2 h(l2 l2Var) {
        return k(l2Var.f25243a, l2Var.f25244b, l2Var.f25245c, l2Var.f25260r);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e5  */
    private c2 i(k3 k3Var, b2 b2Var, long j11) {
        long j12;
        long j13;
        long j14;
        long j15;
        boolean z10;
        long j16;
        c2 c2Var = b2Var.f24809f;
        long jL = (b2Var.l() + c2Var.f24825e) - j11;
        if (!c2Var.f24827g) {
            com.google.android.exoplayer2.source.o.b bVar = c2Var.f24821a;
            k3Var.l(bVar.f76114a, this.f25025a);
            if (!bVar.b()) {
                int iN = this.f25025a.n(bVar.f76118e);
                boolean z11 = this.f25025a.t(bVar.f76118e) && this.f25025a.k(bVar.f76118e, iN) == 3;
                if (iN == this.f25025a.d(bVar.f76118e) || z11) {
                    return m(k3Var, bVar.f76114a, n(k3Var, bVar.f76114a, bVar.f76118e), c2Var.f24825e, bVar.f76117d);
                }
                return l(k3Var, bVar.f76114a, bVar.f76118e, iN, c2Var.f24825e, bVar.f76117d);
            }
            int i11 = bVar.f76115b;
            int iD = this.f25025a.d(i11);
            if (iD == -1) {
                return null;
            }
            int iO = this.f25025a.o(i11, bVar.f76116c);
            if (iO < iD) {
                return l(k3Var, bVar.f76114a, i11, iO, c2Var.f24823c, bVar.f76117d);
            }
            long jLongValue = c2Var.f24823c;
            if (jLongValue == C.TIME_UNSET) {
                k3.d dVar = this.f25026b;
                k3.b bVar2 = this.f25025a;
                Pair pairO = k3Var.o(dVar, bVar2, bVar2.f25156c, C.TIME_UNSET, Math.max(0L, jL));
                if (pairO == null) {
                    return null;
                }
                jLongValue = ((Long) pairO.second).longValue();
            }
            return m(k3Var, bVar.f76114a, Math.max(n(k3Var, bVar.f76114a, bVar.f76115b), jLongValue), c2Var.f24823c, bVar.f76117d);
        }
        int iH = k3Var.h(k3Var.f(c2Var.f24821a.f76114a), this.f25025a, this.f25026b, this.f25030f, this.f25031g);
        if (iH == -1) {
            return null;
        }
        int i12 = k3Var.k(iH, this.f25025a, true).f25156c;
        Object objE = com.google.android.exoplayer2.util.a.e(this.f25025a.f25155b);
        long j17 = c2Var.f24821a.f76117d;
        if (k3Var.r(i12, this.f25026b).f25183o == iH) {
            Pair pairO2 = k3Var.o(this.f25026b, this.f25025a, i12, C.TIME_UNSET, Math.max(0L, jL));
            if (pairO2 == null) {
                return null;
            }
            objE = pairO2.first;
            long jLongValue2 = ((Long) pairO2.second).longValue();
            b2 b2VarJ = b2Var.j();
            if (b2VarJ == null || !b2VarJ.f24805b.equals(objE)) {
                j16 = this.f25029e;
                this.f25029e = 1 + j16;
            } else {
                j16 = b2VarJ.f24809f.f24821a.f76117d;
            }
            j12 = jLongValue2;
            j13 = -9223372036854775807L;
            j17 = j16;
        } else {
            j12 = 0;
            j13 = 0;
        }
        com.google.android.exoplayer2.source.o.b bVarA = A(k3Var, objE, j12, j17, this.f25026b, this.f25025a);
        if (j13 == C.TIME_UNSET || c2Var.f24823c == C.TIME_UNSET) {
            j14 = j12;
            j15 = j13;
        } else {
            if (k3Var.l(c2Var.f24821a.f76114a, this.f25025a).f() > 0) {
                k3.b bVar3 = this.f25025a;
                z10 = bVar3.t(bVar3.r());
            }
            if (bVarA.b() && z10) {
                j15 = c2Var.f24823c;
                j14 = j12;
            } else {
                if (z10) {
                    j14 = c2Var.f24823c;
                } else {
                    j14 = j12;
                }
                j15 = j13;
            }
        }
        return k(k3Var, bVarA, j15, j14);
    }

    private c2 k(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar, long j11, long j12) {
        k3Var.l(bVar.f76114a, this.f25025a);
        return bVar.b() ? l(k3Var, bVar.f76114a, bVar.f76115b, bVar.f76116c, j11, bVar.f76117d) : m(k3Var, bVar.f76114a, j12, j11, bVar.f76117d);
    }

    private c2 l(k3 k3Var, Object obj, int i11, int i12, long j11, long j12) {
        com.google.android.exoplayer2.source.o.b bVar = new com.google.android.exoplayer2.source.o.b(obj, i11, i12, j12);
        long jE = k3Var.l(bVar.f76114a, this.f25025a).e(bVar.f76115b, bVar.f76116c);
        long j13 = i12 == this.f25025a.n(i11) ? this.f25025a.j() : 0L;
        return new c2(bVar, (jE == C.TIME_UNSET || j13 < jE) ? j13 : Math.max(0L, jE - 1), j11, C.TIME_UNSET, jE, this.f25025a.t(bVar.f76115b), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    private c2 m(k3 k3Var, Object obj, long j11, long j12, long j13) {
        boolean z10;
        long j14;
        long jI;
        long j15;
        long jMax = j11;
        k3Var.l(obj, this.f25025a);
        int iG = this.f25025a.g(jMax);
        int i11 = 1;
        if (iG == -1) {
            if (this.f25025a.f() > 0) {
                k3.b bVar = this.f25025a;
                if (bVar.t(bVar.r())) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
        } else if (this.f25025a.t(iG)) {
            long jI2 = this.f25025a.i(iG);
            k3.b bVar2 = this.f25025a;
            if (jI2 == bVar2.f25157d && bVar2.s(iG)) {
                z10 = true;
                iG = -1;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        com.google.android.exoplayer2.source.o.b bVar3 = new com.google.android.exoplayer2.source.o.b(obj, j13, iG);
        boolean zS = s(bVar3);
        boolean zU = u(k3Var, bVar3);
        boolean zT = t(k3Var, bVar3, zS);
        boolean z11 = iG != -1 && this.f25025a.t(iG);
        if (iG == -1) {
            if (z10) {
                jI = this.f25025a.f25157d;
            } else {
                j14 = -9223372036854775807L;
            }
            if (j14 != C.TIME_UNSET || j14 == Long.MIN_VALUE) {
                j15 = this.f25025a.f25157d;
            } else {
                j15 = j14;
            }
            if (j15 != C.TIME_UNSET && jMax >= j15) {
                if (!zT && z10) {
                    i11 = 0;
                }
                jMax = Math.max(0L, j15 - ((long) i11));
            }
            return new c2(bVar3, jMax, j12, j14, j15, z11, zS, zU, zT);
        }
        jI = this.f25025a.i(iG);
        j14 = jI;
        if (j14 != C.TIME_UNSET) {
            j15 = this.f25025a.f25157d;
        } else {
            j15 = this.f25025a.f25157d;
        }
        if (j15 != C.TIME_UNSET) {
            if (!zT) {
                i11 = 0;
            }
            jMax = Math.max(0L, j15 - ((long) i11));
        }
        return new c2(bVar3, jMax, j12, j14, j15, z11, zS, zU, zT);
    }

    private long n(k3 k3Var, Object obj, int i11) {
        k3Var.l(obj, this.f25025a);
        long jI = this.f25025a.i(i11);
        return jI == Long.MIN_VALUE ? this.f25025a.f25157d : jI + this.f25025a.l(i11);
    }

    private boolean s(com.google.android.exoplayer2.source.o.b bVar) {
        return !bVar.b() && bVar.f76118e == -1;
    }

    private boolean t(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar, boolean z10) {
        int iF = k3Var.f(bVar.f76114a);
        return !k3Var.r(k3Var.j(iF, this.f25025a).f25156c, this.f25026b).f25177i && k3Var.v(iF, this.f25025a, this.f25026b, this.f25030f, this.f25031g) && z10;
    }

    private boolean u(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar) {
        if (s(bVar)) {
            return k3Var.r(k3Var.l(bVar.f76114a, this.f25025a).f25156c, this.f25026b).f25184p == k3Var.f(bVar.f76114a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(ImmutableList.a aVar, com.google.android.exoplayer2.source.o.b bVar) {
        this.f25027c.A(aVar.e(), bVar);
    }

    private void x() {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (b2 b2VarJ = this.f25032h; b2VarJ != null; b2VarJ = b2VarJ.j()) {
            aVarBuilder.a(b2VarJ.f24809f.f24821a);
        }
        b2 b2Var = this.f25033i;
        final com.google.android.exoplayer2.source.o.b bVar = b2Var == null ? null : b2Var.f24809f.f24821a;
        this.f25028d.post(new Runnable() { // from class: com.google.android.exoplayer2.d2
            @Override // java.lang.Runnable
            public final void run() {
                this.f24839a.w(aVarBuilder, bVar);
            }
        });
    }

    public com.google.android.exoplayer2.source.o.b B(k3 k3Var, Object obj, long j11) {
        long jC = C(k3Var, obj);
        k3Var.l(obj, this.f25025a);
        k3Var.r(this.f25025a.f25156c, this.f25026b);
        boolean z10 = false;
        for (int iF = k3Var.f(obj); iF >= this.f25026b.f25183o; iF--) {
            k3Var.k(iF, this.f25025a, true);
            boolean z11 = this.f25025a.f() > 0;
            z10 |= z11;
            k3.b bVar = this.f25025a;
            if (bVar.h(bVar.f25157d) != -1) {
                obj = com.google.android.exoplayer2.util.a.e(this.f25025a.f25155b);
            }
            if (z10 && (!z11 || this.f25025a.f25157d != 0)) {
                break;
            }
        }
        return A(k3Var, obj, j11, jC, this.f25026b, this.f25025a);
    }

    public boolean D() {
        b2 b2Var = this.f25034j;
        return b2Var == null || (!b2Var.f24809f.f24829i && b2Var.q() && this.f25034j.f24809f.f24825e != C.TIME_UNSET && this.f25035k < 100);
    }

    public boolean F(k3 k3Var, long j11, long j12) {
        c2 c2VarR;
        b2 b2VarJ = this.f25032h;
        b2 b2Var = null;
        while (b2VarJ != null) {
            c2 c2Var = b2VarJ.f24809f;
            if (b2Var != null) {
                c2 c2VarI = i(k3Var, b2Var, j11);
                if (c2VarI != null && e(c2Var, c2VarI)) {
                    c2VarR = c2VarI;
                }
                return !z(b2Var);
            }
            c2VarR = r(k3Var, c2Var);
            b2VarJ.f24809f = c2VarR.a(c2Var.f24823c);
            if (!d(c2Var.f24825e, c2VarR.f24825e)) {
                b2VarJ.A();
                long j13 = c2VarR.f24825e;
                return (z(b2VarJ) || (b2VarJ == this.f25033i && !b2VarJ.f24809f.f24826f && ((j12 > Long.MIN_VALUE ? 1 : (j12 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j12 > ((j13 > C.TIME_UNSET ? 1 : (j13 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : b2VarJ.z(j13)) ? 1 : (j12 == ((j13 > C.TIME_UNSET ? 1 : (j13 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : b2VarJ.z(j13)) ? 0 : -1)) >= 0))) ? false : true;
            }
            b2Var = b2VarJ;
            b2VarJ = b2VarJ.j();
        }
        return true;
    }

    public boolean G(k3 k3Var, int i11) {
        this.f25030f = i11;
        return E(k3Var);
    }

    public boolean H(k3 k3Var, boolean z10) {
        this.f25031g = z10;
        return E(k3Var);
    }

    public b2 b() {
        b2 b2Var = this.f25032h;
        if (b2Var == null) {
            return null;
        }
        if (b2Var == this.f25033i) {
            this.f25033i = b2Var.j();
        }
        this.f25032h.t();
        int i11 = this.f25035k - 1;
        this.f25035k = i11;
        if (i11 == 0) {
            this.f25034j = null;
            b2 b2Var2 = this.f25032h;
            this.f25036l = b2Var2.f24805b;
            this.f25037m = b2Var2.f24809f.f24821a.f76117d;
        }
        this.f25032h = this.f25032h.j();
        x();
        return this.f25032h;
    }

    public b2 c() {
        b2 b2Var = this.f25033i;
        com.google.android.exoplayer2.util.a.g((b2Var == null || b2Var.j() == null) ? false : true);
        this.f25033i = this.f25033i.j();
        x();
        return this.f25033i;
    }

    public void f() {
        if (this.f25035k == 0) {
            return;
        }
        b2 b2VarJ = (b2) com.google.android.exoplayer2.util.a.i(this.f25032h);
        this.f25036l = b2VarJ.f24805b;
        this.f25037m = b2VarJ.f24809f.f24821a.f76117d;
        while (b2VarJ != null) {
            b2VarJ.t();
            b2VarJ = b2VarJ.j();
        }
        this.f25032h = null;
        this.f25034j = null;
        this.f25033i = null;
        this.f25035k = 0;
        x();
    }

    public b2 g(z2[] z2VarArr, la.q qVar, com.google.android.exoplayer2.upstream.b bVar, h2 h2Var, c2 c2Var, la.r rVar) {
        b2 b2Var = this.f25034j;
        b2 b2Var2 = new b2(z2VarArr, b2Var == null ? 1000000000000L : (b2Var.l() + this.f25034j.f24809f.f24825e) - c2Var.f24822b, qVar, bVar, h2Var, c2Var, rVar);
        b2 b2Var3 = this.f25034j;
        if (b2Var3 != null) {
            b2Var3.w(b2Var2);
        } else {
            this.f25032h = b2Var2;
            this.f25033i = b2Var2;
        }
        this.f25036l = null;
        this.f25034j = b2Var2;
        this.f25035k++;
        x();
        return b2Var2;
    }

    public b2 j() {
        return this.f25034j;
    }

    public c2 o(long j11, l2 l2Var) {
        b2 b2Var = this.f25034j;
        return b2Var == null ? h(l2Var) : i(l2Var.f25243a, b2Var, j11);
    }

    public b2 p() {
        return this.f25032h;
    }

    public b2 q() {
        return this.f25033i;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public c2 r(k3 k3Var, c2 c2Var) {
        long jM;
        long j11;
        int i11;
        boolean zT;
        int i12;
        com.google.android.exoplayer2.source.o.b bVar = c2Var.f24821a;
        boolean zS = s(bVar);
        boolean zU = u(k3Var, bVar);
        boolean zT2 = t(k3Var, bVar, zS);
        k3Var.l(c2Var.f24821a.f76114a, this.f25025a);
        long jI = (bVar.b() || (i12 = bVar.f76118e) == -1) ? -9223372036854775807L : this.f25025a.i(i12);
        if (!bVar.b()) {
            if (jI == C.TIME_UNSET || jI == Long.MIN_VALUE) {
                jM = this.f25025a.m();
            } else {
                j11 = jI;
            }
            if (bVar.b()) {
                zT = this.f25025a.t(bVar.f76115b);
            } else {
                i11 = bVar.f76118e;
                if (i11 == -1 && this.f25025a.t(i11)) {
                    zT = true;
                } else {
                    zT = false;
                }
            }
            return new c2(bVar, c2Var.f24822b, c2Var.f24823c, jI, j11, zT, zS, zU, zT2);
        }
        jM = this.f25025a.e(bVar.f76115b, bVar.f76116c);
        j11 = jM;
        if (bVar.b()) {
            zT = this.f25025a.t(bVar.f76115b);
        } else {
            i11 = bVar.f76118e;
            if (i11 == -1) {
                zT = false;
            } else {
                zT = false;
            }
        }
        return new c2(bVar, c2Var.f24822b, c2Var.f24823c, jI, j11, zT, zS, zU, zT2);
    }

    public boolean v(com.google.android.exoplayer2.source.n nVar) {
        b2 b2Var = this.f25034j;
        return b2Var != null && b2Var.f24804a == nVar;
    }

    public void y(long j11) {
        b2 b2Var = this.f25034j;
        if (b2Var != null) {
            b2Var.s(j11);
        }
    }

    public boolean z(b2 b2Var) {
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.g(b2Var != null);
        if (b2Var.equals(this.f25034j)) {
            return false;
        }
        this.f25034j = b2Var;
        while (b2Var.j() != null) {
            b2Var = b2Var.j();
            if (b2Var == this.f25033i) {
                this.f25033i = this.f25032h;
                z10 = true;
            }
            b2Var.t();
            this.f25035k--;
        }
        this.f25034j.w(null);
        x();
        return z10;
    }
}
