package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.hls.f;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.q;
import c2.e;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g2.i;
import g2.j;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements HlsPlaylistTracker, Loader.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final HlsPlaylistTracker.a f11840p = new HlsPlaylistTracker.a() { // from class: c2.b
        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.a
        public final HlsPlaylistTracker a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2) {
            return new androidx.media3.exoplayer.hls.playlist.a(fVar, mVar, eVar, fVar2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f11841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f11842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f11843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap f11844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CopyOnWriteArrayList f11845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final double f11846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s.a f11847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Loader f11848h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f11849i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HlsPlaylistTracker.c f11850j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d f11851k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Uri f11852l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.media3.exoplayer.hls.playlist.c f11853m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f11854n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f11855o;

    private class b implements HlsPlaylistTracker.b {
        private b() {
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
        public void c() {
            a.this.f11845e.remove(this);
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
        public boolean d(Uri uri, m.c cVar, boolean z10) {
            c cVar2;
            if (a.this.f11853m == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List list = ((d) a1.i(a.this.f11851k)).f11934e;
                int i11 = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    c cVar3 = (c) a.this.f11844d.get(((d.b) list.get(i12)).f11947a);
                    if (cVar3 != null && jElapsedRealtime < cVar3.f11864h) {
                        i11++;
                    }
                }
                m.b bVarD = a.this.f11843c.d(new m.a(1, 0, a.this.f11851k.f11934e.size(), i11), cVar);
                if (bVarD != null && bVarD.f13008a == 2 && (cVar2 = (c) a.this.f11844d.get(uri)) != null) {
                    cVar2.h(bVarD.f13009b);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c implements Loader.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f11857a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Loader f11858b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.media3.datasource.a f11859c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.exoplayer.hls.playlist.c f11860d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f11861e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f11862f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f11863g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f11864h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f11865i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private IOException f11866j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f11867k;

        public c(Uri uri) {
            this.f11857a = uri;
            this.f11859c = a.this.f11841a.a(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h(long j11) {
            this.f11864h = SystemClock.elapsedRealtime() + j11;
            return this.f11857a.equals(a.this.f11852l) && !a.this.P();
        }

        private Uri i() {
            androidx.media3.exoplayer.hls.playlist.c cVar = this.f11860d;
            if (cVar != null) {
                androidx.media3.exoplayer.hls.playlist.c.h hVar = cVar.f11889v;
                if (hVar.f11927a != C.TIME_UNSET || hVar.f11931e) {
                    Uri.Builder builderBuildUpon = this.f11857a.buildUpon();
                    androidx.media3.exoplayer.hls.playlist.c cVar2 = this.f11860d;
                    if (cVar2.f11889v.f11931e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar2.f11878k + ((long) cVar2.f11885r.size())));
                        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11860d;
                        if (cVar3.f11881n != C.TIME_UNSET) {
                            List list = cVar3.f11886s;
                            int size = list.size();
                            if (!list.isEmpty() && ((androidx.media3.exoplayer.hls.playlist.c.d) g3.g(list)).f11910m) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    androidx.media3.exoplayer.hls.playlist.c.h hVar2 = this.f11860d.f11889v;
                    if (hVar2.f11927a != C.TIME_UNSET) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", hVar2.f11928b ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.f11857a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(Uri uri) {
            this.f11865i = false;
            s(uri);
        }

        private void s(Uri uri) {
            q.a aVarB = a.this.f11842b.b(a.this.f11851k, this.f11860d);
            h hVarA = new h.b().i(uri).b(1).a();
            a.v(a.this);
            q qVar = new q(this.f11859c, hVarA, 4, aVarB);
            this.f11858b.m(qVar, this, a.this.f11843c.a(qVar.f13016c));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(final Uri uri) {
            this.f11864h = 0L;
            if (this.f11865i || this.f11858b.i() || this.f11858b.h()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.f11863g) {
                s(uri);
            } else {
                this.f11865i = true;
                a.this.f11849i.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.hls.playlist.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11869a.n(uri);
                    }
                }, this.f11863g - jElapsedRealtime);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(androidx.media3.exoplayer.hls.playlist.c cVar, i iVar) {
            boolean z10;
            long j11;
            androidx.media3.exoplayer.hls.playlist.c cVar2 = this.f11860d;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f11861e = jElapsedRealtime;
            androidx.media3.exoplayer.hls.playlist.c cVarJ = a.this.J(cVar2, cVar);
            this.f11860d = cVarJ;
            IOException playlistStuckException = null;
            if (cVarJ != cVar2) {
                this.f11866j = null;
                this.f11862f = jElapsedRealtime;
                a.this.W(this.f11857a, cVarJ);
            } else if (!cVarJ.f11882o) {
                long size = cVar.f11878k + ((long) cVar.f11885r.size());
                androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11860d;
                if (size < cVar3.f11878k) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.f11857a);
                    z10 = true;
                } else {
                    z10 = false;
                    if (jElapsedRealtime - this.f11862f > a1.y1(cVar3.f11880m) * a.this.f11846f) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.f11857a);
                    }
                }
                if (playlistStuckException != null) {
                    this.f11866j = playlistStuckException;
                    a.this.R(this.f11857a, new m.c(iVar, new j(4), playlistStuckException, 1), z10);
                }
            }
            androidx.media3.exoplayer.hls.playlist.c cVar4 = this.f11860d;
            if (cVar4.f11889v.f11931e) {
                j11 = 0;
            } else {
                j11 = cVar4 != cVar2 ? cVar4.f11880m : cVar4.f11880m / 2;
            }
            this.f11863g = (jElapsedRealtime + a1.y1(j11)) - iVar.f63213f;
            if (this.f11860d.f11882o) {
                return;
            }
            if (this.f11857a.equals(a.this.f11852l) || this.f11867k) {
                t(i());
            }
        }

        public void A() {
            this.f11858b.k();
        }

        public void B(boolean z10) {
            this.f11867k = z10;
        }

        public androidx.media3.exoplayer.hls.playlist.c j() {
            return this.f11860d;
        }

        public boolean l() {
            return this.f11867k;
        }

        public boolean m() {
            int i11;
            if (this.f11860d == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(30000L, a1.y1(this.f11860d.f11888u));
            androidx.media3.exoplayer.hls.playlist.c cVar = this.f11860d;
            return cVar.f11882o || (i11 = cVar.f11871d) == 2 || i11 == 1 || this.f11861e + jMax > jElapsedRealtime;
        }

        public void r(boolean z10) {
            t(z10 ? i() : this.f11857a);
        }

        public void u() throws IOException {
            this.f11858b.maybeThrowError();
            IOException iOException = this.f11866j;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public void q(q qVar, long j11, long j12, boolean z10) {
            i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
            a.this.f11843c.b(qVar.f13014a);
            a.this.f11847g.s(iVar, 4);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public void p(q qVar, long j11, long j12) {
            c2.d dVar = (c2.d) qVar.c();
            i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
            if (dVar instanceof androidx.media3.exoplayer.hls.playlist.c) {
                z((androidx.media3.exoplayer.hls.playlist.c) dVar, iVar);
                a.this.f11847g.v(iVar, 4);
            } else {
                this.f11866j = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                a.this.f11847g.z(iVar, 4, this.f11866j, true);
            }
            a.this.f11843c.b(qVar.f13014a);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        public Loader.c k(q qVar, long j11, long j12, IOException iOException, int i11) {
            Loader.c cVarG;
            i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
            boolean z10 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((qVar.d().getQueryParameter("_HLS_msn") != null) || z10) {
                int i12 = iOException instanceof HttpDataSource.InvalidResponseCodeException ? ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z10 || i12 == 400 || i12 == 503) {
                    this.f11863g = SystemClock.elapsedRealtime();
                    r(false);
                    ((s.a) a1.i(a.this.f11847g)).z(iVar, qVar.f13016c, iOException, true);
                    return Loader.f12949f;
                }
            }
            m.c cVar = new m.c(iVar, new j(qVar.f13016c), iOException, i11);
            if (a.this.R(this.f11857a, cVar, false)) {
                long jC = a.this.f11843c.c(cVar);
                cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12950g;
            } else {
                cVarG = Loader.f12949f;
            }
            boolean zC = cVarG.c();
            a.this.f11847g.z(iVar, qVar.f13016c, iOException, !zC);
            if (!zC) {
                a.this.f11843c.b(qVar.f13014a);
            }
            return cVarG;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public void o(q qVar, long j11, long j12, int i11) {
            a.this.f11847g.B(i11 == 0 ? new i(qVar.f13014a, qVar.f13015b, j11) : new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a()), qVar.f13016c, i11);
        }
    }

    public a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2) {
        this(fVar, mVar, eVar, fVar2, 3.5d);
    }

    public a(f fVar, m mVar, e eVar, androidx.media3.exoplayer.upstream.f fVar2, double d11) {
        this.f11841a = fVar;
        this.f11842b = eVar;
        this.f11843c = mVar;
        this.f11846f = d11;
        this.f11845e = new CopyOnWriteArrayList();
        this.f11844d = new HashMap();
        this.f11855o = C.TIME_UNSET;
    }

    private void H(List list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Uri uri = (Uri) list.get(i11);
            this.f11844d.put(uri, new c(uri));
        }
    }

    private static androidx.media3.exoplayer.hls.playlist.c.f I(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        int i11 = (int) (cVar2.f11878k - cVar.f11878k);
        List list = cVar.f11885r;
        if (i11 < list.size()) {
            return (androidx.media3.exoplayer.hls.playlist.c.f) list.get(i11);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public androidx.media3.exoplayer.hls.playlist.c J(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        if (cVar2.e(cVar)) {
            return cVar2.b(L(cVar, cVar2), K(cVar, cVar2));
        }
        return cVar2.f11882o ? cVar.c() : cVar;
    }

    private int K(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        androidx.media3.exoplayer.hls.playlist.c.f fVarI;
        if (cVar2.f11876i) {
            return cVar2.f11877j;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11853m;
        int i11 = cVar3 != null ? cVar3.f11877j : 0;
        return (cVar == null || (fVarI = I(cVar, cVar2)) == null) ? i11 : (cVar.f11877j + fVarI.f11919d) - ((androidx.media3.exoplayer.hls.playlist.c.f) cVar2.f11885r.get(0)).f11919d;
    }

    private long L(androidx.media3.exoplayer.hls.playlist.c cVar, androidx.media3.exoplayer.hls.playlist.c cVar2) {
        if (cVar2.f11883p) {
            return cVar2.f11875h;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar3 = this.f11853m;
        long j11 = cVar3 != null ? cVar3.f11875h : 0L;
        if (cVar == null) {
            return j11;
        }
        int size = cVar.f11885r.size();
        androidx.media3.exoplayer.hls.playlist.c.f fVarI = I(cVar, cVar2);
        if (fVarI != null) {
            return cVar.f11875h + fVarI.f11920e;
        }
        return ((long) size) == cVar2.f11878k - cVar.f11878k ? cVar.d() : j11;
    }

    private Uri M(Uri uri) {
        androidx.media3.exoplayer.hls.playlist.c.e eVar;
        androidx.media3.exoplayer.hls.playlist.c cVar = this.f11853m;
        if (cVar == null || !cVar.f11889v.f11931e || (eVar = (androidx.media3.exoplayer.hls.playlist.c.e) cVar.f11887t.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(eVar.f11912b));
        int i11 = eVar.f11913c;
        if (i11 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i11));
        }
        return builderBuildUpon.build();
    }

    private boolean N(Uri uri) {
        List list = this.f11851k.f11934e;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (uri.equals(((d.b) list.get(i11)).f11947a)) {
                return true;
            }
        }
        return false;
    }

    private void O(Uri uri) {
        c cVar = (c) this.f11844d.get(uri);
        androidx.media3.exoplayer.hls.playlist.c cVarJ = cVar.j();
        if (cVar.l()) {
            return;
        }
        cVar.B(true);
        if (cVarJ == null || cVarJ.f11882o) {
            return;
        }
        cVar.r(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean P() {
        List list = this.f11851k.f11934e;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i11 = 0; i11 < size; i11++) {
            c cVar = (c) androidx.media3.common.util.a.e((c) this.f11844d.get(((d.b) list.get(i11)).f11947a));
            if (jElapsedRealtime > cVar.f11864h) {
                Uri uri = cVar.f11857a;
                this.f11852l = uri;
                cVar.t(M(uri));
                return true;
            }
        }
        return false;
    }

    private void Q(Uri uri) {
        if (uri.equals(this.f11852l) || !N(uri)) {
            return;
        }
        androidx.media3.exoplayer.hls.playlist.c cVar = this.f11853m;
        if (cVar == null || !cVar.f11882o) {
            this.f11852l = uri;
            c cVar2 = (c) this.f11844d.get(uri);
            androidx.media3.exoplayer.hls.playlist.c cVar3 = cVar2.f11860d;
            if (cVar3 == null || !cVar3.f11882o) {
                cVar2.t(M(uri));
            } else {
                this.f11853m = cVar3;
                this.f11850j.f(cVar3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean R(Uri uri, m.c cVar, boolean z10) {
        Iterator it = this.f11845e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !((HlsPlaylistTracker.b) it.next()).d(uri, cVar, z10);
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(Uri uri, androidx.media3.exoplayer.hls.playlist.c cVar) {
        if (uri.equals(this.f11852l)) {
            if (this.f11853m == null) {
                this.f11854n = !cVar.f11882o;
                this.f11855o = cVar.f11875h;
            }
            this.f11853m = cVar;
            this.f11850j.f(cVar);
        }
        Iterator it = this.f11845e.iterator();
        while (it.hasNext()) {
            ((HlsPlaylistTracker.b) it.next()).c();
        }
    }

    static /* synthetic */ androidx.media3.exoplayer.upstream.f v(a aVar) {
        aVar.getClass();
        return null;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public void q(q qVar, long j11, long j12, boolean z10) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        this.f11843c.b(qVar.f13014a);
        this.f11847g.s(iVar, 4);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public void p(q qVar, long j11, long j12) {
        c2.d dVar = (c2.d) qVar.c();
        boolean z10 = dVar instanceof androidx.media3.exoplayer.hls.playlist.c;
        d dVarD = z10 ? d.d(dVar.f16984a) : (d) dVar;
        this.f11851k = dVarD;
        this.f11852l = ((d.b) dVarD.f11934e.get(0)).f11947a;
        this.f11845e.add(new b());
        H(dVarD.f11933d);
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        c cVar = (c) this.f11844d.get(this.f11852l);
        if (z10) {
            cVar.z((androidx.media3.exoplayer.hls.playlist.c) dVar, iVar);
        } else {
            cVar.r(false);
        }
        this.f11843c.b(qVar.f13014a);
        this.f11847g.v(iVar, 4);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Loader.c k(q qVar, long j11, long j12, IOException iOException, int i11) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        long jC = this.f11843c.c(new m.c(iVar, new j(qVar.f13016c), iOException, i11));
        boolean z10 = jC == C.TIME_UNSET;
        this.f11847g.z(iVar, qVar.f13016c, iOException, z10);
        if (z10) {
            this.f11843c.b(qVar.f13014a);
        }
        return z10 ? Loader.f12950g : Loader.g(false, jC);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.b
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public void o(q qVar, long j11, long j12, int i11) {
        this.f11847g.B(i11 == 0 ? new i(qVar.f13014a, qVar.f13015b, j11) : new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a()), qVar.f13016c, i11);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void a(Uri uri) throws IOException {
        ((c) this.f11844d.get(uri)).u();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public long b() {
        return this.f11855o;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public d c() {
        return this.f11851k;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void d(Uri uri) {
        ((c) this.f11844d.get(uri)).r(true);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean e(Uri uri) {
        return ((c) this.f11844d.get(uri)).m();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean f() {
        return this.f11854n;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean g(Uri uri, long j11) {
        c cVar = (c) this.f11844d.get(uri);
        if (cVar != null) {
            return !cVar.h(j11);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void h() throws IOException {
        Loader loader = this.f11848h;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f11852l;
        if (uri != null) {
            a(uri);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public androidx.media3.exoplayer.hls.playlist.c i(Uri uri, boolean z10) {
        androidx.media3.exoplayer.hls.playlist.c cVarJ = ((c) this.f11844d.get(uri)).j();
        if (cVarJ != null && z10) {
            Q(uri);
            O(uri);
        }
        return cVarJ;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void j(Uri uri, s.a aVar, HlsPlaylistTracker.c cVar) {
        this.f11849i = a1.A();
        this.f11847g = aVar;
        this.f11850j = cVar;
        q qVar = new q(this.f11841a.a(4), new h.b().i(uri).b(1).a(), 4, this.f11842b.a());
        androidx.media3.common.util.a.g(this.f11848h == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f11848h = loader;
        loader.m(qVar, this, this.f11843c.a(qVar.f13016c));
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void l(Uri uri) {
        c cVar = (c) this.f11844d.get(uri);
        if (cVar != null) {
            cVar.B(false);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void m(HlsPlaylistTracker.b bVar) {
        this.f11845e.remove(bVar);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void n(HlsPlaylistTracker.b bVar) {
        androidx.media3.common.util.a.e(bVar);
        this.f11845e.add(bVar);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f11852l = null;
        this.f11853m = null;
        this.f11851k = null;
        this.f11855o = C.TIME_UNSET;
        this.f11848h.k();
        this.f11848h = null;
        Iterator it = this.f11844d.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).A();
        }
        this.f11849i.removeCallbacksAndMessages(null);
        this.f11849i = null;
        this.f11844d.clear();
    }
}
