package androidx.media3.exoplayer.source;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends l0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f12871m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.media3.common.e0.c f12872n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.media3.common.e0.b f12873o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f12874p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private o f12875q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f12876r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f12877s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f12878t;

    private static final class a extends m {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Object f12879h = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Object f12880f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Object f12881g;

        private a(androidx.media3.common.e0 e0Var, Object obj, Object obj2) {
            super(e0Var);
            this.f12880f = obj;
            this.f12881g = obj2;
        }

        public static a u(androidx.media3.common.t tVar) {
            return new a(new b(tVar), androidx.media3.common.e0.c.f9941q, f12879h);
        }

        public static a v(androidx.media3.common.e0 e0Var, Object obj, Object obj2) {
            return new a(e0Var, obj, obj2);
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public int b(Object obj) {
            Object obj2;
            androidx.media3.common.e0 e0Var = this.f12856e;
            if (f12879h.equals(obj) && (obj2 = this.f12881g) != null) {
                obj = obj2;
            }
            return e0Var.b(obj);
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            this.f12856e.g(i11, bVar, z10);
            if (Objects.equals(bVar.f9935b, this.f12881g) && z10) {
                bVar.f9935b = f12879h;
            }
            return bVar;
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public Object m(int i11) {
            Object objM = this.f12856e.m(i11);
            return Objects.equals(objM, this.f12881g) ? f12879h : objM;
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
            this.f12856e.o(i11, cVar, j11);
            if (Objects.equals(cVar.f9951a, this.f12880f)) {
                cVar.f9951a = androidx.media3.common.e0.c.f9941q;
            }
            return cVar;
        }

        public a t(androidx.media3.common.e0 e0Var) {
            return new a(e0Var, this.f12880f, this.f12881g);
        }
    }

    public static final class b extends androidx.media3.common.e0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.media3.common.t f12882e;

        public b(androidx.media3.common.t tVar) {
            this.f12882e = tVar;
        }

        @Override // androidx.media3.common.e0
        public int b(Object obj) {
            return obj == a.f12879h ? 0 : -1;
        }

        @Override // androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            bVar.u(z10 ? 0 : null, z10 ? a.f12879h : null, 0, C.TIME_UNSET, 0L, androidx.media3.common.b.f9873g, true);
            return bVar;
        }

        @Override // androidx.media3.common.e0
        public int i() {
            return 1;
        }

        @Override // androidx.media3.common.e0
        public Object m(int i11) {
            return a.f12879h;
        }

        @Override // androidx.media3.common.e0
        public androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
            cVar.g(androidx.media3.common.e0.c.f9941q, this.f12882e, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            cVar.f9961k = true;
            return cVar;
        }

        @Override // androidx.media3.common.e0
        public int p() {
            return 1;
        }
    }

    public p(r rVar, boolean z10) {
        super(rVar);
        this.f12871m = z10 && rVar.b();
        this.f12872n = new androidx.media3.common.e0.c();
        this.f12873o = new androidx.media3.common.e0.b();
        androidx.media3.common.e0 e0VarC = rVar.c();
        if (e0VarC == null) {
            this.f12874p = a.u(rVar.a());
        } else {
            this.f12874p = a.v(e0VarC, null, null);
            this.f12878t = true;
        }
    }

    private Object U(Object obj) {
        return (this.f12874p.f12881g == null || !this.f12874p.f12881g.equals(obj)) ? obj : a.f12879h;
    }

    private Object V(Object obj) {
        return (this.f12874p.f12881g == null || !obj.equals(a.f12879h)) ? obj : this.f12874p.f12881g;
    }

    private boolean X(long j11) {
        o oVar = this.f12875q;
        int iB = this.f12874p.b(oVar.f12862a.f12883a);
        if (iB == -1) {
            return false;
        }
        long j12 = this.f12874p.f(iB, this.f12873o).f9937d;
        if (j12 != C.TIME_UNSET && j11 >= j12) {
            j11 = Math.max(0L, j12 - 1);
        }
        oVar.m(j11);
        return true;
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.a
    public void B() {
        this.f12877s = false;
        this.f12876r = false;
        super.B();
    }

    @Override // androidx.media3.exoplayer.source.l0
    protected r.b J(r.b bVar) {
        return bVar.a(U(bVar.f12883a));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:32:0x00be  */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // androidx.media3.exoplayer.source.l0
    protected void P(androidx.media3.common.e0 e0Var) {
        long j11;
        r.b bVarA;
        if (this.f12877s) {
            this.f12874p = this.f12874p.t(e0Var);
            o oVar = this.f12875q;
            if (oVar != null) {
                X(oVar.i());
            }
        } else {
            if (!e0Var.q()) {
                e0Var.n(0, this.f12872n);
                long jC = this.f12872n.c();
                Object obj = this.f12872n.f9951a;
                o oVar2 = this.f12875q;
                if (oVar2 != null) {
                    long j12 = oVar2.j();
                    this.f12874p.h(this.f12875q.f12862a.f12883a, this.f12873o);
                    long jO = this.f12873o.o() + j12;
                    if (jO != this.f12874p.n(0, this.f12872n).c()) {
                        j11 = jO;
                    } else {
                        j11 = jC;
                    }
                } else {
                    j11 = jC;
                }
                Pair pairJ = e0Var.j(this.f12872n, this.f12873o, 0, j11);
                Object obj2 = pairJ.first;
                long jLongValue = ((Long) pairJ.second).longValue();
                this.f12874p = this.f12878t ? this.f12874p.t(e0Var) : a.v(e0Var, obj, obj2);
                o oVar3 = this.f12875q;
                if (oVar3 != null && X(jLongValue)) {
                    r.b bVar = oVar3.f12862a;
                    bVarA = bVar.a(V(bVar.f12883a));
                }
                this.f12878t = true;
                this.f12877s = true;
                A(this.f12874p);
                if (bVarA != null) {
                    ((o) androidx.media3.common.util.a.e(this.f12875q)).h(bVarA);
                }
            }
            this.f12874p = this.f12878t ? this.f12874p.t(e0Var) : a.v(e0Var, androidx.media3.common.e0.c.f9941q, a.f12879h);
        }
        bVarA = null;
        this.f12878t = true;
        this.f12877s = true;
        A(this.f12874p);
        if (bVarA != null) {
            ((o) androidx.media3.common.util.a.e(this.f12875q)).h(bVarA);
        }
    }

    @Override // androidx.media3.exoplayer.source.l0
    public void S() {
        if (this.f12871m) {
            return;
        }
        this.f12876r = true;
        R();
    }

    @Override // androidx.media3.exoplayer.source.r
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public o g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        o oVar = new o(bVar, bVar2, j11);
        oVar.o(this.f12855k);
        if (this.f12877s) {
            oVar.h(bVar.a(V(bVar.f12883a)));
        } else {
            this.f12875q = oVar;
            if (!this.f12876r) {
                this.f12876r = true;
                R();
            }
        }
        return oVar;
    }

    public androidx.media3.common.e0 W() {
        return this.f12874p;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        ((o) qVar).n();
        if (qVar == this.f12875q) {
            this.f12875q = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.l0, androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public void l(androidx.media3.common.t tVar) {
        if (this.f12878t) {
            this.f12874p = this.f12874p.t(new g2.x(this.f12874p.f12856e, tVar));
        } else {
            this.f12874p = a.u(tVar);
        }
        this.f12855k.l(tVar);
    }

    @Override // androidx.media3.exoplayer.source.c, androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        return this.f12855k.q(tVar);
    }
}
