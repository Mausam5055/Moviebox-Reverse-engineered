package com.google.android.exoplayer2.source;

import android.util.Pair;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class m extends c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final o f26228k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f26229l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final k3.d f26230m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k3.b f26231n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f26232o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private l f26233p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26234q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f26235r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f26236s;

    private static final class a extends j {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Object f26237f = new Object();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f26238d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Object f26239e;

        private a(k3 k3Var, Object obj, Object obj2) {
            super(k3Var);
            this.f26238d = obj;
            this.f26239e = obj2;
        }

        public static a A(v1 v1Var) {
            return new a(new b(v1Var), k3.d.f25165r, f26237f);
        }

        public static a B(k3 k3Var, Object obj, Object obj2) {
            return new a(k3Var, obj, obj2);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public int f(Object obj) {
            Object obj2;
            k3 k3Var = this.f26213c;
            if (f26237f.equals(obj) && (obj2 = this.f26239e) != null) {
                obj = obj2;
            }
            return k3Var.f(obj);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            this.f26213c.k(i11, bVar, z10);
            if (p0.c(bVar.f25155b, this.f26239e) && z10) {
                bVar.f25155b = f26237f;
            }
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public Object q(int i11) {
            Object objQ = this.f26213c.q(i11);
            return p0.c(objQ, this.f26239e) ? f26237f : objQ;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            this.f26213c.s(i11, dVar, j11);
            if (p0.c(dVar.f25169a, this.f26238d)) {
                dVar.f25169a = k3.d.f25165r;
            }
            return dVar;
        }

        public a z(k3 k3Var) {
            return new a(k3Var, this.f26238d, this.f26239e);
        }
    }

    public static final class b extends k3 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final v1 f26240c;

        public b(v1 v1Var) {
            this.f26240c = v1Var;
        }

        @Override // com.google.android.exoplayer2.k3
        public int f(Object obj) {
            return obj == a.f26237f ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            bVar.w(z10 ? 0 : null, z10 ? a.f26237f : null, 0, C.TIME_UNSET, 0L, u9.c.f76689g, true);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.k3
        public int m() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.k3
        public Object q(int i11) {
            return a.f26237f;
        }

        @Override // com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            dVar.k(k3.d.f25165r, this.f26240c, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            dVar.f25180l = true;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.k3
        public int t() {
            return 1;
        }
    }

    public m(o oVar, boolean z10) {
        this.f26228k = oVar;
        this.f26229l = z10 && oVar.b();
        this.f26230m = new k3.d();
        this.f26231n = new k3.b();
        k3 k3VarC = oVar.c();
        if (k3VarC == null) {
            this.f26232o = a.A(oVar.a());
        } else {
            this.f26232o = a.B(k3VarC, null, null);
            this.f26236s = true;
        }
    }

    private Object M(Object obj) {
        return (this.f26232o.f26239e == null || !this.f26232o.f26239e.equals(obj)) ? obj : a.f26237f;
    }

    private Object N(Object obj) {
        return (this.f26232o.f26239e == null || !obj.equals(a.f26237f)) ? obj : this.f26232o.f26239e;
    }

    private void R(long j11) {
        l lVar = this.f26233p;
        int iF = this.f26232o.f(lVar.f26219a.f76114a);
        if (iF == -1) {
            return;
        }
        long j12 = this.f26232o.j(iF, this.f26231n).f25157d;
        if (j12 != C.TIME_UNSET && j11 >= j12) {
            j11 = Math.max(0L, j12 - 1);
        }
        lVar.l(j11);
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void B(k0 k0Var) {
        super.B(k0Var);
        if (this.f26229l) {
            return;
        }
        this.f26234q = true;
        K(null, this.f26228k);
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void D() {
        this.f26235r = false;
        this.f26234q = false;
        super.D();
    }

    @Override // com.google.android.exoplayer2.source.o
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public l d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        l lVar = new l(bVar, bVar2, j11);
        lVar.n(this.f26228k);
        if (this.f26235r) {
            lVar.c(bVar.c(N(bVar.f76114a)));
        } else {
            this.f26233p = lVar;
            if (!this.f26234q) {
                this.f26234q = true;
                K(null, this.f26228k);
            }
        }
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public o.b F(Void r11, o.b bVar) {
        return bVar.c(M(bVar.f76114a));
    }

    public k3 P() {
        return this.f26232o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.exoplayer2.source.c
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void I(Void r13, o oVar, k3 k3Var) {
        long j11;
        o.b bVarC;
        if (this.f26235r) {
            this.f26232o = this.f26232o.z(k3Var);
            l lVar = this.f26233p;
            if (lVar != null) {
                R(lVar.f());
            }
        } else {
            if (!k3Var.u()) {
                k3Var.r(0, this.f26230m);
                long jF = this.f26230m.f();
                Object obj = this.f26230m.f25169a;
                l lVar2 = this.f26233p;
                if (lVar2 != null) {
                    long jI = lVar2.i();
                    this.f26232o.l(this.f26233p.f26219a.f76114a, this.f26231n);
                    long jQ = this.f26231n.q() + jI;
                    if (jQ != this.f26232o.r(0, this.f26230m).f()) {
                        j11 = jQ;
                    } else {
                        j11 = jF;
                    }
                } else {
                    j11 = jF;
                }
                Pair pairN = k3Var.n(this.f26230m, this.f26231n, 0, j11);
                Object obj2 = pairN.first;
                long jLongValue = ((Long) pairN.second).longValue();
                this.f26232o = this.f26236s ? this.f26232o.z(k3Var) : a.B(k3Var, obj, obj2);
                l lVar3 = this.f26233p;
                if (lVar3 != null) {
                    R(jLongValue);
                    o.b bVar = lVar3.f26219a;
                    bVarC = bVar.c(N(bVar.f76114a));
                }
                this.f26236s = true;
                this.f26235r = true;
                C(this.f26232o);
                if (bVarC != null) {
                    ((l) com.google.android.exoplayer2.util.a.e(this.f26233p)).c(bVarC);
                }
            }
            this.f26232o = this.f26236s ? this.f26232o.z(k3Var) : a.B(k3Var, k3.d.f25165r, a.f26237f);
        }
        bVarC = null;
        this.f26236s = true;
        this.f26235r = true;
        C(this.f26232o);
        if (bVarC != null) {
            ((l) com.google.android.exoplayer2.util.a.e(this.f26233p)).c(bVarC);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f26228k.a();
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        ((l) nVar).m();
        if (nVar == this.f26233p) {
            this.f26233p = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }
}
