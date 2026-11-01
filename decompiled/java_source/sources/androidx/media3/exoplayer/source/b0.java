package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.source.b0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;
import l2.m0;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 extends androidx.media3.exoplayer.source.a implements a0.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f12692h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v.a f12693i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f12694j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f12695k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f12696l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f12697m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.media3.common.r f12698n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.common.base.q f12699o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f12700p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f12701q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f12702r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f12703s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private w1.n f12704t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.media3.common.t f12705u;

    class a extends m {
        a(androidx.media3.common.e0 e0Var) {
            super(e0Var);
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
            super.g(i11, bVar, z10);
            bVar.f9939f = true;
            return bVar;
        }

        @Override // androidx.media3.exoplayer.source.m, androidx.media3.common.e0
        public androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
            super.o(i11, cVar, j11);
            cVar.f9961k = true;
            return cVar;
        }
    }

    public static final class b implements r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.datasource.a.InterfaceC0091a f12707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private v.a f12708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.exoplayer.drm.w f12709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.m f12710d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f12711e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.common.base.q f12712f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f12713g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private androidx.media3.common.r f12714h;

        public b(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this(interfaceC0091a, new l2.m());
        }

        public b(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, v.a aVar) {
            this(interfaceC0091a, aVar, new androidx.media3.exoplayer.drm.j(), new androidx.media3.exoplayer.upstream.k(), 1048576);
        }

        public b(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, v.a aVar, androidx.media3.exoplayer.drm.w wVar, androidx.media3.exoplayer.upstream.m mVar, int i11) {
            this.f12707a = interfaceC0091a;
            this.f12708b = aVar;
            this.f12709c = wVar;
            this.f12710d = mVar;
            this.f12711e = i11;
        }

        public b(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, final l2.x xVar) {
            this(interfaceC0091a, new v.a() { // from class: g2.t
                @Override // androidx.media3.exoplayer.source.v.a
                public final androidx.media3.exoplayer.source.v a(f4 f4Var) {
                    return b0.b.j(xVar, f4Var);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ v j(l2.x xVar, f4 f4Var) {
            return new g2.b(xVar);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a a(i3.s.a aVar) {
            return g2.l.c(this, aVar);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a b(int i11) {
            return g2.l.b(this, i11);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        public /* synthetic */ r.a c(boolean z10) {
            return g2.l.a(this, z10);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b0 d(androidx.media3.common.t tVar) {
            androidx.media3.common.util.a.e(tVar.f10211b);
            return new b0(tVar, this.f12707a, this.f12708b, this.f12709c.a(tVar), this.f12710d, this.f12711e, this.f12713g, this.f12714h, this.f12712f, null);
        }

        b i(int i11, androidx.media3.common.r rVar) {
            this.f12713g = i11;
            this.f12714h = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public b e(androidx.media3.exoplayer.drm.w wVar) {
            this.f12709c = (androidx.media3.exoplayer.drm.w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public b f(androidx.media3.exoplayer.upstream.m mVar) {
            this.f12710d = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }
    }

    private b0(androidx.media3.common.t tVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, v.a aVar, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, int i11, int i12, androidx.media3.common.r rVar, com.google.common.base.q qVar) {
        this.f12705u = tVar;
        this.f12692h = interfaceC0091a;
        this.f12693i = aVar;
        this.f12694j = tVar2;
        this.f12695k = mVar;
        this.f12696l = i11;
        this.f12698n = rVar;
        this.f12697m = i12;
        this.f12700p = true;
        this.f12701q = C.TIME_UNSET;
        this.f12699o = qVar;
    }

    /* synthetic */ b0(androidx.media3.common.t tVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, v.a aVar, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, int i11, int i12, androidx.media3.common.r rVar, com.google.common.base.q qVar, a aVar2) {
        this(tVar, interfaceC0091a, aVar, tVar2, mVar, i11, i12, rVar, qVar);
    }

    private androidx.media3.common.t.h C() {
        return (androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f10211b);
    }

    private void D() {
        androidx.media3.common.e0 wVar = new g2.w(this.f12701q, this.f12702r, false, this.f12703s, null, a());
        if (this.f12700p) {
            wVar = new a(wVar);
        }
        A(wVar);
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
        this.f12694j.release();
    }

    @Override // androidx.media3.exoplayer.source.r
    public synchronized androidx.media3.common.t a() {
        return this.f12705u;
    }

    @Override // androidx.media3.exoplayer.source.r
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        androidx.media3.datasource.a aVarCreateDataSource = this.f12692h.createDataSource();
        w1.n nVar = this.f12704t;
        if (nVar != null) {
            aVarCreateDataSource.c(nVar);
        }
        androidx.media3.common.t.h hVarC = C();
        Uri uri = hVarC.f10303a;
        v vVarA = this.f12693i.a(x());
        androidx.media3.exoplayer.drm.t tVar = this.f12694j;
        androidx.media3.exoplayer.drm.r.a aVarS = s(bVar);
        androidx.media3.exoplayer.upstream.m mVar = this.f12695k;
        s.a aVarU = u(bVar);
        String str = hVarC.f10307e;
        int i11 = this.f12696l;
        int i12 = this.f12697m;
        androidx.media3.common.r rVar = this.f12698n;
        long jR0 = a1.R0(hVarC.f10311i);
        com.google.common.base.q qVar = this.f12699o;
        return new a0(uri, aVarCreateDataSource, vVarA, tVar, aVarS, mVar, aVarU, this, bVar2, str, i11, i12, rVar, jR0, qVar != null ? (androidx.media3.exoplayer.util.c) qVar.get() : null);
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(q qVar) {
        ((a0) qVar).W();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public synchronized void l(androidx.media3.common.t tVar) {
        this.f12705u = tVar;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.a0.c
    public void p(long j11, m0 m0Var, boolean z10) {
        if (j11 == C.TIME_UNSET) {
            j11 = this.f12701q;
        }
        boolean zIsSeekable = m0Var.isSeekable();
        if (!this.f12700p && this.f12701q == j11 && this.f12702r == zIsSeekable && this.f12703s == z10) {
            return;
        }
        this.f12701q = j11;
        this.f12702r = zIsSeekable;
        this.f12703s = z10;
        this.f12700p = false;
        D();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVarC = C();
        androidx.media3.common.t.h hVar = tVar.f10211b;
        return hVar != null && hVar.f10303a.equals(hVarC.f10303a) && hVar.f10311i == hVarC.f10311i && Objects.equals(hVar.f10307e, hVarC.f10307e);
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        this.f12704t = nVar;
        this.f12694j.c((Looper) androidx.media3.common.util.a.e(Looper.myLooper()), x());
        this.f12694j.prepare();
        D();
    }
}
