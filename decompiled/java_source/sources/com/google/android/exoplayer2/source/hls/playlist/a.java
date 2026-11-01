package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.hls.f;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import t9.h;
import t9.i;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements HlsPlaylistTracker, Loader.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final HlsPlaylistTracker.a f26093p = new HlsPlaylistTracker.a() { // from class: y9.b
        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.a
        public final HlsPlaylistTracker a(f fVar, z zVar, e eVar) {
            return new com.google.android.exoplayer2.source.hls.playlist.a(fVar, zVar, eVar);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f26094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y9.e f26095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f26096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap f26097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CopyOnWriteArrayList f26098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final double f26099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p.a f26100g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Loader f26101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f26102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HlsPlaylistTracker.c f26103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f26104k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Uri f26105l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private d f26106m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f26107n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f26108o;

    private class b implements HlsPlaylistTracker.b {
        private b() {
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.b
        public void c() {
            a.this.f26098e.remove(this);
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.b
        public boolean f(Uri uri, z.c cVar, boolean z10) {
            c cVar2;
            if (a.this.f26106m == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List list = ((e) p0.j(a.this.f26104k)).f26167e;
                int i11 = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    c cVar3 = (c) a.this.f26097d.get(((e.b) list.get(i12)).f26180a);
                    if (cVar3 != null && jElapsedRealtime < cVar3.f26117h) {
                        i11++;
                    }
                }
                z.b bVarD = a.this.f26096c.d(new z.a(1, 0, a.this.f26104k.f26167e.size(), i11), cVar);
                if (bVarD != null && bVarD.f27540a == 2 && (cVar2 = (c) a.this.f26097d.get(uri)) != null) {
                    cVar2.h(bVarD.f27541b);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c implements Loader.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f26110a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Loader f26111b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final k f26112c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f26113d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f26114e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f26115f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f26116g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f26117h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f26118i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private IOException f26119j;

        public c(Uri uri) {
            this.f26110a = uri;
            this.f26112c = a.this.f26094a.a(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h(long j11) {
            this.f26117h = SystemClock.elapsedRealtime() + j11;
            return this.f26110a.equals(a.this.f26105l) && !a.this.L();
        }

        private Uri i() {
            d dVar = this.f26113d;
            if (dVar != null) {
                d.f fVar = dVar.f26141v;
                if (fVar.f26160a != C.TIME_UNSET || fVar.f26164e) {
                    Uri.Builder builderBuildUpon = this.f26110a.buildUpon();
                    d dVar2 = this.f26113d;
                    if (dVar2.f26141v.f26164e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(dVar2.f26130k + ((long) dVar2.f26137r.size())));
                        d dVar3 = this.f26113d;
                        if (dVar3.f26133n != C.TIME_UNSET) {
                            List list = dVar3.f26138s;
                            int size = list.size();
                            if (!list.isEmpty() && ((d.b) g3.g(list)).f26143m) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    d.f fVar2 = this.f26113d.f26141v;
                    if (fVar2.f26160a != C.TIME_UNSET) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", fVar2.f26161b ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.f26110a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(Uri uri) {
            this.f26118i = false;
            q(uri);
        }

        private void q(Uri uri) {
            b0 b0Var = new b0(this.f26112c, uri, 4, a.this.f26095b.b(a.this.f26104k, this.f26113d));
            a.this.f26100g.z(new h(b0Var.f27271a, b0Var.f27272b, this.f26111b.m(b0Var, this, a.this.f26096c.a(b0Var.f27273c))), b0Var.f27273c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r(final Uri uri) {
            this.f26117h = 0L;
            if (this.f26118i || this.f26111b.i() || this.f26111b.h()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.f26116g) {
                q(uri);
            } else {
                this.f26118i = true;
                a.this.f26102i.postDelayed(new Runnable() { // from class: com.google.android.exoplayer2.source.hls.playlist.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f26121a.o(uri);
                    }
                }, this.f26116g - jElapsedRealtime);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(d dVar, h hVar) {
            boolean z10;
            long j11;
            d dVar2 = this.f26113d;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f26114e = jElapsedRealtime;
            d dVarG = a.this.G(dVar2, dVar);
            this.f26113d = dVarG;
            IOException playlistStuckException = null;
            if (dVarG != dVar2) {
                this.f26119j = null;
                this.f26115f = jElapsedRealtime;
                a.this.R(this.f26110a, dVarG);
            } else if (!dVarG.f26134o) {
                long size = dVar.f26130k + ((long) dVar.f26137r.size());
                d dVar3 = this.f26113d;
                if (size < dVar3.f26130k) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.f26110a);
                    z10 = true;
                } else {
                    z10 = false;
                    if (jElapsedRealtime - this.f26115f > p0.e1(dVar3.f26132m) * a.this.f26099f) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.f26110a);
                    }
                }
                if (playlistStuckException != null) {
                    this.f26119j = playlistStuckException;
                    a.this.N(this.f26110a, new z.c(hVar, new i(4), playlistStuckException, 1), z10);
                }
            }
            d dVar4 = this.f26113d;
            if (dVar4.f26141v.f26164e) {
                j11 = 0;
            } else {
                j11 = dVar4 != dVar2 ? dVar4.f26132m : dVar4.f26132m / 2;
            }
            this.f26116g = jElapsedRealtime + p0.e1(j11);
            if ((this.f26113d.f26133n != C.TIME_UNSET || this.f26110a.equals(a.this.f26105l)) && !this.f26113d.f26134o) {
                r(i());
            }
        }

        public d k() {
            return this.f26113d;
        }

        public boolean m() {
            int i11;
            if (this.f26113d == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(30000L, p0.e1(this.f26113d.f26140u));
            d dVar = this.f26113d;
            return dVar.f26134o || (i11 = dVar.f26123d) == 2 || i11 == 1 || this.f26114e + jMax > jElapsedRealtime;
        }

        public void p() {
            r(this.f26110a);
        }

        public void s() throws IOException {
            this.f26111b.maybeThrowError();
            IOException iOException = this.f26119j;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public void j(b0 b0Var, long j11, long j12, boolean z10) {
            h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
            a.this.f26096c.b(b0Var.f27271a);
            a.this.f26100g.q(hVar, 4);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public void l(b0 b0Var, long j11, long j12) {
            y9.d dVar = (y9.d) b0Var.c();
            h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
            if (dVar instanceof d) {
                w((d) dVar, hVar);
                a.this.f26100g.t(hVar, 4);
            } else {
                this.f26119j = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                a.this.f26100g.x(hVar, 4, this.f26119j, true);
            }
            a.this.f26096c.b(b0Var.f27271a);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public Loader.c n(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
            Loader.c cVarG;
            h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
            boolean z10 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((b0Var.d().getQueryParameter("_HLS_msn") != null) || z10) {
                int i12 = iOException instanceof HttpDataSource$InvalidResponseCodeException ? ((HttpDataSource$InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z10 || i12 == 400 || i12 == 503) {
                    this.f26116g = SystemClock.elapsedRealtime();
                    p();
                    ((p.a) p0.j(a.this.f26100g)).x(hVar, b0Var.f27273c, iOException, true);
                    return Loader.f27246f;
                }
            }
            z.c cVar = new z.c(hVar, new i(b0Var.f27273c), iOException, i11);
            if (a.this.N(this.f26110a, cVar, false)) {
                long jC = a.this.f26096c.c(cVar);
                cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f27247g;
            } else {
                cVarG = Loader.f27246f;
            }
            boolean zC = cVarG.c();
            a.this.f26100g.x(hVar, b0Var.f27273c, iOException, !zC);
            if (!zC) {
                a.this.f26096c.b(b0Var.f27271a);
            }
            return cVarG;
        }

        public void x() {
            this.f26111b.k();
        }
    }

    public a(f fVar, z zVar, y9.e eVar) {
        this(fVar, zVar, eVar, 3.5d);
    }

    public a(f fVar, z zVar, y9.e eVar, double d11) {
        this.f26094a = fVar;
        this.f26095b = eVar;
        this.f26096c = zVar;
        this.f26099f = d11;
        this.f26098e = new CopyOnWriteArrayList();
        this.f26097d = new HashMap();
        this.f26108o = C.TIME_UNSET;
    }

    private void E(List list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Uri uri = (Uri) list.get(i11);
            this.f26097d.put(uri, new c(uri));
        }
    }

    private static d.C0373d F(d dVar, d dVar2) {
        int i11 = (int) (dVar2.f26130k - dVar.f26130k);
        List list = dVar.f26137r;
        if (i11 < list.size()) {
            return (d.C0373d) list.get(i11);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d G(d dVar, d dVar2) {
        if (dVar2.e(dVar)) {
            return dVar2.b(I(dVar, dVar2), H(dVar, dVar2));
        }
        return dVar2.f26134o ? dVar.c() : dVar;
    }

    private int H(d dVar, d dVar2) {
        d.C0373d c0373dF;
        if (dVar2.f26128i) {
            return dVar2.f26129j;
        }
        d dVar3 = this.f26106m;
        int i11 = dVar3 != null ? dVar3.f26129j : 0;
        return (dVar == null || (c0373dF = F(dVar, dVar2)) == null) ? i11 : (dVar.f26129j + c0373dF.f26152d) - ((d.C0373d) dVar2.f26137r.get(0)).f26152d;
    }

    private long I(d dVar, d dVar2) {
        if (dVar2.f26135p) {
            return dVar2.f26127h;
        }
        d dVar3 = this.f26106m;
        long j11 = dVar3 != null ? dVar3.f26127h : 0L;
        if (dVar == null) {
            return j11;
        }
        int size = dVar.f26137r.size();
        d.C0373d c0373dF = F(dVar, dVar2);
        if (c0373dF != null) {
            return dVar.f26127h + c0373dF.f26153e;
        }
        return ((long) size) == dVar2.f26130k - dVar.f26130k ? dVar.d() : j11;
    }

    private Uri J(Uri uri) {
        d.c cVar;
        d dVar = this.f26106m;
        if (dVar == null || !dVar.f26141v.f26164e || (cVar = (d.c) dVar.f26139t.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar.f26145b));
        int i11 = cVar.f26146c;
        if (i11 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i11));
        }
        return builderBuildUpon.build();
    }

    private boolean K(Uri uri) {
        List list = this.f26104k.f26167e;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (uri.equals(((e.b) list.get(i11)).f26180a)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        List list = this.f26104k.f26167e;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i11 = 0; i11 < size; i11++) {
            c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f26097d.get(((e.b) list.get(i11)).f26180a));
            if (jElapsedRealtime > cVar.f26117h) {
                Uri uri = cVar.f26110a;
                this.f26105l = uri;
                cVar.r(J(uri));
                return true;
            }
        }
        return false;
    }

    private void M(Uri uri) {
        if (uri.equals(this.f26105l) || !K(uri)) {
            return;
        }
        d dVar = this.f26106m;
        if (dVar == null || !dVar.f26134o) {
            this.f26105l = uri;
            c cVar = (c) this.f26097d.get(uri);
            d dVar2 = cVar.f26113d;
            if (dVar2 == null || !dVar2.f26134o) {
                cVar.r(J(uri));
            } else {
                this.f26106m = dVar2;
                this.f26103j.f(dVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N(Uri uri, z.c cVar, boolean z10) {
        Iterator it = this.f26098e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !((HlsPlaylistTracker.b) it.next()).f(uri, cVar, z10);
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(Uri uri, d dVar) {
        if (uri.equals(this.f26105l)) {
            if (this.f26106m == null) {
                this.f26107n = !dVar.f26134o;
                this.f26108o = dVar.f26127h;
            }
            this.f26106m = dVar;
            this.f26103j.f(dVar);
        }
        Iterator it = this.f26098e.iterator();
        while (it.hasNext()) {
            ((HlsPlaylistTracker.b) it.next()).c();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void j(b0 b0Var, long j11, long j12, boolean z10) {
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f26096c.b(b0Var.f27271a);
        this.f26100g.q(hVar, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void l(b0 b0Var, long j11, long j12) {
        y9.d dVar = (y9.d) b0Var.c();
        boolean z10 = dVar instanceof d;
        e eVarD = z10 ? e.d(dVar.f78950a) : (e) dVar;
        this.f26104k = eVarD;
        this.f26105l = ((e.b) eVarD.f26167e.get(0)).f26180a;
        this.f26098e.add(new b());
        E(eVarD.f26166d);
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        c cVar = (c) this.f26097d.get(this.f26105l);
        if (z10) {
            cVar.w((d) dVar, hVar);
        } else {
            cVar.p();
        }
        this.f26096c.b(b0Var.f27271a);
        this.f26100g.t(hVar, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public Loader.c n(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
        h hVar = new h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        long jC = this.f26096c.c(new z.c(hVar, new i(b0Var.f27273c), iOException, i11));
        boolean z10 = jC == C.TIME_UNSET;
        this.f26100g.x(hVar, b0Var.f27273c, iOException, z10);
        if (z10) {
            this.f26096c.b(b0Var.f27271a);
        }
        return z10 ? Loader.f27247g : Loader.g(false, jC);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void a(Uri uri) throws IOException {
        ((c) this.f26097d.get(uri)).s();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public long b() {
        return this.f26108o;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public e c() {
        return this.f26104k;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void d(Uri uri) {
        ((c) this.f26097d.get(uri)).p();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean e(Uri uri) {
        return ((c) this.f26097d.get(uri)).m();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean f() {
        return this.f26107n;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean g(Uri uri, long j11) {
        c cVar = (c) this.f26097d.get(uri);
        if (cVar != null) {
            return !cVar.h(j11);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void h() throws IOException {
        Loader loader = this.f26101h;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f26105l;
        if (uri != null) {
            a(uri);
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public d i(Uri uri, boolean z10) {
        d dVarK = ((c) this.f26097d.get(uri)).k();
        if (dVarK != null && z10) {
            M(uri);
        }
        return dVarK;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void k(HlsPlaylistTracker.b bVar) {
        this.f26098e.remove(bVar);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void m(HlsPlaylistTracker.b bVar) {
        com.google.android.exoplayer2.util.a.e(bVar);
        this.f26098e.add(bVar);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void o(Uri uri, p.a aVar, HlsPlaylistTracker.c cVar) {
        this.f26102i = p0.w();
        this.f26100g = aVar;
        this.f26103j = cVar;
        b0 b0Var = new b0(this.f26094a.a(4), uri, 4, this.f26095b.a());
        com.google.android.exoplayer2.util.a.g(this.f26101h == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f26101h = loader;
        aVar.z(new h(b0Var.f27271a, b0Var.f27272b, loader.m(b0Var, this, this.f26096c.a(b0Var.f27273c))), b0Var.f27273c);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f26105l = null;
        this.f26106m = null;
        this.f26104k = null;
        this.f26108o = C.TIME_UNSET;
        this.f26101h.k();
        this.f26101h = null;
        Iterator it = this.f26097d.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).x();
        }
        this.f26102i.removeCallbacksAndMessages(null);
        this.f26102i = null;
        this.f26097d.clear();
    }
}
