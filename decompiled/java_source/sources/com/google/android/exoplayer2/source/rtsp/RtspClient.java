package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes3.dex */
final class RtspClient implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f26263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f26264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SocketFactory f26266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f26267e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Uri f26271i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private y.a f26273k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f26274l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private KeepAliveMonitor f26275m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private l f26276n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f26278p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26279q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f26280r;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f26268f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SparseArray f26269g = new SparseArray();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c f26270h = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private u f26272j = new u(new b());

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f26281s = C.TIME_UNSET;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f26277o = -1;

    private final class KeepAliveMonitor implements Runnable, Closeable {
        private final long intervalMs;
        private boolean isStarted;
        private final Handler keepAliveHandler = p0.w();

        public KeepAliveMonitor(long j11) {
            this.intervalMs = j11;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.isStarted = false;
            this.keepAliveHandler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            RtspClient.this.f26270h.e(RtspClient.this.f26271i, RtspClient.this.f26274l);
            this.keepAliveHandler.postDelayed(this, this.intervalMs);
        }

        public void start() {
            if (this.isStarted) {
                return;
            }
            this.isStarted = true;
            this.keepAliveHandler.postDelayed(this, this.intervalMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class b implements u.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f26282a = p0.w();

        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void h(List list) {
            RtspClient.this.u0(list);
            if (y.d(list)) {
                g(list);
            } else {
                f(list);
            }
        }

        private void f(List list) {
            RtspClient.this.f26270h.d(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(y.j(list).f26331c.d("CSeq"))));
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void g(List list) {
            ImmutableList immutableListOf;
            c0 c0VarK = y.k(list);
            int i11 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(c0VarK.f26334b.d("CSeq")));
            b0 b0Var = (b0) RtspClient.this.f26269g.get(i11);
            if (b0Var == null) {
                return;
            }
            RtspClient.this.f26269g.remove(i11);
            int i12 = b0Var.f26330b;
            try {
                int i13 = c0VarK.f26333a;
                if (i13 == 200) {
                    switch (i12) {
                        case 1:
                        case 3:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                            return;
                        case 2:
                            i(new n(i13, h0.b(c0VarK.f26335c)));
                            return;
                        case 4:
                            j(new z(i13, y.i(c0VarK.f26334b.d("Public"))));
                            return;
                        case 5:
                            k();
                            return;
                        case 6:
                            String strD = c0VarK.f26334b.d("Range");
                            d0 d0VarD = strD == null ? d0.f26339c : d0.d(strD);
                            try {
                                String strD2 = c0VarK.f26334b.d("RTP-Info");
                                immutableListOf = strD2 == null ? ImmutableList.of() : f0.a(strD2, RtspClient.this.f26271i);
                            } catch (ParserException unused) {
                                immutableListOf = ImmutableList.of();
                            }
                            l(new a0(c0VarK.f26333a, d0VarD, immutableListOf));
                            return;
                        case 10:
                            String strD3 = c0VarK.f26334b.d("Session");
                            String strD4 = c0VarK.f26334b.d("Transport");
                            if (strD3 == null || strD4 == null) {
                                throw ParserException.createForMalformedManifest("Missing mandatory session or transport header", null);
                            }
                            m(new e0(c0VarK.f26333a, y.l(strD3), strD4));
                            return;
                        default:
                            throw new IllegalStateException();
                    }
                    RtspClient.this.p0(new RtspMediaSource.RtspPlaybackException(e));
                }
                if (i13 != 401) {
                    if (i13 == 301 || i13 == 302) {
                        if (RtspClient.this.f26277o != -1) {
                            RtspClient.this.f26277o = 0;
                        }
                        String strD5 = c0VarK.f26334b.d(HttpHeaders.LOCATION);
                        if (strD5 == null) {
                            RtspClient.this.f26263a.a("Redirection without new location.", null);
                            return;
                        }
                        Uri uri = Uri.parse(strD5);
                        RtspClient.this.f26271i = y.o(uri);
                        RtspClient.this.f26273k = y.m(uri);
                        RtspClient.this.f26270h.c(RtspClient.this.f26271i, RtspClient.this.f26274l);
                        return;
                    }
                } else if (RtspClient.this.f26273k != null && !RtspClient.this.f26279q) {
                    ImmutableList immutableListE = c0VarK.f26334b.e("WWW-Authenticate");
                    if (immutableListE.isEmpty()) {
                        throw ParserException.createForMalformedManifest("Missing WWW-Authenticate header in a 401 response.", null);
                    }
                    for (int i14 = 0; i14 < immutableListE.size(); i14++) {
                        RtspClient.this.f26276n = y.n((String) immutableListE.get(i14));
                        if (RtspClient.this.f26276n.f26436a == 2) {
                            break;
                        }
                    }
                    RtspClient.this.f26270h.b();
                    RtspClient.this.f26279q = true;
                    return;
                }
                RtspClient rtspClient = RtspClient.this;
                String strS = y.s(i12);
                int i15 = c0VarK.f26333a;
                StringBuilder sb2 = new StringBuilder(String.valueOf(strS).length() + 12);
                sb2.append(strS);
                sb2.append(" ");
                sb2.append(i15);
                rtspClient.p0(new RtspMediaSource.RtspPlaybackException(sb2.toString()));
            } catch (ParserException e11) {
                RtspClient.this.p0(new RtspMediaSource.RtspPlaybackException(e11));
            }
        }

        private void i(n nVar) {
            d0 d0VarD = d0.f26339c;
            String str = (String) nVar.f26444b.f26392a.get("range");
            if (str != null) {
                try {
                    d0VarD = d0.d(str);
                } catch (ParserException e11) {
                    RtspClient.this.f26263a.a("SDP format error.", e11);
                    return;
                }
            }
            ImmutableList immutableListM0 = RtspClient.m0(nVar.f26444b, RtspClient.this.f26271i);
            if (immutableListM0.isEmpty()) {
                RtspClient.this.f26263a.a("No playable track.", null);
            } else {
                RtspClient.this.f26263a.g(d0VarD, immutableListM0);
                RtspClient.this.f26278p = true;
            }
        }

        private void j(z zVar) {
            if (RtspClient.this.f26275m != null) {
                return;
            }
            if (RtspClient.z0(zVar.f26524b)) {
                RtspClient.this.f26270h.c(RtspClient.this.f26271i, RtspClient.this.f26274l);
            } else {
                RtspClient.this.f26263a.a("DESCRIBE not supported.", null);
            }
        }

        private void k() {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f26277o == 2);
            RtspClient.this.f26277o = 1;
            RtspClient.this.f26280r = false;
            if (RtspClient.this.f26281s != C.TIME_UNSET) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.E0(p0.e1(rtspClient.f26281s));
            }
        }

        private void l(a0 a0Var) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f26277o == 1);
            RtspClient.this.f26277o = 2;
            if (RtspClient.this.f26275m == null) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.f26275m = rtspClient.new KeepAliveMonitor(30000L);
                RtspClient.this.f26275m.start();
            }
            RtspClient.this.f26281s = C.TIME_UNSET;
            RtspClient.this.f26264b.f(p0.B0(a0Var.f26327b.f26341a), a0Var.f26328c);
        }

        private void m(e0 e0Var) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f26277o != -1);
            RtspClient.this.f26277o = 1;
            RtspClient.this.f26274l = e0Var.f26354b.f26521a;
            RtspClient.this.o0();
        }

        @Override // com.google.android.exoplayer2.source.rtsp.u.d
        public /* synthetic */ void a(Exception exc) {
            v.a(this, exc);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.u.d
        public /* synthetic */ void b(List list, Exception exc) {
            v.b(this, list, exc);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.u.d
        public void c(final List list) {
            this.f26282a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f26441a.h(list);
                }
            });
        }
    }

    private final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f26284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b0 f26285b;

        private c() {
        }

        private b0 a(int i11, String str, Map map, Uri uri) {
            String str2 = RtspClient.this.f26265c;
            int i12 = this.f26284a;
            this.f26284a = i12 + 1;
            o.b bVar = new o.b(str2, str, i12);
            if (RtspClient.this.f26276n != null) {
                com.google.android.exoplayer2.util.a.i(RtspClient.this.f26273k);
                try {
                    bVar.b(HttpHeaders.AUTHORIZATION, RtspClient.this.f26276n.a(RtspClient.this.f26273k, uri, i11));
                } catch (ParserException e11) {
                    RtspClient.this.p0(new RtspMediaSource.RtspPlaybackException(e11));
                }
            }
            bVar.d(map);
            return new b0(uri, i11, bVar.e(), "");
        }

        private void h(b0 b0Var) {
            int i11 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(b0Var.f26331c.d("CSeq")));
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f26269g.get(i11) == null);
            RtspClient.this.f26269g.append(i11, b0Var);
            ImmutableList immutableListP = y.p(b0Var);
            RtspClient.this.u0(immutableListP);
            RtspClient.this.f26272j.l(immutableListP);
            this.f26285b = b0Var;
        }

        private void i(c0 c0Var) {
            ImmutableList immutableListQ = y.q(c0Var);
            RtspClient.this.u0(immutableListQ);
            RtspClient.this.f26272j.l(immutableListQ);
        }

        public void b() {
            com.google.android.exoplayer2.util.a.i(this.f26285b);
            ImmutableListMultimap immutableListMultimapB = this.f26285b.f26331c.b();
            HashMap map = new HashMap();
            for (String str : immutableListMultimapB.keySet()) {
                if (!str.equals("CSeq") && !str.equals("User-Agent") && !str.equals("Session") && !str.equals(HttpHeaders.AUTHORIZATION)) {
                    map.put(str, (String) g3.g(immutableListMultimapB.get((Object) str)));
                }
            }
            h(a(this.f26285b.f26330b, RtspClient.this.f26274l, map, this.f26285b.f26329a));
        }

        public void c(Uri uri, String str) {
            h(a(2, str, ImmutableMap.of(), uri));
        }

        public void d(int i11) {
            i(new c0(TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE, new o.b(RtspClient.this.f26265c, RtspClient.this.f26274l, i11).e()));
            this.f26284a = Math.max(this.f26284a, i11 + 1);
        }

        public void e(Uri uri, String str) {
            h(a(4, str, ImmutableMap.of(), uri));
        }

        public void f(Uri uri, String str) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f26277o == 2);
            h(a(5, str, ImmutableMap.of(), uri));
            RtspClient.this.f26280r = true;
        }

        public void g(Uri uri, long j11, String str) {
            boolean z10 = true;
            if (RtspClient.this.f26277o != 1 && RtspClient.this.f26277o != 2) {
                z10 = false;
            }
            com.google.android.exoplayer2.util.a.g(z10);
            h(a(6, str, ImmutableMap.of("Range", d0.b(j11)), uri));
        }

        public void j(Uri uri, String str, String str2) {
            RtspClient.this.f26277o = 0;
            h(a(10, str2, ImmutableMap.of("Transport", str), uri));
        }

        public void k(Uri uri, String str) {
            if (RtspClient.this.f26277o == -1 || RtspClient.this.f26277o == 0) {
                return;
            }
            RtspClient.this.f26277o = 0;
            h(a(12, str, ImmutableMap.of(), uri));
        }
    }

    public interface d {
        void b(RtspMediaSource.RtspPlaybackException rtspPlaybackException);

        void e();

        void f(long j11, ImmutableList immutableList);
    }

    public interface e {
        void a(String str, Throwable th2);

        void g(d0 d0Var, ImmutableList immutableList);
    }

    public RtspClient(e eVar, d dVar, String str, Uri uri, SocketFactory socketFactory, boolean z10) {
        this.f26263a = eVar;
        this.f26264b = dVar;
        this.f26265c = str;
        this.f26266d = socketFactory;
        this.f26267e = z10;
        this.f26271i = y.o(uri);
        this.f26273k = y.m(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList m0(g0 g0Var, Uri uri) {
        ImmutableList.a aVar = new ImmutableList.a();
        for (int i11 = 0; i11 < g0Var.f26393b.size(); i11++) {
            com.google.android.exoplayer2.source.rtsp.a aVar2 = (com.google.android.exoplayer2.source.rtsp.a) g0Var.f26393b.get(i11);
            if (j.b(aVar2)) {
                aVar.a(new t(aVar2, uri));
            }
        }
        return aVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        p.d dVar = (p.d) this.f26268f.pollFirst();
        if (dVar == null) {
            this.f26264b.e();
        } else {
            this.f26270h.j(dVar.c(), dVar.d(), this.f26274l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(Throwable th2) {
        RtspMediaSource.RtspPlaybackException rtspPlaybackException = th2 instanceof RtspMediaSource.RtspPlaybackException ? (RtspMediaSource.RtspPlaybackException) th2 : new RtspMediaSource.RtspPlaybackException(th2);
        if (this.f26278p) {
            this.f26264b.b(rtspPlaybackException);
        } else {
            this.f26263a.a(com.google.common.base.p.e(th2.getMessage()), th2);
        }
    }

    private Socket q0(Uri uri) {
        com.google.android.exoplayer2.util.a.a(uri.getHost() != null);
        return this.f26266d.createSocket((String) com.google.android.exoplayer2.util.a.e(uri.getHost()), uri.getPort() > 0 ? uri.getPort() : 554);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(List list) {
        if (this.f26267e) {
            com.google.android.exoplayer2.util.s.b("RtspClient", com.google.common.base.g.h("\n").d(list));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean z0(List list) {
        return list.isEmpty() || list.contains(2);
    }

    public void B0(List list) {
        this.f26268f.addAll(list);
        o0();
    }

    public void C0() throws IOException {
        try {
            this.f26272j.i(q0(this.f26271i));
            this.f26270h.e(this.f26271i, this.f26274l);
        } catch (IOException e11) {
            p0.n(this.f26272j);
            throw e11;
        }
    }

    public void E0(long j11) {
        this.f26270h.g(this.f26271i, j11, (String) com.google.android.exoplayer2.util.a.e(this.f26274l));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        KeepAliveMonitor keepAliveMonitor = this.f26275m;
        if (keepAliveMonitor != null) {
            keepAliveMonitor.close();
            this.f26275m = null;
            this.f26270h.k(this.f26271i, (String) com.google.android.exoplayer2.util.a.e(this.f26274l));
        }
        this.f26272j.close();
    }

    public int r0() {
        return this.f26277o;
    }

    public void v0(int i11, u.b bVar) {
        this.f26272j.k(i11, bVar);
    }

    public void x0() {
        try {
            close();
            u uVar = new u(new b());
            this.f26272j = uVar;
            uVar.i(q0(this.f26271i));
            this.f26274l = null;
            this.f26279q = false;
            this.f26276n = null;
        } catch (IOException e11) {
            this.f26264b.b(new RtspMediaSource.RtspPlaybackException(e11));
        }
    }

    public void y0(long j11) {
        if (this.f26277o == 2 && !this.f26280r) {
            this.f26270h.f(this.f26271i, (String) com.google.android.exoplayer2.util.a.e(this.f26274l));
        }
        this.f26281s = j11;
    }
}
