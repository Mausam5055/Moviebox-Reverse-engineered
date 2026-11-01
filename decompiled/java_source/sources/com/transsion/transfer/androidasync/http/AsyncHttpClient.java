package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.AsyncSSLException;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncHttpClient {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AsyncHttpClient f55238f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f55239a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n f55240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    t f55241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    v f55242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    AsyncServer f55243e;

    class a implements bv.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f55244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.http.j f55245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ h f55246c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ dv.a f55247d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.http.g.C0675g f55248e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f55249f;

        a(com.transsion.transfer.androidasync.http.j jVar, h hVar, dv.a aVar, com.transsion.transfer.androidasync.http.g.C0675g c0675g, int i11) {
            this.f55245b = jVar;
            this.f55246c = hVar;
            this.f55247d = aVar;
            this.f55248e = c0675g;
            this.f55249f = i11;
        }

        @Override // bv.b
        public void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
            if (this.f55244a && jVar != null) {
                jVar.t(new bv.d.a());
                jVar.s(new bv.a.C0149a());
                jVar.close();
                throw new AssertionError("double connect callback");
            }
            this.f55244a = true;
            this.f55245b.u("socket connected");
            if (this.f55246c.isCancelled()) {
                if (jVar != null) {
                    jVar.close();
                    return;
                }
                return;
            }
            h hVar = this.f55246c;
            if (hVar.f55278h != null) {
                hVar.f55277g.cancel();
            }
            if (exc != null) {
                AsyncHttpClient.this.H(this.f55246c, exc, null, this.f55245b, this.f55247d);
                return;
            }
            com.transsion.transfer.androidasync.http.g.C0675g c0675g = this.f55248e;
            c0675g.f55356f = jVar;
            h hVar2 = this.f55246c;
            hVar2.f55276f = jVar;
            AsyncHttpClient.this.u(this.f55245b, this.f55249f, hVar2, this.f55247d, c0675g);
        }
    }

    class b extends l {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ h f55251q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.http.j f55252r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ dv.a f55253s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.http.g.C0675g f55254t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ int f55255u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.transsion.transfer.androidasync.http.j jVar, h hVar, com.transsion.transfer.androidasync.http.j jVar2, dv.a aVar, com.transsion.transfer.androidasync.http.g.C0675g c0675g, int i11) {
            super(jVar);
            this.f55251q = hVar;
            this.f55252r = jVar2;
            this.f55253s = aVar;
            this.f55254t = c0675g;
            this.f55255u = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void W(com.transsion.transfer.androidasync.http.j jVar, int i11, h hVar, dv.a aVar) {
            AsyncHttpClient.this.r(jVar, i11, hVar, aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(com.transsion.transfer.androidasync.http.j jVar, int i11, h hVar, dv.a aVar) {
            AsyncHttpClient.this.r(jVar, i11 + 1, hVar, aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.transsion.transfer.androidasync.http.l, com.transsion.transfer.androidasync.q
        public void M(Exception exc) {
            if (exc != null) {
                this.f55252r.s("exception during response", exc);
            }
            if (this.f55251q.isCancelled()) {
                return;
            }
            if (exc instanceof AsyncSSLException) {
                this.f55252r.s("SSL Exception", exc);
                AsyncSSLException asyncSSLException = (AsyncSSLException) exc;
                this.f55252r.v(asyncSSLException);
                if (asyncSSLException.getIgnore()) {
                    return;
                }
            }
            com.transsion.transfer.androidasync.j jVarSocket = socket();
            if (jVarSocket == null) {
                return;
            }
            super.M(exc);
            if ((!jVarSocket.isOpen() || exc != null) && e() == null && exc != null) {
                AsyncHttpClient.this.H(this.f55251q, exc, null, this.f55252r, this.f55253s);
            }
            this.f55254t.f55362k = exc;
            Iterator it = AsyncHttpClient.this.f55239a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).b(this.f55254t);
            }
        }

        @Override // com.transsion.transfer.androidasync.t
        public void N(com.transsion.transfer.androidasync.p pVar) {
            this.f55254t.f55355j = pVar;
            Iterator it = AsyncHttpClient.this.f55239a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).d(this.f55254t);
            }
            super.N(this.f55254t.f55355j);
            Iterator it2 = AsyncHttpClient.this.f55239a.iterator();
            while (it2.hasNext()) {
                final com.transsion.transfer.androidasync.http.j jVarH = ((com.transsion.transfer.androidasync.http.g) it2.next()).h(this.f55254t);
                if (jVarH != null) {
                    com.transsion.transfer.androidasync.http.j jVar = this.f55252r;
                    jVarH.f55374l = jVar.f55374l;
                    jVarH.f55373k = jVar.f55373k;
                    jVarH.f55372j = jVar.f55372j;
                    jVarH.f55370h = jVar.f55370h;
                    jVarH.f55371i = jVar.f55371i;
                    AsyncHttpClient.I(jVarH);
                    this.f55252r.t("Response intercepted by middleware");
                    jVarH.t("Request initiated by middleware intercept by middleware");
                    AsyncServer asyncServer = AsyncHttpClient.this.f55243e;
                    final int i11 = this.f55255u;
                    final h hVar = this.f55251q;
                    final dv.a aVar = this.f55253s;
                    asyncServer.D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f55323a.W(jVarH, i11, hVar, aVar);
                        }
                    });
                    t(new bv.d.a());
                    return;
                }
            }
            Headers headers = this.f55379j;
            int iB = b();
            if ((iB != 301 && iB != 302 && iB != 307) || !this.f55252r.g()) {
                this.f55252r.u("Final (post cache response) headers:\n" + toString());
                AsyncHttpClient.this.H(this.f55251q, null, this, this.f55252r, this.f55253s);
                return;
            }
            String strC = headers.c(HttpHeaders.LOCATION);
            try {
                Uri uri = Uri.parse(strC);
                if (uri.getScheme() == null) {
                    uri = Uri.parse(new URL(new URL(this.f55252r.p().toString()), strC).toString());
                }
                final com.transsion.transfer.androidasync.http.j jVar2 = new com.transsion.transfer.androidasync.http.j(uri, this.f55252r.j().equals("HEAD") ? "HEAD" : "GET");
                com.transsion.transfer.androidasync.http.j jVar3 = this.f55252r;
                jVar2.f55374l = jVar3.f55374l;
                jVar2.f55373k = jVar3.f55373k;
                jVar2.f55372j = jVar3.f55372j;
                jVar2.f55370h = jVar3.f55370h;
                jVar2.f55371i = jVar3.f55371i;
                AsyncHttpClient.I(jVar2);
                AsyncHttpClient.o(this.f55252r, jVar2, "User-Agent");
                AsyncHttpClient.o(this.f55252r, jVar2, "Range");
                this.f55252r.t("Redirecting");
                jVar2.t("Redirected");
                AsyncServer asyncServer2 = AsyncHttpClient.this.f55243e;
                final int i12 = this.f55255u;
                final h hVar2 = this.f55251q;
                final dv.a aVar2 = this.f55253s;
                asyncServer2.D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f55330a.X(jVar2, i12, hVar2, aVar2);
                    }
                });
                t(new bv.d.a());
            } catch (Exception e11) {
                AsyncHttpClient.this.H(this.f55251q, e11, this, this.f55252r, this.f55253s);
            }
        }

        @Override // com.transsion.transfer.androidasync.http.l
        protected void P() {
            super.P();
            if (this.f55251q.isCancelled()) {
                return;
            }
            h hVar = this.f55251q;
            if (hVar.f55278h != null) {
                hVar.f55277g.cancel();
            }
            this.f55252r.u("Received headers:\n" + toString());
            Iterator it = AsyncHttpClient.this.f55239a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).g(this.f55254t);
            }
        }

        @Override // com.transsion.transfer.androidasync.http.l
        protected void R(Exception exc) {
            if (exc != null) {
                AsyncHttpClient.this.H(this.f55251q, exc, null, this.f55252r, this.f55253s);
                return;
            }
            this.f55252r.u("request completed");
            if (this.f55251q.isCancelled()) {
                return;
            }
            h hVar = this.f55251q;
            if (hVar.f55278h != null && this.f55379j == null) {
                hVar.f55277g.cancel();
                h hVar2 = this.f55251q;
                hVar2.f55277g = AsyncHttpClient.this.f55243e.E(hVar2.f55278h, AsyncHttpClient.y(this.f55252r));
            }
            Iterator it = AsyncHttpClient.this.f55239a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).c(this.f55254t);
            }
        }

        @Override // com.transsion.transfer.androidasync.http.k
        public com.transsion.transfer.androidasync.j z() {
            this.f55252r.r("Detaching socket");
            com.transsion.transfer.androidasync.j jVarSocket = socket();
            if (jVarSocket == null) {
                return null;
            }
            jVarSocket.o(null);
            jVarSocket.p(null);
            jVarSocket.s(null);
            jVarSocket.t(null);
            S(null);
            return jVarSocket;
        }
    }

    class c implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f55257a;

        c(l lVar) {
            this.f55257a = lVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (exc != null) {
                this.f55257a.M(exc);
            } else {
                this.f55257a.Q();
            }
        }
    }

    class d implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f55259a;

        d(l lVar) {
            this.f55259a = lVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (exc != null) {
                this.f55259a.M(exc);
            } else {
                this.f55259a.P();
            }
        }
    }

    class e extends com.transsion.transfer.androidasync.future.w {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ h f55261f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ OutputStream f55262g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ File f55263h;

        e(h hVar, OutputStream outputStream, File file) {
            this.f55261f = hVar;
            this.f55262g = outputStream;
            this.f55263h = file;
        }

        @Override // com.transsion.transfer.androidasync.future.n
        public void cancelCleanup() {
            try {
                ((com.transsion.transfer.androidasync.http.k) this.f55261f.get()).t(new bv.d.a());
                ((com.transsion.transfer.androidasync.http.k) this.f55261f.get()).close();
            } catch (Exception unused) {
            }
            try {
                this.f55262g.close();
            } catch (Exception unused2) {
            }
            this.f55263h.delete();
        }
    }

    class f implements dv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f55265a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OutputStream f55266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ File f55267c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ g f55268d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.future.w f55269e;

        class a extends com.transsion.transfer.androidasync.stream.a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.transsion.transfer.androidasync.http.k f55271b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ long f55272c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(OutputStream outputStream, com.transsion.transfer.androidasync.http.k kVar, long j11) {
                super(outputStream);
                this.f55271b = kVar;
                this.f55272c = j11;
            }

            @Override // com.transsion.transfer.androidasync.stream.a, bv.d
            public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                f.this.f55265a += (long) byteBufferList.C();
                super.F(pVar, byteBufferList);
                f fVar = f.this;
                AsyncHttpClient.this.C(fVar.f55268d, this.f55271b, fVar.f55265a, this.f55272c);
            }
        }

        class b implements bv.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.transsion.transfer.androidasync.http.k f55274a;

            b(com.transsion.transfer.androidasync.http.k kVar) {
                this.f55274a = kVar;
            }

            @Override // bv.a
            public void g(Exception e11) {
                try {
                    f.this.f55266b.close();
                } catch (IOException e12) {
                    e11 = e12;
                }
                Exception exc = e11;
                if (exc == null) {
                    f fVar = f.this;
                    AsyncHttpClient.this.E(fVar.f55268d, fVar.f55269e, this.f55274a, null, fVar.f55267c);
                } else {
                    f.this.f55267c.delete();
                    f fVar2 = f.this;
                    AsyncHttpClient.this.E(fVar2.f55268d, fVar2.f55269e, this.f55274a, exc, null);
                }
            }
        }

        f(OutputStream outputStream, File file, g gVar, com.transsion.transfer.androidasync.future.w wVar) {
            this.f55266b = outputStream;
            this.f55267c = file;
            this.f55268d = gVar;
            this.f55269e = wVar;
        }

        @Override // dv.a
        public void a(Exception exc, com.transsion.transfer.androidasync.http.k kVar) {
            if (exc != null) {
                try {
                    this.f55266b.close();
                } catch (IOException unused) {
                }
                this.f55267c.delete();
                AsyncHttpClient.this.E(this.f55268d, this.f55269e, kVar, exc, null);
            } else {
                AsyncHttpClient.this.B(this.f55268d, kVar);
                kVar.t(new a(this.f55266b, kVar, HttpUtil.a(kVar.e())));
                kVar.s(new b(kVar));
            }
        }
    }

    public static abstract class g extends i {
    }

    /* JADX INFO: Access modifiers changed from: private */
    class h extends com.transsion.transfer.androidasync.future.w {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.transsion.transfer.androidasync.j f55276f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public com.transsion.transfer.androidasync.future.a f55277g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Runnable f55278h;

        private h() {
        }

        @Override // com.transsion.transfer.androidasync.future.w, com.transsion.transfer.androidasync.future.n, com.transsion.transfer.androidasync.future.a
        public boolean cancel() {
            if (!super.cancel()) {
                return false;
            }
            com.transsion.transfer.androidasync.j jVar = this.f55276f;
            if (jVar != null) {
                jVar.t(new bv.d.a());
                this.f55276f.close();
            }
            com.transsion.transfer.androidasync.future.a aVar = this.f55277g;
            if (aVar == null) {
                return true;
            }
            aVar.cancel();
            return true;
        }
    }

    public static abstract class i implements dv.b {
        @Override // dv.b
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j11, long j12) {
        }

        @Override // dv.b
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
        }
    }

    public static abstract class j extends i {
    }

    public interface k {
        void a(Exception exc, b0 b0Var);
    }

    public AsyncHttpClient(AsyncServer asyncServer) {
        this.f55243e = asyncServer;
        t tVar = new t(this);
        this.f55241c = tVar;
        z(tVar);
        n nVar = new n(this);
        this.f55240b = nVar;
        z(nVar);
        v vVar = new v();
        this.f55242d = vVar;
        z(vVar);
        this.f55240b.A(new z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void E(final dv.b bVar, final com.transsion.transfer.androidasync.future.w wVar, final com.transsion.transfer.androidasync.http.k kVar, final Exception exc, final Object obj) {
        this.f55243e.D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.AsyncHttpClient.7
            @Override // java.lang.Runnable
            public void run() {
                AsyncHttpClient.this.D(bVar, wVar, kVar, exc, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(dv.b bVar, com.transsion.transfer.androidasync.http.k kVar) {
        if (bVar != null) {
            bVar.b(kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(dv.b bVar, com.transsion.transfer.androidasync.http.k kVar, long j11, long j12) {
        if (bVar != null) {
            bVar.a(kVar, j11, j12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(dv.b bVar, com.transsion.transfer.androidasync.future.w wVar, com.transsion.transfer.androidasync.http.k kVar, Exception exc, Object obj) {
        if ((exc != null ? wVar.G(exc) : wVar.J(obj)) && bVar != null) {
            bVar.c(exc, kVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(final dv.b bVar, final com.transsion.transfer.androidasync.future.w wVar, fv.a aVar, Exception exc, final com.transsion.transfer.androidasync.http.k kVar) {
        if (exc != null) {
            E(bVar, wVar, kVar, exc, null);
            return;
        }
        B(bVar, kVar);
        com.transsion.transfer.androidasync.future.f fVarA = aVar.a(kVar);
        fVarA.f(new com.transsion.transfer.androidasync.future.g() { // from class: com.transsion.transfer.androidasync.http.b
            @Override // com.transsion.transfer.androidasync.future.g
            public final void a(Exception exc2, Object obj) {
                this.f55314a.E(bVar, wVar, kVar, exc2, obj);
            }
        });
        wVar.setParent(fVarA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G(com.transsion.transfer.androidasync.future.w wVar, k kVar, com.transsion.transfer.androidasync.http.j jVar, Exception exc, com.transsion.transfer.androidasync.http.k kVar2) {
        if (exc != null) {
            if (!wVar.G(exc) || kVar == null) {
                return;
            }
            kVar.a(exc, null);
            return;
        }
        b0 b0VarF = f0.F(jVar.h(), kVar2);
        if (b0VarF == null) {
            exc = new WebSocketHandshakeException("Unable to complete websocket handshake");
            kVar2.close();
            if (!wVar.G(exc)) {
                return;
            }
        } else if (!wVar.J(b0VarF)) {
            return;
        }
        if (kVar != null) {
            kVar.a(exc, b0VarF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(h hVar, Exception exc, l lVar, com.transsion.transfer.androidasync.http.j jVar, dv.a aVar) {
        boolean zJ;
        hVar.f55277g.cancel();
        if (exc != null) {
            jVar.s("Connection error", exc);
            zJ = hVar.G(exc);
        } else {
            jVar.r("Connection successful");
            zJ = hVar.J(lVar);
        }
        if (zJ) {
            aVar.a(exc, lVar);
        } else if (lVar != null) {
            lVar.t(new bv.d.a());
            lVar.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void I(com.transsion.transfer.androidasync.http.j jVar) {
        if (jVar.f55370h != null) {
            return;
        }
        try {
            List<Proxy> listSelect = ProxySelector.getDefault().select(URI.create(jVar.p().toString()));
            if (listSelect.isEmpty()) {
                return;
            }
            Proxy proxy = listSelect.get(0);
            if (proxy.type() == Proxy.Type.HTTP && (proxy.address() instanceof InetSocketAddress)) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                jVar.d(inetSocketAddress.getHostString(), inetSocketAddress.getPort());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(com.transsion.transfer.androidasync.http.j jVar, com.transsion.transfer.androidasync.http.j jVar2, String str) {
        String strC = jVar.h().c(str);
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        jVar2.h().f(str, strC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(final com.transsion.transfer.androidasync.http.j jVar, final int i11, final h hVar, final dv.a aVar) {
        if (this.f55243e.t()) {
            s(jVar, i11, hVar, aVar);
        } else {
            this.f55243e.D(new Runnable() { // from class: com.transsion.transfer.androidasync.http.AsyncHttpClient.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncHttpClient.this.s(jVar, i11, hVar, aVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final com.transsion.transfer.androidasync.http.j jVar, int i11, final h hVar, final dv.a aVar) {
        if (i11 > 15) {
            H(hVar, new RedirectLimitExceededException("too many redirects"), null, jVar, aVar);
            return;
        }
        jVar.p();
        final com.transsion.transfer.androidasync.http.g.C0675g c0675g = new com.transsion.transfer.androidasync.http.g.C0675g();
        jVar.f55374l = System.currentTimeMillis();
        c0675g.f55361b = jVar;
        jVar.r("Executing request.");
        Iterator it = this.f55239a.iterator();
        while (it.hasNext()) {
            ((com.transsion.transfer.androidasync.http.g) it.next()).a(c0675g);
        }
        if (jVar.o() > 0) {
            Runnable runnable = new Runnable() { // from class: com.transsion.transfer.androidasync.http.AsyncHttpClient.2
                @Override // java.lang.Runnable
                public void run() {
                    com.transsion.transfer.androidasync.future.a aVar2 = c0675g.f55353d;
                    if (aVar2 != null) {
                        aVar2.cancel();
                        com.transsion.transfer.androidasync.j jVar2 = c0675g.f55356f;
                        if (jVar2 != null) {
                            jVar2.close();
                        }
                    }
                    AsyncHttpClient.this.H(hVar, new TimeoutException(), null, jVar, aVar);
                }
            };
            hVar.f55278h = runnable;
            hVar.f55277g = this.f55243e.E(runnable, y(jVar));
        }
        c0675g.f55352c = new a(jVar, hVar, aVar, c0675g, i11);
        I(jVar);
        if (jVar.e() != null && jVar.h().c(HttpHeaders.CONTENT_TYPE) == null) {
            jVar.h().f(HttpHeaders.CONTENT_TYPE, jVar.e().j());
        }
        Iterator it2 = this.f55239a.iterator();
        while (it2.hasNext()) {
            com.transsion.transfer.androidasync.future.a aVarE = ((com.transsion.transfer.androidasync.http.g) it2.next()).e(c0675g);
            if (aVarE != null) {
                c0675g.f55353d = aVarE;
                hVar.setParent(aVarE);
                return;
            }
        }
        H(hVar, new IllegalArgumentException("invalid uri=" + jVar.p() + " middlewares=" + this.f55239a), null, jVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(com.transsion.transfer.androidasync.http.j jVar, int i11, h hVar, dv.a aVar, com.transsion.transfer.androidasync.http.g.C0675g c0675g) {
        b bVar = new b(jVar, hVar, jVar, aVar, c0675g, i11);
        c0675g.f55358h = new c(bVar);
        c0675g.f55359i = new d(bVar);
        c0675g.f55357g = bVar;
        bVar.S(c0675g.f55356f);
        Iterator it = this.f55239a.iterator();
        while (it.hasNext() && !((com.transsion.transfer.androidasync.http.g) it.next()).f(c0675g)) {
        }
    }

    public static AsyncHttpClient w() {
        if (f55238f == null) {
            f55238f = new AsyncHttpClient(AsyncServer.r());
        }
        return f55238f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long y(com.transsion.transfer.androidasync.http.j jVar) {
        return jVar.o();
    }

    public com.transsion.transfer.androidasync.future.f J(com.transsion.transfer.androidasync.http.j jVar, String str, k kVar) {
        return K(jVar, str != null ? new String[]{str} : null, kVar);
    }

    public com.transsion.transfer.androidasync.future.f K(final com.transsion.transfer.androidasync.http.j jVar, String[] strArr, final k kVar) {
        f0.C(jVar, strArr);
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        wVar.setParent(p(jVar, new dv.a() { // from class: com.transsion.transfer.androidasync.http.c
            @Override // dv.a
            public final void a(Exception exc, k kVar2) {
                AsyncHttpClient.G(wVar, kVar, jVar, exc, kVar2);
            }
        }));
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f L(String str, String str2, k kVar) {
        return J(new com.transsion.transfer.androidasync.http.h(str.replace("ws://", "http://").replace("wss://", "https://")), str2, kVar);
    }

    public com.transsion.transfer.androidasync.future.f p(com.transsion.transfer.androidasync.http.j jVar, dv.a aVar) {
        h hVar = new h();
        r(jVar, 0, hVar, aVar);
        return hVar;
    }

    public com.transsion.transfer.androidasync.future.w q(com.transsion.transfer.androidasync.http.j jVar, final fv.a aVar, final dv.b bVar) {
        h hVar = new h();
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        r(jVar, 0, hVar, new dv.a() { // from class: com.transsion.transfer.androidasync.http.a
            @Override // dv.a
            public final void a(Exception exc, k kVar) {
                this.f55310a.F(bVar, wVar, aVar, exc, kVar);
            }
        });
        wVar.setParent(hVar);
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f t(com.transsion.transfer.androidasync.http.j jVar, String str, g gVar) {
        File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
            h hVar = new h();
            e eVar = new e(hVar, bufferedOutputStream, file);
            eVar.setParent(hVar);
            r(jVar, 0, hVar, new f(bufferedOutputStream, file, gVar, eVar));
            return eVar;
        } catch (FileNotFoundException e11) {
            com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
            wVar.G(e11);
            return wVar;
        }
    }

    public com.transsion.transfer.androidasync.future.f v(com.transsion.transfer.androidasync.http.j jVar, j jVar2) {
        return q(jVar, new fv.f(), jVar2);
    }

    public AsyncServer x() {
        return this.f55243e;
    }

    public void z(com.transsion.transfer.androidasync.http.g gVar) {
        this.f55239a.add(0, gVar);
    }
}
