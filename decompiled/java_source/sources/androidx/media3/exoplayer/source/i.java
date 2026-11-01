package androidx.media3.exoplayer.source;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import l2.m0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements r.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f12813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.media3.datasource.a.InterfaceC0091a f12814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i3.s.a f12815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r.a f12816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.media3.exoplayer.upstream.m f12817e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f12818f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f12819g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f12820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f12821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f12822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f12823k;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l2.x f12824a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.datasource.a.InterfaceC0091a f12827d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private i3.s.a f12829f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f12830g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private androidx.media3.exoplayer.drm.w f12831h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.m f12832i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f12825b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map f12826c = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f12828e = true;

        public a(l2.x xVar, i3.s.a aVar) {
            this.f12824a = xVar;
            this.f12829f = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ r.a k(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            return new b0.b(interfaceC0091a, this.f12824a);
        }

        private com.google.common.base.q l(int i11) {
            com.google.common.base.q qVar;
            com.google.common.base.q qVar2;
            com.google.common.base.q qVar3 = (com.google.common.base.q) this.f12825b.get(Integer.valueOf(i11));
            if (qVar3 != null) {
                return qVar3;
            }
            final androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a = (androidx.media3.datasource.a.InterfaceC0091a) androidx.media3.common.util.a.e(this.f12827d);
            if (i11 == 0) {
                final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(r.a.class);
                qVar = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.source.d
                    @Override // com.google.common.base.q
                    public final Object get() {
                        return i.i(clsAsSubclass, interfaceC0091a);
                    }
                };
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        final Class clsAsSubclass2 = HlsMediaSource.Factory.class.asSubclass(r.a.class);
                        qVar = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.source.f
                            @Override // com.google.common.base.q
                            public final Object get() {
                                return i.i(clsAsSubclass2, interfaceC0091a);
                            }
                        };
                    } else if (i11 == 3) {
                        final Class<? extends U> clsAsSubclass3 = Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(r.a.class);
                        qVar2 = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.source.g
                            @Override // com.google.common.base.q
                            public final Object get() {
                                return i.h(clsAsSubclass3);
                            }
                        };
                    } else {
                        if (i11 != 4) {
                            throw new IllegalArgumentException("Unrecognized contentType: " + i11);
                        }
                        qVar2 = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.source.h
                            @Override // com.google.common.base.q
                            public final Object get() {
                                return this.f12795a.k(interfaceC0091a);
                            }
                        };
                    }
                    this.f12825b.put(Integer.valueOf(i11), qVar2);
                    return qVar2;
                }
                final Class<? extends U> clsAsSubclass4 = Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(r.a.class);
                qVar = new com.google.common.base.q() { // from class: androidx.media3.exoplayer.source.e
                    @Override // com.google.common.base.q
                    public final Object get() {
                        return i.i(clsAsSubclass4, interfaceC0091a);
                    }
                };
            }
            qVar2 = qVar;
            this.f12825b.put(Integer.valueOf(i11), qVar2);
            return qVar2;
        }

        public r.a f(int i11) {
            r.a aVar = (r.a) this.f12826c.get(Integer.valueOf(i11));
            if (aVar != null) {
                return aVar;
            }
            r.a aVar2 = (r.a) l(i11).get();
            androidx.media3.exoplayer.drm.w wVar = this.f12831h;
            if (wVar != null) {
                aVar2.e(wVar);
            }
            androidx.media3.exoplayer.upstream.m mVar = this.f12832i;
            if (mVar != null) {
                aVar2.f(mVar);
            }
            aVar2.a(this.f12829f);
            aVar2.c(this.f12828e);
            aVar2.b(this.f12830g);
            this.f12826c.put(Integer.valueOf(i11), aVar2);
            return aVar2;
        }

        public void m(int i11) {
            this.f12830g = i11;
            this.f12824a.b(i11);
        }

        public void n(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            if (interfaceC0091a != this.f12827d) {
                this.f12827d = interfaceC0091a;
                this.f12825b.clear();
                this.f12826c.clear();
            }
        }

        public void o(androidx.media3.exoplayer.drm.w wVar) {
            this.f12831h = wVar;
            Iterator it = this.f12826c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).e(wVar);
            }
        }

        public void p(int i11) {
            l2.x xVar = this.f12824a;
            if (xVar instanceof l2.m) {
                ((l2.m) xVar).l(i11);
            }
        }

        public void q(androidx.media3.exoplayer.upstream.m mVar) {
            this.f12832i = mVar;
            Iterator it = this.f12826c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).f(mVar);
            }
        }

        public void r(boolean z10) {
            this.f12828e = z10;
            this.f12824a.d(z10);
            Iterator it = this.f12826c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).c(z10);
            }
        }

        public void s(i3.s.a aVar) {
            this.f12829f = aVar;
            this.f12824a.a(aVar);
            Iterator it = this.f12826c.values().iterator();
            while (it.hasNext()) {
                ((r.a) it.next()).a(aVar);
            }
        }
    }

    private static final class b implements l2.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.common.r f12833a;

        public b(androidx.media3.common.r rVar) {
            this.f12833a = rVar;
        }

        @Override // l2.r
        public void b(l2.t tVar) {
            s0 s0VarTrack = tVar.track(0, 3);
            tVar.f(new m0.b(C.TIME_UNSET));
            tVar.endTracks();
            s0VarTrack.c(this.f12833a.b().u0("text/x-unknown").S(this.f12833a.f10161o).N());
        }

        @Override // l2.r
        public int c(l2.s sVar, l2.l0 l0Var) {
            return sVar.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // l2.r
        public boolean d(l2.s sVar) {
            return true;
        }

        @Override // l2.r
        public /* synthetic */ l2.r e() {
            return l2.q.b(this);
        }

        @Override // l2.r
        public /* synthetic */ List f() {
            return l2.q.a(this);
        }

        @Override // l2.r
        public void release() {
        }

        @Override // l2.r
        public void seek(long j11, long j12) {
        }
    }

    public i(Context context) {
        this(new androidx.media3.datasource.b.a(context));
    }

    public i(Context context, l2.x xVar) {
        this(new androidx.media3.datasource.b.a(context), xVar);
    }

    public i(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        this(interfaceC0091a, new l2.m());
    }

    public i(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, l2.x xVar) {
        this.f12814b = interfaceC0091a;
        i3.h hVar = new i3.h();
        this.f12815c = hVar;
        a aVar = new a(xVar, hVar);
        this.f12813a = aVar;
        aVar.n(interfaceC0091a);
        this.f12818f = C.TIME_UNSET;
        this.f12819g = C.TIME_UNSET;
        this.f12820h = C.TIME_UNSET;
        this.f12821i = -3.4028235E38f;
        this.f12822j = -3.4028235E38f;
        this.f12823k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ r.a h(Class cls) {
        return o(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ r.a i(Class cls, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        return p(cls, interfaceC0091a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ l2.r[] l(androidx.media3.common.r rVar) {
        return new l2.r[]{this.f12815c.a(rVar) ? new i3.n(this.f12815c.c(rVar), null) : new b(rVar)};
    }

    private static r m(androidx.media3.common.t tVar, r rVar) {
        androidx.media3.common.t.d dVar = tVar.f10215f;
        return (dVar.f10240b == 0 && dVar.f10242d == Long.MIN_VALUE && !dVar.f10244f) ? rVar : new ClippingMediaSource.b(rVar).m(tVar.f10215f.f10240b).k(tVar.f10215f.f10242d).j(!tVar.f10215f.f10245g).i(tVar.f10215f.f10243e).l(tVar.f10215f.f10244f).h();
    }

    private r n(androidx.media3.common.t tVar, r rVar) {
        androidx.media3.common.util.a.e(tVar.f10211b);
        tVar.f10211b.getClass();
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r.a o(Class cls) {
        try {
            return (r.a) cls.getConstructor(null).newInstance(null);
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r.a p(Class cls, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        try {
            return (r.a) cls.getConstructor(androidx.media3.datasource.a.InterfaceC0091a.class).newInstance(interfaceC0091a);
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.r.a
    public r d(androidx.media3.common.t tVar) {
        androidx.media3.common.util.a.e(tVar.f10211b);
        String scheme = tVar.f10211b.f10303a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((r.a) androidx.media3.common.util.a.e(this.f12816d)).d(tVar);
        }
        if (Objects.equals(tVar.f10211b.f10304b, "application/x-image-uri")) {
            long jR0 = a1.R0(tVar.f10211b.f10311i);
            android.support.v4.media.session.c.a(androidx.media3.common.util.a.e(null));
            return new l.b(jR0, null).d(tVar);
        }
        androidx.media3.common.t.h hVar = tVar.f10211b;
        int iA0 = a1.A0(hVar.f10303a, hVar.f10304b);
        if (tVar.f10211b.f10311i != C.TIME_UNSET) {
            this.f12813a.p(1);
        }
        try {
            r.a aVarF = this.f12813a.f(iA0);
            androidx.media3.common.t.g.a aVarA = tVar.f10213d.a();
            if (tVar.f10213d.f10285a == C.TIME_UNSET) {
                aVarA.k(this.f12818f);
            }
            if (tVar.f10213d.f10288d == -3.4028235E38f) {
                aVarA.j(this.f12821i);
            }
            if (tVar.f10213d.f10289e == -3.4028235E38f) {
                aVarA.h(this.f12822j);
            }
            if (tVar.f10213d.f10286b == C.TIME_UNSET) {
                aVarA.i(this.f12819g);
            }
            if (tVar.f10213d.f10287c == C.TIME_UNSET) {
                aVarA.g(this.f12820h);
            }
            androidx.media3.common.t.g gVarF = aVarA.f();
            if (!gVarF.equals(tVar.f10213d)) {
                tVar = tVar.a().c(gVarF).a();
            }
            r rVarD = aVarF.d(tVar);
            ImmutableList immutableList = ((androidx.media3.common.t.h) a1.i(tVar.f10211b)).f10308f;
            if (!immutableList.isEmpty()) {
                r[] rVarArr = new r[immutableList.size() + 1];
                rVarArr[0] = rVarD;
                for (int i11 = 0; i11 < immutableList.size(); i11++) {
                    if (this.f12823k) {
                        final androidx.media3.common.r rVarN = new androidx.media3.common.r.b().u0(((androidx.media3.common.t.k) immutableList.get(i11)).f10330b).j0(((androidx.media3.common.t.k) immutableList.get(i11)).f10331c).w0(((androidx.media3.common.t.k) immutableList.get(i11)).f10332d).s0(((androidx.media3.common.t.k) immutableList.get(i11)).f10333e).h0(((androidx.media3.common.t.k) immutableList.get(i11)).f10334f).f0(((androidx.media3.common.t.k) immutableList.get(i11)).f10335g).N();
                        b0.b bVar = new b0.b(this.f12814b, new l2.x() { // from class: g2.g
                            @Override // l2.x
                            public /* synthetic */ l2.x a(i3.s.a aVar) {
                                return l2.w.d(this, aVar);
                            }

                            @Override // l2.x
                            public /* synthetic */ l2.x b(int i12) {
                                return l2.w.b(this, i12);
                            }

                            @Override // l2.x
                            public /* synthetic */ l2.r[] c(Uri uri, Map map) {
                                return l2.w.a(this, uri, map);
                            }

                            @Override // l2.x
                            public final l2.r[] createExtractors() {
                                return this.f63205b.l(rVarN);
                            }

                            @Override // l2.x
                            public /* synthetic */ l2.x d(boolean z10) {
                                return l2.w.c(this, z10);
                            }
                        });
                        if (this.f12815c.a(rVarN)) {
                            rVarN = rVarN.b().u0("application/x-media3-cues").S(rVarN.f10161o).W(this.f12815c.b(rVarN)).N();
                        }
                        b0.b bVarI = bVar.i(0, rVarN);
                        androidx.media3.exoplayer.upstream.m mVar = this.f12817e;
                        if (mVar != null) {
                            bVarI.f(mVar);
                        }
                        rVarArr[i11 + 1] = bVarI.d(androidx.media3.common.t.b(((androidx.media3.common.t.k) immutableList.get(i11)).f10329a.toString()));
                    } else {
                        h0.b bVar2 = new h0.b(this.f12814b);
                        androidx.media3.exoplayer.upstream.m mVar2 = this.f12817e;
                        if (mVar2 != null) {
                            bVar2.b(mVar2);
                        }
                        rVarArr[i11 + 1] = bVar2.a((androidx.media3.common.t.k) immutableList.get(i11), C.TIME_UNSET);
                    }
                }
                rVarD = new MergingMediaSource(rVarArr);
            }
            return n(tVar, m(tVar, rVarD));
        } catch (ClassNotFoundException e11) {
            throw new IllegalStateException(e11);
        }
    }

    @Override // androidx.media3.exoplayer.source.r.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public i c(boolean z10) {
        this.f12823k = z10;
        this.f12813a.r(z10);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.r.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public i b(int i11) {
        this.f12813a.m(i11);
        return this;
    }

    public i q(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        this.f12814b = interfaceC0091a;
        this.f12813a.n(interfaceC0091a);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.r.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public i e(androidx.media3.exoplayer.drm.w wVar) {
        this.f12813a.o((androidx.media3.exoplayer.drm.w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // androidx.media3.exoplayer.source.r.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public i f(androidx.media3.exoplayer.upstream.m mVar) {
        this.f12817e = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f12813a.q(mVar);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.r.a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public i a(i3.s.a aVar) {
        this.f12815c = (i3.s.a) androidx.media3.common.util.a.e(aVar);
        this.f12813a.s(aVar);
        return this;
    }
}
