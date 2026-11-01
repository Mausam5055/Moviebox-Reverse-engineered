package androidx.media3.exoplayer.hls;

import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class HlsMediaSource extends androidx.media3.exoplayer.source.a implements HlsPlaylistTracker.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final g f11661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final f f11662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g2.e f11663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f11664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f11665l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f11666m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f11667n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f11668o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HlsPlaylistTracker f11669p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f11670q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f11671r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.media3.common.t.g f11672s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private w1.n f11673t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.media3.common.t f11674u;

    public static final class Factory implements androidx.media3.exoplayer.source.r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f11675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private g f11676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private i3.s.a f11677c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11678d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11679e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c2.e f11680f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private HlsPlaylistTracker.a f11681g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private g2.e f11682h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private w f11683i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.m f11684j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f11685k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f11686l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f11687m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f11688n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private long f11689o;

        public Factory(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this(new c(interfaceC0091a));
        }

        public Factory(f fVar) {
            this.f11675a = (f) androidx.media3.common.util.a.e(fVar);
            this.f11683i = new androidx.media3.exoplayer.drm.j();
            this.f11680f = new c2.a();
            this.f11681g = androidx.media3.exoplayer.hls.playlist.a.f11840p;
            this.f11684j = new androidx.media3.exoplayer.upstream.k();
            this.f11682h = new g2.f();
            this.f11686l = 1;
            this.f11688n = C.TIME_UNSET;
            this.f11685k = true;
            c(true);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public HlsMediaSource d(androidx.media3.common.t tVar) {
            androidx.media3.common.util.a.e(tVar.f10211b);
            if (this.f11676b == null) {
                this.f11676b = new d();
            }
            i3.s.a aVar = this.f11677c;
            if (aVar != null) {
                this.f11676b.a(aVar);
            }
            this.f11676b.c(this.f11678d);
            this.f11676b.b(this.f11679e);
            g gVar = this.f11676b;
            c2.e eVar = this.f11680f;
            List list = tVar.f10211b.f10306d;
            c2.e cVar = !list.isEmpty() ? new c2.c(eVar, list) : eVar;
            f fVar = this.f11675a;
            g2.e eVar2 = this.f11682h;
            androidx.media3.exoplayer.drm.t tVarA = this.f11683i.a(tVar);
            androidx.media3.exoplayer.upstream.m mVar = this.f11684j;
            return new HlsMediaSource(tVar, fVar, gVar, eVar2, null, tVarA, mVar, this.f11681g.a(this.f11675a, mVar, cVar, null), this.f11688n, this.f11685k, this.f11686l, this.f11687m, this.f11689o);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Factory c(boolean z10) {
            this.f11678d = z10;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Factory b(int i11) {
            this.f11679e = i11;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Factory e(w wVar) {
            this.f11683i = (w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Factory f(androidx.media3.exoplayer.upstream.m mVar) {
            this.f11684j = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public Factory a(i3.s.a aVar) {
            this.f11677c = aVar;
            return this;
        }
    }

    static {
        androidx.media3.common.u.a("media3.exoplayer.hls");
    }

    private HlsMediaSource(androidx.media3.common.t tVar, f fVar, g gVar, g2.e eVar, androidx.media3.exoplayer.upstream.f fVar2, androidx.media3.exoplayer.drm.t tVar2, androidx.media3.exoplayer.upstream.m mVar, HlsPlaylistTracker hlsPlaylistTracker, long j11, boolean z10, int i11, boolean z11, long j12) {
        this.f11674u = tVar;
        this.f11672s = tVar.f10213d;
        this.f11662i = fVar;
        this.f11661h = gVar;
        this.f11663j = eVar;
        this.f11664k = tVar2;
        this.f11665l = mVar;
        this.f11669p = hlsPlaylistTracker;
        this.f11670q = j11;
        this.f11666m = z10;
        this.f11667n = i11;
        this.f11668o = z11;
        this.f11671r = j12;
    }

    private g2.w C(androidx.media3.exoplayer.hls.playlist.c cVar, long j11, long j12, h hVar) {
        long jB = cVar.f11875h - this.f11669p.b();
        long j13 = cVar.f11882o ? jB + cVar.f11888u : -9223372036854775807L;
        long jG = G(cVar);
        long j14 = this.f11672s.f10285a;
        J(cVar, a1.q(j14 != C.TIME_UNSET ? a1.R0(j14) : I(cVar, jG), jG, cVar.f11888u + jG));
        return new g2.w(j11, j12, C.TIME_UNSET, j13, cVar.f11888u, jB, H(cVar, jG), true, !cVar.f11882o, cVar.f11871d == 2 && cVar.f11873f, hVar, a(), this.f11672s);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    private g2.w D(androidx.media3.exoplayer.hls.playlist.c cVar, long j11, long j12, h hVar) {
        long j13;
        if (cVar.f11872e == C.TIME_UNSET || cVar.f11885r.isEmpty()) {
            j13 = 0;
        } else if (cVar.f11874g) {
            j13 = cVar.f11872e;
        } else {
            long j14 = cVar.f11872e;
            if (j14 == cVar.f11888u) {
                j13 = cVar.f11872e;
            } else {
                j13 = F(cVar.f11885r, j14).f11920e;
            }
        }
        long j15 = j13;
        long j16 = cVar.f11888u;
        return new g2.w(j11, j12, C.TIME_UNSET, j16, j16, 0L, j15, true, false, true, hVar, a(), null);
    }

    private static androidx.media3.exoplayer.hls.playlist.c.d E(List list, long j11) {
        androidx.media3.exoplayer.hls.playlist.c.d dVar = null;
        for (int i11 = 0; i11 < list.size(); i11++) {
            androidx.media3.exoplayer.hls.playlist.c.d dVar2 = (androidx.media3.exoplayer.hls.playlist.c.d) list.get(i11);
            long j12 = dVar2.f11920e;
            if (j12 > j11 || !dVar2.f11909l) {
                if (j12 > j11) {
                    break;
                }
            } else {
                dVar = dVar2;
            }
        }
        return dVar;
    }

    private static androidx.media3.exoplayer.hls.playlist.c.f F(List list, long j11) {
        return (androidx.media3.exoplayer.hls.playlist.c.f) list.get(a1.f(list, Long.valueOf(j11), true, true));
    }

    private long G(androidx.media3.exoplayer.hls.playlist.c cVar) {
        if (cVar.f11883p) {
            return a1.R0(a1.h0(this.f11670q)) - cVar.d();
        }
        return 0L;
    }

    private long H(androidx.media3.exoplayer.hls.playlist.c cVar, long j11) {
        long jR0 = cVar.f11872e;
        if (jR0 == C.TIME_UNSET) {
            jR0 = (cVar.f11888u + j11) - a1.R0(this.f11672s.f10285a);
        }
        if (cVar.f11874g) {
            return jR0;
        }
        androidx.media3.exoplayer.hls.playlist.c.d dVarE = E(cVar.f11886s, jR0);
        if (dVarE != null) {
            return dVarE.f11920e;
        }
        if (cVar.f11885r.isEmpty()) {
            return 0L;
        }
        androidx.media3.exoplayer.hls.playlist.c.f fVarF = F(cVar.f11885r, jR0);
        androidx.media3.exoplayer.hls.playlist.c.d dVarE2 = E(fVarF.f11915m, jR0);
        return dVarE2 != null ? dVarE2.f11920e : fVarF.f11920e;
    }

    private static long I(androidx.media3.exoplayer.hls.playlist.c cVar, long j11) {
        long j12;
        androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11889v;
        long j13 = cVar.f11872e;
        if (j13 != C.TIME_UNSET) {
            j12 = cVar.f11888u - j13;
        } else {
            long j14 = hVar.f11930d;
            if (j14 == C.TIME_UNSET || cVar.f11881n == C.TIME_UNSET) {
                long j15 = hVar.f11929c;
                j12 = j15 != C.TIME_UNSET ? j15 : cVar.f11880m * 3;
            } else {
                j12 = j14;
            }
        }
        return j12 + j11;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a  */
    private void J(androidx.media3.exoplayer.hls.playlist.c cVar, long j11) {
        boolean z10;
        androidx.media3.common.t.g gVar = a().f10213d;
        if (gVar.f10288d == -3.4028235E38f && gVar.f10289e == -3.4028235E38f) {
            androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11889v;
            if (hVar.f11929c == C.TIME_UNSET && hVar.f11930d == C.TIME_UNSET) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f11672s = new androidx.media3.common.t.g.a().k(a1.y1(j11)).j(z10 ? 1.0f : this.f11672s.f10288d).h(z10 ? 1.0f : this.f11672s.f10289e).f();
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
        this.f11669p.stop();
        this.f11664k.release();
    }

    @Override // androidx.media3.exoplayer.source.r
    public synchronized androidx.media3.common.t a() {
        return this.f11674u;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.c
    public void f(androidx.media3.exoplayer.hls.playlist.c cVar) {
        long jY1 = cVar.f11883p ? a1.y1(cVar.f11875h) : -9223372036854775807L;
        int i11 = cVar.f11871d;
        long j11 = (i11 == 2 || i11 == 1) ? jY1 : -9223372036854775807L;
        h hVar = new h((androidx.media3.exoplayer.hls.playlist.d) androidx.media3.common.util.a.e(this.f11669p.c()), cVar);
        A(this.f11669p.f() ? C(cVar, j11, jY1, hVar) : D(cVar, j11, jY1, hVar));
    }

    @Override // androidx.media3.exoplayer.source.r
    public androidx.media3.exoplayer.source.q g(androidx.media3.exoplayer.source.r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        androidx.media3.exoplayer.source.s.a aVarU = u(bVar);
        return new l(this.f11661h, this.f11669p, this.f11662i, this.f11673t, null, this.f11664k, s(bVar), this.f11665l, aVarU, bVar2, this.f11663j, this.f11666m, this.f11667n, this.f11668o, x(), this.f11671r);
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(androidx.media3.exoplayer.source.q qVar) {
        ((l) qVar).u();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public synchronized void l(androidx.media3.common.t tVar) {
        this.f11674u = tVar;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
        this.f11669p.h();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(androidx.media3.common.t tVar) {
        androidx.media3.common.t tVarA = a();
        androidx.media3.common.t.h hVar = (androidx.media3.common.t.h) androidx.media3.common.util.a.e(tVarA.f10211b);
        androidx.media3.common.t.h hVar2 = tVar.f10211b;
        return hVar2 != null && hVar2.f10303a.equals(hVar.f10303a) && hVar2.f10306d.equals(hVar.f10306d) && Objects.equals(hVar2.f10305c, hVar.f10305c) && tVarA.f10213d.equals(tVar.f10213d);
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(w1.n nVar) {
        this.f11673t = nVar;
        this.f11664k.c((Looper) androidx.media3.common.util.a.e(Looper.myLooper()), x());
        this.f11664k.prepare();
        this.f11669p.j(((androidx.media3.common.t.h) androidx.media3.common.util.a.e(a().f10211b)).f10303a, u(null), this);
    }
}
