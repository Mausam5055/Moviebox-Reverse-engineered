package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.drm.j;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import t9.d;
import t9.e;
import t9.h;
import t9.i;

/* JADX INFO: loaded from: classes3.dex */
public final class SsMediaSource extends com.google.android.exoplayer2.source.a implements Loader.b {
    private Handler A;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f26526h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Uri f26527i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final v1.h f26528j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final v1 f26529k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final k.a f26530l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b.a f26531m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final d f26532n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final u f26533o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z f26534p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f26535q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final p.a f26536r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b0.a f26537s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ArrayList f26538t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k f26539u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Loader f26540v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private a0 f26541w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private k0 f26542x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f26543y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a f26544z;

    public static final class Factory implements o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b.a f26545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.a f26546b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f26547c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private x f26548d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private z f26549e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f26550f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private b0.a f26551g;

        public Factory(b.a aVar, k.a aVar2) {
            this.f26545a = (b.a) com.google.android.exoplayer2.util.a.e(aVar);
            this.f26546b = aVar2;
            this.f26548d = new j();
            this.f26549e = new v();
            this.f26550f = 30000L;
            this.f26547c = new e();
        }

        public Factory(k.a aVar) {
            this(new com.google.android.exoplayer2.source.smoothstreaming.a.C0376a(aVar), aVar);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public SsMediaSource a(v1 v1Var) {
            com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
            b0.a ssManifestParser = this.f26551g;
            if (ssManifestParser == null) {
                ssManifestParser = new SsManifestParser();
            }
            List list = v1Var.f27709b.f27775d;
            return new SsMediaSource(v1Var, null, this.f26546b, !list.isEmpty() ? new com.google.android.exoplayer2.offline.d(ssManifestParser, list) : ssManifestParser, this.f26545a, this.f26547c, this.f26548d.a(v1Var), this.f26549e, this.f26550f);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Factory b(x xVar) {
            if (xVar == null) {
                xVar = new j();
            }
            this.f26548d = xVar;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Factory c(z zVar) {
            if (zVar == null) {
                zVar = new v();
            }
            this.f26549e = zVar;
            return this;
        }
    }

    static {
        m1.a("goog.exo.smoothstreaming");
    }

    private SsMediaSource(v1 v1Var, com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, k.a aVar2, b0.a aVar3, b.a aVar4, d dVar, u uVar, z zVar, long j11) {
        com.google.android.exoplayer2.util.a.g(aVar == null || !aVar.f26612d);
        this.f26529k = v1Var;
        v1.h hVar = (v1.h) com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        this.f26528j = hVar;
        this.f26544z = aVar;
        this.f26527i = hVar.f27772a.equals(Uri.EMPTY) ? null : p0.B(hVar.f27772a);
        this.f26530l = aVar2;
        this.f26537s = aVar3;
        this.f26531m = aVar4;
        this.f26532n = dVar;
        this.f26533o = uVar;
        this.f26534p = zVar;
        this.f26535q = j11;
        this.f26536r = v(null);
        this.f26526h = aVar != null;
        this.f26538t = new ArrayList();
    }

    private void I() {
        t9.u uVar;
        for (int i11 = 0; i11 < this.f26538t.size(); i11++) {
            ((c) this.f26538t.get(i11)).l(this.f26544z);
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar : this.f26544z.f26614f) {
            if (bVar.f26630k > 0) {
                jMax2 = Math.min(jMax2, bVar.e(0));
                jMax = Math.max(jMax, bVar.e(bVar.f26630k - 1) + bVar.c(bVar.f26630k - 1));
            }
        }
        if (jMax2 == Long.MAX_VALUE) {
            long j11 = this.f26544z.f26612d ? -9223372036854775807L : 0L;
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar = this.f26544z;
            boolean z10 = aVar.f26612d;
            uVar = new t9.u(j11, 0L, 0L, 0L, true, z10, z10, aVar, this.f26529k);
        } else {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar2 = this.f26544z;
            if (aVar2.f26612d) {
                long j12 = aVar2.f26616h;
                if (j12 != C.TIME_UNSET && j12 > 0) {
                    jMax2 = Math.max(jMax2, jMax - j12);
                }
                long j13 = jMax2;
                long j14 = jMax - j13;
                long jB0 = j14 - p0.B0(this.f26535q);
                if (jB0 < 5000000) {
                    jB0 = Math.min(5000000L, j14 / 2);
                }
                uVar = new t9.u(C.TIME_UNSET, j14, j13, jB0, true, true, true, this.f26544z, this.f26529k);
            } else {
                long j15 = aVar2.f26615g;
                long j16 = j15 != C.TIME_UNSET ? j15 : jMax - jMax2;
                uVar = new t9.u(jMax2 + j16, j16, jMax2, 0L, true, false, false, this.f26544z, this.f26529k);
            }
        }
        C(uVar);
    }

    private void J() {
        if (this.f26544z.f26612d) {
            this.A.postDelayed(new Runnable() { // from class: aa.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f465a.K();
                }
            }, Math.max(0L, (this.f26543y + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (this.f26540v.h()) {
            return;
        }
        b0 b0Var = new b0(this.f26539u, this.f26527i, 4, this.f26537s);
        this.f26536r.z(new h(b0Var.f27271a, b0Var.f27272b, this.f26540v.m(b0Var, this, this.f26534p.a(b0Var.f27273c))), b0Var.f27273c);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.f26542x = k0Var;
        this.f26533o.prepare();
        this.f26533o.b(Looper.myLooper(), z());
        if (this.f26526h) {
            this.f26541w = new a0.a();
            I();
            return;
        }
        this.f26539u = this.f26530l.createDataSource();
        Loader loader = new Loader("SsMediaSource");
        this.f26540v = loader;
        this.f26541w = loader;
        this.A = p0.w();
        K();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
        this.f26544z = this.f26526h ? this.f26544z : null;
        this.f26539u = null;
        this.f26543y = 0L;
        Loader loader = this.f26540v;
        if (loader != null) {
            loader.k();
            this.f26540v = null;
        }
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.f26533o.release();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void j(b0 b0Var, long j11, long j12, boolean z10) {
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f26534p.b(b0Var.f27271a);
        this.f26536r.q(hVar, b0Var.f27273c);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void l(b0 b0Var, long j11, long j12) {
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f26534p.b(b0Var.f27271a);
        this.f26536r.t(hVar, b0Var.f27273c);
        this.f26544z = (com.google.android.exoplayer2.source.smoothstreaming.manifest.a) b0Var.c();
        this.f26543y = j11 - j12;
        I();
        J();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public Loader.c n(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        long jC = this.f26534p.c(new z.c(hVar, new i(b0Var.f27273c), iOException, i11));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f27247g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f26536r.x(hVar, b0Var.f27273c, iOException, !zC);
        if (!zC) {
            this.f26534p.b(b0Var.f27271a);
        }
        return cVarG;
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f26529k;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        p.a aVarV = v(bVar);
        c cVar = new c(this.f26544z, this.f26531m, this.f26542x, this.f26532n, this.f26533o, t(bVar), this.f26534p, aVarV, this.f26541w, bVar2);
        this.f26538t.add(cVar);
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        ((c) nVar).k();
        this.f26538t.remove(nVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
        this.f26541w.maybeThrowError();
    }
}
