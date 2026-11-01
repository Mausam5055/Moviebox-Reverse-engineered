package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class i implements o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f26195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.k.a f26196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o.a f26197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.z f26198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f26199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f26200f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f26201g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f26202h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f26203i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f26204j;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g9.r f26205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f26206b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set f26207c = new HashSet();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map f26208d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.k.a f26209e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.android.exoplayer2.drm.x f26210f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.z f26211g;

        public a(g9.r rVar) {
            this.f26205a = rVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ o.a k(com.google.android.exoplayer2.upstream.k.a aVar) {
            return new x.b(aVar, this.f26205a);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0076  */
        private com.google.common.base.q l(int i11) {
            com.google.common.base.q qVar;
            com.google.common.base.q qVar2;
            if (this.f26206b.containsKey(Integer.valueOf(i11))) {
                return (com.google.common.base.q) this.f26206b.get(Integer.valueOf(i11));
            }
            final com.google.android.exoplayer2.upstream.k.a aVar = (com.google.android.exoplayer2.upstream.k.a) com.google.android.exoplayer2.util.a.e(this.f26209e);
            com.google.common.base.q qVar3 = null;
            try {
                if (i11 == 0) {
                    final Class clsAsSubclass = DashMediaSource.Factory.class.asSubclass(o.a.class);
                    qVar = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.source.d
                        @Override // com.google.common.base.q
                        public final Object get() {
                            return i.f(clsAsSubclass, aVar);
                        }
                    };
                } else {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 == 3) {
                                final Class clsAsSubclass2 = RtspMediaSource.Factory.class.asSubclass(o.a.class);
                                qVar2 = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.source.g
                                    @Override // com.google.common.base.q
                                    public final Object get() {
                                        return i.e(clsAsSubclass2);
                                    }
                                };
                            } else if (i11 == 4) {
                                qVar2 = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.source.h
                                    @Override // com.google.common.base.q
                                    public final Object get() {
                                        return this.f25907a.k(aVar);
                                    }
                                };
                            }
                            qVar3 = qVar2;
                        } else {
                            final Class clsAsSubclass3 = HlsMediaSource.Factory.class.asSubclass(o.a.class);
                            qVar = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.source.f
                                @Override // com.google.common.base.q
                                public final Object get() {
                                    return i.f(clsAsSubclass3, aVar);
                                }
                            };
                        }
                        this.f26206b.put(Integer.valueOf(i11), qVar3);
                        if (qVar3 != null) {
                            this.f26207c.add(Integer.valueOf(i11));
                        }
                        return qVar3;
                    }
                    final Class clsAsSubclass4 = SsMediaSource.Factory.class.asSubclass(o.a.class);
                    qVar = new com.google.common.base.q() { // from class: com.google.android.exoplayer2.source.e
                        @Override // com.google.common.base.q
                        public final Object get() {
                            return i.f(clsAsSubclass4, aVar);
                        }
                    };
                }
                qVar3 = qVar;
            } catch (ClassNotFoundException unused) {
            }
            this.f26206b.put(Integer.valueOf(i11), qVar3);
            if (qVar3 != null) {
                this.f26207c.add(Integer.valueOf(i11));
            }
            return qVar3;
        }

        public o.a f(int i11) {
            o.a aVar = (o.a) this.f26208d.get(Integer.valueOf(i11));
            if (aVar != null) {
                return aVar;
            }
            com.google.common.base.q qVarL = l(i11);
            if (qVarL == null) {
                return null;
            }
            o.a aVar2 = (o.a) qVarL.get();
            com.google.android.exoplayer2.drm.x xVar = this.f26210f;
            if (xVar != null) {
                aVar2.b(xVar);
            }
            com.google.android.exoplayer2.upstream.z zVar = this.f26211g;
            if (zVar != null) {
                aVar2.c(zVar);
            }
            this.f26208d.put(Integer.valueOf(i11), aVar2);
            return aVar2;
        }

        public void m(com.google.android.exoplayer2.upstream.k.a aVar) {
            if (aVar != this.f26209e) {
                this.f26209e = aVar;
                this.f26206b.clear();
                this.f26208d.clear();
            }
        }

        public void n(com.google.android.exoplayer2.drm.x xVar) {
            this.f26210f = xVar;
            Iterator it = this.f26208d.values().iterator();
            while (it.hasNext()) {
                ((o.a) it.next()).b(xVar);
            }
        }

        public void o(com.google.android.exoplayer2.upstream.z zVar) {
            this.f26211g = zVar;
            Iterator it = this.f26208d.values().iterator();
            while (it.hasNext()) {
                ((o.a) it.next()).c(zVar);
            }
        }
    }

    private static final class b implements g9.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o1 f26212a;

        public b(o1 o1Var) {
            this.f26212a = o1Var;
        }

        @Override // g9.l
        public void b(g9.n nVar) {
            g9.e0 e0VarTrack = nVar.track(0, 3);
            nVar.d(new g9.b0.b(C.TIME_UNSET));
            nVar.endTracks();
            e0VarTrack.e(this.f26212a.b().e0("text/x-unknown").I(this.f26212a.f25496l).E());
        }

        @Override // g9.l
        public int c(g9.m mVar, g9.a0 a0Var) {
            return mVar.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // g9.l
        public boolean d(g9.m mVar) {
            return true;
        }

        @Override // g9.l
        public void release() {
        }

        @Override // g9.l
        public void seek(long j11, long j12) {
        }
    }

    public i(Context context, g9.r rVar) {
        this(new com.google.android.exoplayer2.upstream.r.a(context), rVar);
    }

    public i(com.google.android.exoplayer2.upstream.k.a aVar, g9.r rVar) {
        this.f26196b = aVar;
        a aVar2 = new a(rVar);
        this.f26195a = aVar2;
        aVar2.m(aVar);
        this.f26199e = C.TIME_UNSET;
        this.f26200f = C.TIME_UNSET;
        this.f26201g = C.TIME_UNSET;
        this.f26202h = -3.4028235E38f;
        this.f26203i = -3.4028235E38f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ o.a e(Class cls) {
        return j(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ o.a f(Class cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        return k(cls, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] g(o1 o1Var) {
        ba.k kVar = ba.k.f16298a;
        return new g9.l[]{kVar.a(o1Var) ? new ba.l(kVar.b(o1Var), o1Var) : new b(o1Var)};
    }

    private static o h(v1 v1Var, o oVar) {
        v1.d dVar = v1Var.f27713f;
        long j11 = dVar.f27730a;
        if (j11 == 0 && dVar.f27731b == Long.MIN_VALUE && !dVar.f27733d) {
            return oVar;
        }
        long jB0 = p0.B0(j11);
        long jB1 = p0.B0(v1Var.f27713f.f27731b);
        v1.d dVar2 = v1Var.f27713f;
        return new ClippingMediaSource(oVar, jB0, jB1, !dVar2.f27734e, dVar2.f27732c, dVar2.f27733d);
    }

    private o i(v1 v1Var, o oVar) {
        com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        v1Var.f27709b.getClass();
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o.a j(Class cls) {
        try {
            return (o.a) cls.getConstructor(null).newInstance(null);
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o.a k(Class cls, com.google.android.exoplayer2.upstream.k.a aVar) {
        try {
            return (o.a) cls.getConstructor(com.google.android.exoplayer2.upstream.k.a.class).newInstance(aVar);
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.source.o.a
    public o a(v1 v1Var) {
        com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        String scheme = v1Var.f27709b.f27772a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((o.a) com.google.android.exoplayer2.util.a.e(this.f26197c)).a(v1Var);
        }
        v1.h hVar = v1Var.f27709b;
        int iQ0 = p0.q0(hVar.f27772a, hVar.f27773b);
        o.a aVarF = this.f26195a.f(iQ0);
        com.google.android.exoplayer2.util.a.j(aVarF, "No suitable media source factory found for content type: " + iQ0);
        v1.g.a aVarB = v1Var.f27711d.b();
        if (v1Var.f27711d.f27762a == C.TIME_UNSET) {
            aVarB.k(this.f26199e);
        }
        if (v1Var.f27711d.f27765d == -3.4028235E38f) {
            aVarB.j(this.f26202h);
        }
        if (v1Var.f27711d.f27766e == -3.4028235E38f) {
            aVarB.h(this.f26203i);
        }
        if (v1Var.f27711d.f27763b == C.TIME_UNSET) {
            aVarB.i(this.f26200f);
        }
        if (v1Var.f27711d.f27764c == C.TIME_UNSET) {
            aVarB.g(this.f26201g);
        }
        v1.g gVarF = aVarB.f();
        if (!gVarF.equals(v1Var.f27711d)) {
            v1Var = v1Var.b().c(gVarF).a();
        }
        o oVarA = aVarF.a(v1Var);
        ImmutableList immutableList = ((v1.h) p0.j(v1Var.f27709b)).f27777f;
        if (!immutableList.isEmpty()) {
            o[] oVarArr = new o[immutableList.size() + 1];
            oVarArr[0] = oVarA;
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                if (this.f26204j) {
                    final o1 o1VarE = new o1.b().e0(((v1.l) immutableList.get(i11)).f27789b).V(((v1.l) immutableList.get(i11)).f27790c).g0(((v1.l) immutableList.get(i11)).f27791d).c0(((v1.l) immutableList.get(i11)).f27792e).U(((v1.l) immutableList.get(i11)).f27793f).S(((v1.l) immutableList.get(i11)).f27794g).E();
                    x.b bVar = new x.b(this.f26196b, new g9.r() { // from class: t9.f
                        @Override // g9.r
                        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
                            return g9.q.a(this, uri, map);
                        }

                        @Override // g9.r
                        public final g9.l[] createExtractors() {
                            return com.google.android.exoplayer2.source.i.g(o1VarE);
                        }
                    });
                    com.google.android.exoplayer2.upstream.z zVar = this.f26198d;
                    if (zVar != null) {
                        bVar.c(zVar);
                    }
                    oVarArr[i11 + 1] = bVar.a(v1.e(((v1.l) immutableList.get(i11)).f27788a.toString()));
                } else {
                    d0.b bVar2 = new d0.b(this.f26196b);
                    com.google.android.exoplayer2.upstream.z zVar2 = this.f26198d;
                    if (zVar2 != null) {
                        bVar2.b(zVar2);
                    }
                    oVarArr[i11 + 1] = bVar2.a((v1.l) immutableList.get(i11), C.TIME_UNSET);
                }
            }
            oVarA = new MergingMediaSource(oVarArr);
        }
        return i(v1Var, h(v1Var, oVarA));
    }

    @Override // com.google.android.exoplayer2.source.o.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public i b(com.google.android.exoplayer2.drm.x xVar) {
        this.f26195a.n((com.google.android.exoplayer2.drm.x) com.google.android.exoplayer2.util.a.f(xVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // com.google.android.exoplayer2.source.o.a
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public i c(com.google.android.exoplayer2.upstream.z zVar) {
        this.f26198d = (com.google.android.exoplayer2.upstream.z) com.google.android.exoplayer2.util.a.f(zVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f26195a.o(zVar);
        return this;
    }
}
