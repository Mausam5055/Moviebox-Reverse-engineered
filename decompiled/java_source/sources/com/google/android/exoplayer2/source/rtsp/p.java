package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes3.dex */
final class p implements com.google.android.exoplayer2.source.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f26449b = p0.w();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f26450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RtspClient f26451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f26452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f26453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f26454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.rtsp.c.a f26455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.google.android.exoplayer2.source.n.a f26456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ImmutableList f26457j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private IOException f26458k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RtspMediaSource.RtspPlaybackException f26459l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f26460m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f26461n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f26462o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f26463p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26464q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f26465r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f26466s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f26467t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f26468u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f26469v;

    /* JADX INFO: Access modifiers changed from: private */
    final class b implements g9.n, Loader.b, com.google.android.exoplayer2.source.a0.d, RtspClient.e, RtspClient.d {
        private b() {
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.e
        public void a(String str, Throwable th2) {
            p.this.f26458k = th2 == null ? new IOException(str) : new IOException(str, th2);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.d
        public void b(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            p.this.f26459l = rtspPlaybackException;
        }

        @Override // com.google.android.exoplayer2.source.a0.d
        public void c(o1 o1Var) {
            Handler handler = p.this.f26449b;
            final p pVar = p.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.r
                @Override // java.lang.Runnable
                public final void run() {
                    p.t(pVar);
                }
            });
        }

        @Override // g9.n
        public void d(g9.b0 b0Var) {
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.d
        public void e() {
            p.this.f26451d.E0(0L);
        }

        @Override // g9.n
        public void endTracks() {
            Handler handler = p.this.f26449b;
            final p pVar = p.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.q
                @Override // java.lang.Runnable
                public final void run() {
                    p.t(pVar);
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.d
        public void f(long j11, ImmutableList immutableList) {
            ArrayList arrayList = new ArrayList(immutableList.size());
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                arrayList.add((String) com.google.android.exoplayer2.util.a.e(((f0) immutableList.get(i11)).f26371c.getPath()));
            }
            for (int i12 = 0; i12 < p.this.f26453f.size(); i12++) {
                if (!arrayList.contains(((d) p.this.f26453f.get(i12)).c().getPath())) {
                    p.this.f26454g.a();
                    if (p.this.I()) {
                        p.this.f26464q = true;
                        p.this.f26461n = C.TIME_UNSET;
                        p.this.f26460m = C.TIME_UNSET;
                        p.this.f26462o = C.TIME_UNSET;
                    }
                }
            }
            for (int i13 = 0; i13 < immutableList.size(); i13++) {
                f0 f0Var = (f0) immutableList.get(i13);
                com.google.android.exoplayer2.source.rtsp.e eVarG = p.this.G(f0Var.f26371c);
                if (eVarG != null) {
                    eVarG.f(f0Var.f26369a);
                    eVarG.e(f0Var.f26370b);
                    if (p.this.I() && p.this.f26461n == p.this.f26460m) {
                        eVarG.d(j11, f0Var.f26369a);
                    }
                }
            }
            if (!p.this.I()) {
                if (p.this.f26462o != C.TIME_UNSET) {
                    p pVar = p.this;
                    pVar.seekToUs(pVar.f26462o);
                    p.this.f26462o = C.TIME_UNSET;
                    return;
                }
                return;
            }
            if (p.this.f26461n == p.this.f26460m) {
                p.this.f26461n = C.TIME_UNSET;
                p.this.f26460m = C.TIME_UNSET;
            } else {
                p.this.f26461n = C.TIME_UNSET;
                p pVar2 = p.this;
                pVar2.seekToUs(pVar2.f26460m);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.e
        public void g(d0 d0Var, ImmutableList immutableList) {
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                t tVar = (t) immutableList.get(i11);
                p pVar = p.this;
                e eVar = pVar.new e(tVar, i11, pVar.f26455h);
                p.this.f26452e.add(eVar);
                eVar.j();
            }
            p.this.f26454g.b(d0Var);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void j(com.google.android.exoplayer2.source.rtsp.e eVar, long j11, long j12, boolean z10) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void l(com.google.android.exoplayer2.source.rtsp.e eVar, long j11, long j12) {
            if (p.this.getBufferedPositionUs() == 0) {
                if (p.this.f26469v) {
                    return;
                }
                p.this.N();
                p.this.f26469v = true;
                return;
            }
            for (int i11 = 0; i11 < p.this.f26452e.size(); i11++) {
                e eVar2 = (e) p.this.f26452e.get(i11);
                if (eVar2.f26475a.f26472b == eVar) {
                    eVar2.c();
                    return;
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public Loader.c n(com.google.android.exoplayer2.source.rtsp.e eVar, long j11, long j12, IOException iOException, int i11) {
            if (!p.this.f26466s) {
                p.this.f26458k = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                p.this.f26459l = new RtspMediaSource.RtspPlaybackException(eVar.f26344b.f26487b.toString(), iOException);
            } else if (p.c(p.this) < 3) {
                return Loader.f27244d;
            }
            return Loader.f27246f;
        }

        @Override // g9.n
        public g9.e0 track(int i11, int i12) {
            return ((e) com.google.android.exoplayer2.util.a.e((e) p.this.f26452e.get(i11))).f26477c;
        }
    }

    interface c {
        void a();

        void b(d0 d0Var);
    }

    final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t f26471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.exoplayer2.source.rtsp.e f26472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f26473c;

        public d(t tVar, int i11, com.google.android.exoplayer2.source.rtsp.c.a aVar) {
            this.f26471a = tVar;
            this.f26472b = new com.google.android.exoplayer2.source.rtsp.e(i11, tVar, new com.google.android.exoplayer2.source.rtsp.e.a() { // from class: com.google.android.exoplayer2.source.rtsp.s
                @Override // com.google.android.exoplayer2.source.rtsp.e.a
                public final void a(String str, c cVar) {
                    this.f26485a.f(str, cVar);
                }
            }, p.this.f26450c, aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(String str, com.google.android.exoplayer2.source.rtsp.c cVar) {
            this.f26473c = str;
            u.b bVarG = cVar.g();
            if (bVarG != null) {
                p.this.f26451d.v0(cVar.d(), bVarG);
                p.this.f26469v = true;
            }
            p.this.K();
        }

        public Uri c() {
            return this.f26472b.f26344b.f26487b;
        }

        public String d() {
            com.google.android.exoplayer2.util.a.i(this.f26473c);
            return this.f26473c;
        }

        public boolean e() {
            return this.f26473c != null;
        }
    }

    private final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d f26475a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Loader f26476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.exoplayer2.source.a0 f26477c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f26478d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f26479e;

        public e(t tVar, int i11, com.google.android.exoplayer2.source.rtsp.c.a aVar) {
            this.f26475a = p.this.new d(tVar, i11, aVar);
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper ");
            sb2.append(i11);
            this.f26476b = new Loader(sb2.toString());
            com.google.android.exoplayer2.source.a0 a0VarL = com.google.android.exoplayer2.source.a0.l(p.this.f26448a);
            this.f26477c = a0VarL;
            a0VarL.d0(p.this.f26450c);
        }

        public void c() {
            if (this.f26478d) {
                return;
            }
            this.f26475a.f26472b.cancelLoad();
            this.f26478d = true;
            p.this.R();
        }

        public long d() {
            return this.f26477c.z();
        }

        public boolean e() {
            return this.f26477c.K(this.f26478d);
        }

        public int f(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            return this.f26477c.S(p1Var, decoderInputBuffer, i11, this.f26478d);
        }

        public void g() {
            if (this.f26479e) {
                return;
            }
            this.f26476b.k();
            this.f26477c.T();
            this.f26479e = true;
        }

        public void h(long j11) {
            if (this.f26478d) {
                return;
            }
            this.f26475a.f26472b.c();
            this.f26477c.V();
            this.f26477c.b0(j11);
        }

        public int i(long j11) {
            int iE = this.f26477c.E(j11, this.f26478d);
            this.f26477c.e0(iE);
            return iE;
        }

        public void j() {
            this.f26476b.m(this.f26475a.f26472b, p.this.f26450c, 0);
        }
    }

    private final class f implements t9.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f26481a;

        public f(int i11) {
            this.f26481a = i11;
        }

        @Override // t9.s
        public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            return p.this.L(this.f26481a, p1Var, decoderInputBuffer, i11);
        }

        @Override // t9.s
        public boolean isReady() {
            return p.this.H(this.f26481a);
        }

        @Override // t9.s
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (p.this.f26459l != null) {
                throw p.this.f26459l;
            }
        }

        @Override // t9.s
        public int skipData(long j11) {
            return p.this.P(this.f26481a, j11);
        }
    }

    public p(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.source.rtsp.c.a aVar, Uri uri, c cVar, String str, SocketFactory socketFactory, boolean z10) {
        this.f26448a = bVar;
        this.f26455h = aVar;
        this.f26454g = cVar;
        b bVar2 = new b();
        this.f26450c = bVar2;
        this.f26451d = new RtspClient(bVar2, bVar2, str, uri, socketFactory, z10);
        this.f26452e = new ArrayList();
        this.f26453f = new ArrayList();
        this.f26461n = C.TIME_UNSET;
        this.f26460m = C.TIME_UNSET;
        this.f26462o = C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ImmutableList F(ImmutableList immutableList) {
        ImmutableList.a aVar = new ImmutableList.a();
        for (int i11 = 0; i11 < immutableList.size(); i11++) {
            aVar.a(new TrackGroup(Integer.toString(i11), (o1) com.google.android.exoplayer2.util.a.e(((e) immutableList.get(i11)).f26477c.F())));
        }
        return aVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.android.exoplayer2.source.rtsp.e G(Uri uri) {
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            if (!((e) this.f26452e.get(i11)).f26478d) {
                d dVar = ((e) this.f26452e.get(i11)).f26475a;
                if (dVar.c().equals(uri)) {
                    return dVar.f26472b;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I() {
        return this.f26461n != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (this.f26465r || this.f26466s) {
            return;
        }
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            if (((e) this.f26452e.get(i11)).f26477c.F() == null) {
                return;
            }
        }
        this.f26466s = true;
        this.f26457j = F(ImmutableList.copyOf((Collection) this.f26452e));
        ((com.google.android.exoplayer2.source.n.a) com.google.android.exoplayer2.util.a.e(this.f26456i)).h(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        boolean zE = true;
        for (int i11 = 0; i11 < this.f26453f.size(); i11++) {
            zE &= ((d) this.f26453f.get(i11)).e();
        }
        if (zE && this.f26467t) {
            this.f26451d.B0(this.f26453f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void N() {
        this.f26451d.x0();
        com.google.android.exoplayer2.source.rtsp.c.a aVarB = this.f26455h.b();
        if (aVarB == null) {
            this.f26459l = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.f26452e.size());
        ArrayList arrayList2 = new ArrayList(this.f26453f.size());
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            e eVar = (e) this.f26452e.get(i11);
            if (eVar.f26478d) {
                arrayList.add(eVar);
            } else {
                e eVar2 = new e(eVar.f26475a.f26471a, i11, aVarB);
                arrayList.add(eVar2);
                eVar2.j();
                if (this.f26453f.contains(eVar.f26475a)) {
                    arrayList2.add(eVar2.f26475a);
                }
            }
        }
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f26452e);
        this.f26452e.clear();
        this.f26452e.addAll(arrayList);
        this.f26453f.clear();
        this.f26453f.addAll(arrayList2);
        for (int i12 = 0; i12 < immutableListCopyOf.size(); i12++) {
            ((e) immutableListCopyOf.get(i12)).c();
        }
    }

    private boolean O(long j11) {
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            if (!((e) this.f26452e.get(i11)).f26477c.Z(j11, false)) {
                return false;
            }
        }
        return true;
    }

    private boolean Q() {
        return this.f26464q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        this.f26463p = true;
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            this.f26463p &= ((e) this.f26452e.get(i11)).f26478d;
        }
    }

    static /* synthetic */ int c(p pVar) {
        int i11 = pVar.f26468u;
        pVar.f26468u = i11 + 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void t(p pVar) {
        pVar.J();
    }

    boolean H(int i11) {
        return !Q() && ((e) this.f26452e.get(i11)).e();
    }

    int L(int i11, p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i12) {
        if (Q()) {
            return -3;
        }
        return ((e) this.f26452e.get(i11)).f(p1Var, decoderInputBuffer, i12);
    }

    public void M() {
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            ((e) this.f26452e.get(i11)).g();
        }
        p0.n(this.f26451d);
        this.f26465r = true;
    }

    int P(int i11, long j11) {
        if (Q()) {
            return -3;
        }
        return ((e) this.f26452e.get(i11)).i(j11);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j11, c3 c3Var) {
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11) {
        for (int i11 = 0; i11 < hVarArr.length; i11++) {
            if (sVarArr[i11] != null && (hVarArr[i11] == null || !zArr[i11])) {
                sVarArr[i11] = null;
            }
        }
        this.f26453f.clear();
        for (int i12 = 0; i12 < hVarArr.length; i12++) {
            com.google.android.exoplayer2.trackselection.h hVar = hVarArr[i12];
            if (hVar != null) {
                TrackGroup trackGroup = hVar.getTrackGroup();
                int iIndexOf = ((ImmutableList) com.google.android.exoplayer2.util.a.e(this.f26457j)).indexOf(trackGroup);
                this.f26453f.add(((e) com.google.android.exoplayer2.util.a.e((e) this.f26452e.get(iIndexOf))).f26475a);
                if (this.f26457j.contains(trackGroup) && sVarArr[i12] == null) {
                    sVarArr[i12] = new f(iIndexOf);
                    zArr2[i12] = true;
                }
            }
        }
        for (int i13 = 0; i13 < this.f26452e.size(); i13++) {
            e eVar = (e) this.f26452e.get(i13);
            if (!this.f26453f.contains(eVar.f26475a)) {
                eVar.c();
            }
        }
        this.f26467t = true;
        K();
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        return isLoading();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j11, boolean z10) {
        if (I()) {
            return;
        }
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            e eVar = (e) this.f26452e.get(i11);
            if (!eVar.f26478d) {
                eVar.f26477c.q(j11, z10, true);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void e(com.google.android.exoplayer2.source.n.a aVar, long j11) {
        this.f26456i = aVar;
        try {
            this.f26451d.C0();
        } catch (IOException e11) {
            this.f26458k = e11;
            p0.n(this.f26451d);
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        if (this.f26463p || this.f26452e.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j11 = this.f26460m;
        if (j11 != C.TIME_UNSET) {
            return j11;
        }
        boolean z10 = true;
        long jMin = Long.MAX_VALUE;
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            e eVar = (e) this.f26452e.get(i11);
            if (!eVar.f26478d) {
                jMin = Math.min(jMin, eVar.d());
                z10 = false;
            }
        }
        if (z10 || jMin == Long.MIN_VALUE) {
            return 0L;
        }
        return jMin;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public t9.x getTrackGroups() {
        com.google.android.exoplayer2.util.a.g(this.f26466s);
        return new t9.x((TrackGroup[]) ((ImmutableList) com.google.android.exoplayer2.util.a.e(this.f26457j)).toArray(new TrackGroup[0]));
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return !this.f26463p;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.f26458k;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        if (!this.f26464q) {
            return C.TIME_UNSET;
        }
        this.f26464q = false;
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j11) {
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j11) {
        if (getBufferedPositionUs() == 0 && !this.f26469v) {
            this.f26462o = j11;
            return j11;
        }
        discardBuffer(j11, false);
        this.f26460m = j11;
        if (I()) {
            int iR0 = this.f26451d.r0();
            if (iR0 == 1) {
                return j11;
            }
            if (iR0 != 2) {
                throw new IllegalStateException();
            }
            this.f26461n = j11;
            this.f26451d.y0(j11);
            return j11;
        }
        if (O(j11)) {
            return j11;
        }
        this.f26461n = j11;
        this.f26451d.y0(j11);
        for (int i11 = 0; i11 < this.f26452e.size(); i11++) {
            ((e) this.f26452e.get(i11)).h(j11);
        }
        return j11;
    }
}
