package com.google.android.exoplayer2.source;

import android.os.Looper;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;

/* JADX INFO: loaded from: classes3.dex */
public final class x extends com.google.android.exoplayer2.source.a implements w.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v1 f26688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v1.h f26689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k.a f26690j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final r.a f26691k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f26692l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f26693m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f26694n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26695o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f26696p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26697q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f26698r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private k0 f26699s;

    class a extends j {
        a(x xVar, k3 k3Var) {
            super(k3Var);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            super.k(i11, bVar, z10);
            bVar.f25159f = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            super.s(i11, dVar, j11);
            dVar.f25180l = true;
            return dVar;
        }
    }

    public static final class b implements o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.k.a f26700a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private r.a f26701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.android.exoplayer2.drm.x f26702c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.z f26703d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f26704e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f26705f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Object f26706g;

        public b(com.google.android.exoplayer2.upstream.k.a aVar) {
            this(aVar, new g9.i());
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2) {
            this(aVar, aVar2, new com.google.android.exoplayer2.drm.j(), new com.google.android.exoplayer2.upstream.v(), 1048576);
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.upstream.z zVar, int i11) {
            this.f26700a = aVar;
            this.f26701b = aVar2;
            this.f26702c = xVar;
            this.f26703d = zVar;
            this.f26704e = i11;
        }

        public b(com.google.android.exoplayer2.upstream.k.a aVar, final g9.r rVar) {
            this(aVar, new r.a() { // from class: t9.r
                @Override // com.google.android.exoplayer2.source.r.a
                public final com.google.android.exoplayer2.source.r a(u1 u1Var) {
                    return com.google.android.exoplayer2.source.x.b.f(rVar, u1Var);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ r f(g9.r rVar, u1 u1Var) {
            return new t9.a(rVar);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public x a(v1 v1Var) {
            com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
            v1.h hVar = v1Var.f27709b;
            boolean z10 = false;
            boolean z11 = hVar.f27779h == null && this.f26706g != null;
            if (hVar.f27776e == null && this.f26705f != null) {
                z10 = true;
            }
            if (z11 && z10) {
                v1Var = v1Var.b().h(this.f26706g).b(this.f26705f).a();
            } else if (z11) {
                v1Var = v1Var.b().h(this.f26706g).a();
            } else if (z10) {
                v1Var = v1Var.b().b(this.f26705f).a();
            }
            v1 v1Var2 = v1Var;
            return new x(v1Var2, this.f26700a, this.f26701b, this.f26702c.a(v1Var2), this.f26703d, this.f26704e, null);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public b b(com.google.android.exoplayer2.drm.x xVar) {
            this.f26702c = (com.google.android.exoplayer2.drm.x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b c(com.google.android.exoplayer2.upstream.z zVar) {
            this.f26703d = (com.google.android.exoplayer2.upstream.z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }
    }

    private x(v1 v1Var, com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.z zVar, int i11) {
        this.f26689i = (v1.h) com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        this.f26688h = v1Var;
        this.f26690j = aVar;
        this.f26691k = aVar2;
        this.f26692l = uVar;
        this.f26693m = zVar;
        this.f26694n = i11;
        this.f26695o = true;
        this.f26696p = C.TIME_UNSET;
    }

    /* synthetic */ x(v1 v1Var, com.google.android.exoplayer2.upstream.k.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.z zVar, int i11, a aVar3) {
        this(v1Var, aVar, aVar2, uVar, zVar, i11);
    }

    private void E() {
        k3 uVar = new t9.u(this.f26696p, this.f26697q, false, this.f26698r, null, this.f26688h);
        if (this.f26695o) {
            uVar = new a(this, uVar);
        }
        C(uVar);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.f26699s = k0Var;
        this.f26692l.prepare();
        this.f26692l.b((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), z());
        E();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
        this.f26692l.release();
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f26688h;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.f26690j.createDataSource();
        k0 k0Var = this.f26699s;
        if (k0Var != null) {
            kVarCreateDataSource.e(k0Var);
        }
        return new w(this.f26689i.f27772a, kVarCreateDataSource, this.f26691k.a(z()), this.f26692l, t(bVar), this.f26693m, v(bVar), this, bVar2, this.f26689i.f27776e, this.f26694n);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        ((w) nVar).S();
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.w.b
    public void p(long j11, boolean z10, boolean z11) {
        if (j11 == C.TIME_UNSET) {
            j11 = this.f26696p;
        }
        if (!this.f26695o && this.f26696p == j11 && this.f26697q == z10 && this.f26698r == z11) {
            return;
        }
        this.f26696p = j11;
        this.f26697q = z10;
        this.f26698r = z11;
        this.f26695o = false;
        E();
    }
}
