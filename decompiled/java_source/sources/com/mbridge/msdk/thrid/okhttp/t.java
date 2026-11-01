package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public class t implements Cloneable {
    static final List<u> A = com.mbridge.msdk.thrid.okhttp.internal.c.a(u.HTTP_2, u.HTTP_1_1);
    static final List<i> B = com.mbridge.msdk.thrid.okhttp.internal.c.a(i.f37888h, i.f37890j);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final l f38307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f38308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<u> f38309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<i> f38310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<r> f38311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<r> f38312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final n.c f38313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final ProxySelector f38314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final k f38315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final SocketFactory f38316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final SSLSocketFactory f38317k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.tls.c f38318l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final HostnameVerifier f38319m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final e f38320n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.b f38321o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.b f38322p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final h f38323q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final m f38324r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final boolean f38325s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final boolean f38326t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final boolean f38327u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final int f38328v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final int f38329w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final int f38330x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final int f38331y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final int f38332z;

    static class a extends com.mbridge.msdk.thrid.okhttp.internal.a {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public int a(y.a aVar) {
            return aVar.f38406c;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public com.mbridge.msdk.thrid.okhttp.internal.connection.c a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, a0 a0Var) {
            return hVar.a(aVar, gVar, a0Var);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public com.mbridge.msdk.thrid.okhttp.internal.connection.d a(h hVar) {
            return hVar.f37882e;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public IOException a(d dVar, IOException iOException) {
            return ((v) dVar).a(iOException);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public Socket a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar) {
            return hVar.a(aVar, gVar);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(i iVar, SSLSocket sSLSocket, boolean z10) {
            iVar.a(sSLSocket, z10);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(p.a aVar, String str) {
            aVar.a(str);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(p.a aVar, String str, String str2) {
            aVar.b(str, str2);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.a aVar2) {
            return aVar.a(aVar2);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public boolean a(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            return hVar.a(cVar);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void b(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            hVar.b(cVar);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        l f38333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Proxy f38334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<u> f38335c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<i> f38336d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<r> f38337e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<r> f38338f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        n.c f38339g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        ProxySelector f38340h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        k f38341i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        SocketFactory f38342j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        SSLSocketFactory f38343k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.internal.tls.c f38344l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        HostnameVerifier f38345m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        e f38346n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.b f38347o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.b f38348p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        h f38349q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        m f38350r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f38351s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        boolean f38352t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f38353u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f38354v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        int f38355w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f38356x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f38357y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f38358z;

        public b() {
            this.f38337e = new ArrayList();
            this.f38338f = new ArrayList();
            this.f38333a = new l();
            this.f38335c = t.A;
            this.f38336d = t.B;
            this.f38339g = n.factory(n.NONE);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f38340h = proxySelector;
            if (proxySelector == null) {
                this.f38340h = new com.mbridge.msdk.thrid.okhttp.internal.proxy.a();
            }
            this.f38341i = k.f38272a;
            this.f38342j = SocketFactory.getDefault();
            this.f38345m = com.mbridge.msdk.thrid.okhttp.internal.tls.d.f38258a;
            this.f38346n = e.f37798c;
            com.mbridge.msdk.thrid.okhttp.b bVar = com.mbridge.msdk.thrid.okhttp.b.f37767a;
            this.f38347o = bVar;
            this.f38348p = bVar;
            this.f38349q = new h();
            this.f38350r = m.f38281a;
            this.f38351s = true;
            this.f38352t = true;
            this.f38353u = true;
            this.f38354v = 0;
            this.f38355w = 10000;
            this.f38356x = 10000;
            this.f38357y = 10000;
            this.f38358z = 0;
        }

        b(t tVar) {
            ArrayList arrayList = new ArrayList();
            this.f38337e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f38338f = arrayList2;
            this.f38333a = tVar.f38307a;
            this.f38334b = tVar.f38308b;
            this.f38335c = tVar.f38309c;
            this.f38336d = tVar.f38310d;
            arrayList.addAll(tVar.f38311e);
            arrayList2.addAll(tVar.f38312f);
            this.f38339g = tVar.f38313g;
            this.f38340h = tVar.f38314h;
            this.f38341i = tVar.f38315i;
            this.f38342j = tVar.f38316j;
            this.f38343k = tVar.f38317k;
            this.f38344l = tVar.f38318l;
            this.f38345m = tVar.f38319m;
            this.f38346n = tVar.f38320n;
            this.f38347o = tVar.f38321o;
            this.f38348p = tVar.f38322p;
            this.f38349q = tVar.f38323q;
            this.f38350r = tVar.f38324r;
            this.f38351s = tVar.f38325s;
            this.f38352t = tVar.f38326t;
            this.f38353u = tVar.f38327u;
            this.f38354v = tVar.f38328v;
            this.f38355w = tVar.f38329w;
            this.f38356x = tVar.f38330x;
            this.f38357y = tVar.f38331y;
            this.f38358z = tVar.f38332z;
        }

        public b a(long j11, TimeUnit timeUnit) {
            this.f38354v = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j11, timeUnit);
            return this;
        }

        public b a(h hVar) {
            if (hVar == null) {
                throw new NullPointerException("connectionPool == null");
            }
            this.f38349q = hVar;
            return this;
        }

        public b a(l lVar) {
            if (lVar == null) {
                throw new IllegalArgumentException("dispatcher == null");
            }
            this.f38333a = lVar;
            return this;
        }

        public b a(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("dns == null");
            }
            this.f38350r = mVar;
            return this;
        }

        public b a(n nVar) {
            if (nVar == null) {
                throw new NullPointerException("eventListener == null");
            }
            this.f38339g = n.factory(nVar);
            return this;
        }

        public b a(List<u> list) {
            ArrayList arrayList = new ArrayList(list);
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(uVar) && !arrayList.contains(u.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: " + arrayList);
            }
            if (arrayList.contains(uVar) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + arrayList);
            }
            if (arrayList.contains(u.HTTP_1_0)) {
                throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            arrayList.remove(u.SPDY_3);
            this.f38335c = Collections.unmodifiableList(arrayList);
            return this;
        }

        public b a(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier == null) {
                throw new NullPointerException("hostnameVerifier == null");
            }
            this.f38345m = hostnameVerifier;
            return this;
        }

        public b a(boolean z10) {
            this.f38353u = z10;
            return this;
        }

        public t a() {
            return new t(this);
        }

        public b b(long j11, TimeUnit timeUnit) {
            this.f38355w = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j11, timeUnit);
            return this;
        }

        public b c(long j11, TimeUnit timeUnit) {
            this.f38358z = com.mbridge.msdk.thrid.okhttp.internal.c.a("interval", j11, timeUnit);
            return this;
        }

        public b d(long j11, TimeUnit timeUnit) {
            this.f38356x = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j11, timeUnit);
            return this;
        }

        public b e(long j11, TimeUnit timeUnit) {
            this.f38357y = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j11, timeUnit);
            return this;
        }
    }

    static {
        com.mbridge.msdk.thrid.okhttp.internal.a.f37899a = new a();
    }

    public t() {
        this(new b());
    }

    t(b bVar) {
        boolean z10;
        this.f38307a = bVar.f38333a;
        this.f38308b = bVar.f38334b;
        this.f38309c = bVar.f38335c;
        List<i> list = bVar.f38336d;
        this.f38310d = list;
        this.f38311e = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f38337e);
        this.f38312f = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f38338f);
        this.f38313g = bVar.f38339g;
        this.f38314h = bVar.f38340h;
        this.f38315i = bVar.f38341i;
        this.f38316j = bVar.f38342j;
        Iterator<i> it = list.iterator();
        loop0: while (true) {
            z10 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                } else {
                    z10 = (z10 || it.next().b()) ? true : z10;
                }
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f38343k;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager x509TrustManagerA = com.mbridge.msdk.thrid.okhttp.internal.c.a();
            this.f38317k = a(x509TrustManagerA);
            this.f38318l = com.mbridge.msdk.thrid.okhttp.internal.tls.c.a(x509TrustManagerA);
        } else {
            this.f38317k = sSLSocketFactory;
            this.f38318l = bVar.f38344l;
        }
        if (this.f38317k != null) {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f38317k);
        }
        this.f38319m = bVar.f38345m;
        this.f38320n = bVar.f38346n.a(this.f38318l);
        this.f38321o = bVar.f38347o;
        this.f38322p = bVar.f38348p;
        this.f38323q = bVar.f38349q;
        this.f38324r = bVar.f38350r;
        this.f38325s = bVar.f38351s;
        this.f38326t = bVar.f38352t;
        this.f38327u = bVar.f38353u;
        this.f38328v = bVar.f38354v;
        this.f38329w = bVar.f38355w;
        this.f38330x = bVar.f38356x;
        this.f38331y = bVar.f38357y;
        this.f38332z = bVar.f38358z;
        if (this.f38311e.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f38311e);
        }
        if (this.f38312f.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f38312f);
        }
    }

    private static SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContextE = com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().e();
            sSLContextE.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextE.getSocketFactory();
        } catch (GeneralSecurityException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("No System TLS", (Exception) e11);
        }
    }

    public SocketFactory A() {
        return this.f38316j;
    }

    public SSLSocketFactory B() {
        return this.f38317k;
    }

    public int C() {
        return this.f38331y;
    }

    public com.mbridge.msdk.thrid.okhttp.b a() {
        return this.f38322p;
    }

    public d a(w wVar) {
        return v.a(this, wVar, false);
    }

    public int b() {
        return this.f38328v;
    }

    public e c() {
        return this.f38320n;
    }

    public int e() {
        return this.f38329w;
    }

    public h f() {
        return this.f38323q;
    }

    public List<i> g() {
        return this.f38310d;
    }

    public k i() {
        return this.f38315i;
    }

    public l j() {
        return this.f38307a;
    }

    public m k() {
        return this.f38324r;
    }

    public n.c l() {
        return this.f38313g;
    }

    public boolean m() {
        return this.f38326t;
    }

    public boolean n() {
        return this.f38325s;
    }

    public HostnameVerifier o() {
        return this.f38319m;
    }

    public List<r> p() {
        return this.f38311e;
    }

    com.mbridge.msdk.thrid.okhttp.internal.cache.c q() {
        return null;
    }

    public List<r> r() {
        return this.f38312f;
    }

    public b s() {
        return new b(this);
    }

    public int t() {
        return this.f38332z;
    }

    public List<u> u() {
        return this.f38309c;
    }

    public Proxy v() {
        return this.f38308b;
    }

    public com.mbridge.msdk.thrid.okhttp.b w() {
        return this.f38321o;
    }

    public ProxySelector x() {
        return this.f38314h;
    }

    public int y() {
        return this.f38330x;
    }

    public boolean z() {
        return this.f38327u;
    }
}
