package com.google.android.exoplayer2.source.hls;

import android.os.Looper;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class HlsMediaSource extends com.google.android.exoplayer2.source.a implements HlsPlaylistTracker.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final g f25910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v1.h f25911i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f f25912j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final t9.d f25913k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final u f25914l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final z f25915m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f25916n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f25917o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f25918p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final HlsPlaylistTracker f25919q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final long f25920r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final v1 f25921s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private v1.g f25922t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k0 f25923u;

    public static final class Factory implements com.google.android.exoplayer2.source.o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f25924a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private g f25925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private y9.e f25926c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private HlsPlaylistTracker.a f25927d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private t9.d f25928e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private x f25929f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private z f25930g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f25931h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f25932i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f25933j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f25934k;

        public Factory(f fVar) {
            this.f25924a = (f) com.google.android.exoplayer2.util.a.e(fVar);
            this.f25929f = new com.google.android.exoplayer2.drm.j();
            this.f25926c = new y9.a();
            this.f25927d = com.google.android.exoplayer2.source.hls.playlist.a.f26093p;
            this.f25925b = g.f25978a;
            this.f25930g = new v();
            this.f25928e = new t9.e();
            this.f25932i = 1;
            this.f25934k = C.TIME_UNSET;
            this.f25931h = true;
        }

        public Factory(com.google.android.exoplayer2.upstream.k.a aVar) {
            this(new c(aVar));
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public HlsMediaSource a(v1 v1Var) {
            com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
            y9.e cVar = this.f25926c;
            List list = v1Var.f27709b.f27775d;
            if (!list.isEmpty()) {
                cVar = new y9.c(cVar, list);
            }
            f fVar = this.f25924a;
            g gVar = this.f25925b;
            t9.d dVar = this.f25928e;
            u uVarA = this.f25929f.a(v1Var);
            z zVar = this.f25930g;
            return new HlsMediaSource(v1Var, fVar, gVar, dVar, uVarA, zVar, this.f25927d.a(this.f25924a, zVar, cVar), this.f25934k, this.f25931h, this.f25932i, this.f25933j);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Factory b(x xVar) {
            if (xVar == null) {
                xVar = new com.google.android.exoplayer2.drm.j();
            }
            this.f25929f = xVar;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Factory c(z zVar) {
            if (zVar == null) {
                zVar = new v();
            }
            this.f25930g = zVar;
            return this;
        }
    }

    static {
        m1.a("goog.exo.hls");
    }

    private HlsMediaSource(v1 v1Var, f fVar, g gVar, t9.d dVar, u uVar, z zVar, HlsPlaylistTracker hlsPlaylistTracker, long j11, boolean z10, int i11, boolean z11) {
        this.f25911i = (v1.h) com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        this.f25921s = v1Var;
        this.f25922t = v1Var.f27711d;
        this.f25912j = fVar;
        this.f25910h = gVar;
        this.f25913k = dVar;
        this.f25914l = uVar;
        this.f25915m = zVar;
        this.f25919q = hlsPlaylistTracker;
        this.f25920r = j11;
        this.f25916n = z10;
        this.f25917o = i11;
        this.f25918p = z11;
    }

    private t9.u E(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11, long j12, h hVar) {
        long jB = dVar.f26127h - this.f25919q.b();
        long j13 = dVar.f26134o ? jB + dVar.f26140u : -9223372036854775807L;
        long jI = I(dVar);
        long j14 = this.f25922t.f27762a;
        L(dVar, p0.r(j14 != C.TIME_UNSET ? p0.B0(j14) : K(dVar, jI), jI, dVar.f26140u + jI));
        return new t9.u(j11, j12, C.TIME_UNSET, j13, dVar.f26140u, jB, J(dVar, jI), true, !dVar.f26134o, dVar.f26123d == 2 && dVar.f26125f, hVar, this.f25921s, this.f25922t);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    private t9.u F(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11, long j12, h hVar) {
        long j13;
        if (dVar.f26124e == C.TIME_UNSET || dVar.f26137r.isEmpty()) {
            j13 = 0;
        } else if (dVar.f26126g) {
            j13 = dVar.f26124e;
        } else {
            long j14 = dVar.f26124e;
            if (j14 == dVar.f26140u) {
                j13 = dVar.f26124e;
            } else {
                j13 = H(dVar.f26137r, j14).f26153e;
            }
        }
        long j15 = j13;
        long j16 = dVar.f26140u;
        return new t9.u(j11, j12, C.TIME_UNSET, j16, j16, 0L, j15, true, false, true, hVar, this.f25921s, null);
    }

    private static com.google.android.exoplayer2.source.hls.playlist.d.b G(List list, long j11) {
        com.google.android.exoplayer2.source.hls.playlist.d.b bVar = null;
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.google.android.exoplayer2.source.hls.playlist.d.b bVar2 = (com.google.android.exoplayer2.source.hls.playlist.d.b) list.get(i11);
            long j12 = bVar2.f26153e;
            if (j12 > j11 || !bVar2.f26142l) {
                if (j12 > j11) {
                    break;
                }
            } else {
                bVar = bVar2;
            }
        }
        return bVar;
    }

    private static com.google.android.exoplayer2.source.hls.playlist.d.C0373d H(List list, long j11) {
        return (com.google.android.exoplayer2.source.hls.playlist.d.C0373d) list.get(p0.g(list, Long.valueOf(j11), true, true));
    }

    private long I(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        if (dVar.f26135p) {
            return p0.B0(p0.b0(this.f25920r)) - dVar.d();
        }
        return 0L;
    }

    private long J(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11) {
        long jB0 = dVar.f26124e;
        if (jB0 == C.TIME_UNSET) {
            jB0 = (dVar.f26140u + j11) - p0.B0(this.f25922t.f27762a);
        }
        if (dVar.f26126g) {
            return jB0;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.b bVarG = G(dVar.f26138s, jB0);
        if (bVarG != null) {
            return bVarG.f26153e;
        }
        if (dVar.f26137r.isEmpty()) {
            return 0L;
        }
        com.google.android.exoplayer2.source.hls.playlist.d.C0373d c0373dH = H(dVar.f26137r, jB0);
        com.google.android.exoplayer2.source.hls.playlist.d.b bVarG2 = G(c0373dH.f26148m, jB0);
        return bVarG2 != null ? bVarG2.f26153e : c0373dH.f26153e;
    }

    private static long K(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11) {
        long j12;
        com.google.android.exoplayer2.source.hls.playlist.d.f fVar = dVar.f26141v;
        long j13 = dVar.f26124e;
        if (j13 != C.TIME_UNSET) {
            j12 = dVar.f26140u - j13;
        } else {
            long j14 = fVar.f26163d;
            if (j14 == C.TIME_UNSET || dVar.f26133n == C.TIME_UNSET) {
                long j15 = fVar.f26162c;
                j12 = j15 != C.TIME_UNSET ? j15 : dVar.f26132m * 3;
            } else {
                j12 = j14;
            }
        }
        return j12 + j11;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    private void L(com.google.android.exoplayer2.source.hls.playlist.d dVar, long j11) {
        boolean z10;
        v1.g gVar = this.f25921s.f27711d;
        if (gVar.f27765d == -3.4028235E38f && gVar.f27766e == -3.4028235E38f) {
            com.google.android.exoplayer2.source.hls.playlist.d.f fVar = dVar.f26141v;
            if (fVar.f26162c == C.TIME_UNSET && fVar.f26163d == C.TIME_UNSET) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.f25922t = new v1.g.a().k(p0.e1(j11)).j(z10 ? 1.0f : this.f25922t.f27765d).h(z10 ? 1.0f : this.f25922t.f27766e).f();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.f25923u = k0Var;
        this.f25914l.prepare();
        this.f25914l.b((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), z());
        this.f25919q.o(this.f25911i.f27772a, v(null), this);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
        this.f25919q.stop();
        this.f25914l.release();
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f25921s;
    }

    @Override // com.google.android.exoplayer2.source.o
    public com.google.android.exoplayer2.source.n d(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        com.google.android.exoplayer2.source.p.a aVarV = v(bVar);
        return new k(this.f25910h, this.f25919q, this.f25912j, this.f25923u, this.f25914l, t(bVar), this.f25915m, aVarV, bVar2, this.f25913k, this.f25916n, this.f25917o, this.f25918p, z());
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.c
    public void f(com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        long jE1 = dVar.f26135p ? p0.e1(dVar.f26127h) : -9223372036854775807L;
        int i11 = dVar.f26123d;
        long j11 = (i11 == 2 || i11 == 1) ? jE1 : -9223372036854775807L;
        h hVar = new h((com.google.android.exoplayer2.source.hls.playlist.e) com.google.android.exoplayer2.util.a.e(this.f25919q.c()), dVar);
        C(this.f25919q.f() ? E(dVar, j11, jE1, hVar) : F(dVar, j11, jE1, hVar));
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(com.google.android.exoplayer2.source.n nVar) {
        ((k) nVar).q();
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
        this.f25919q.h();
    }
}
