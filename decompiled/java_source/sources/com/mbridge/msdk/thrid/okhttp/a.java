package com.mbridge.msdk.thrid.okhttp;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final q f37753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final m f37754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f37755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f37756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<u> f37757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<i> f37758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ProxySelector f37759g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Proxy f37760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final SSLSocketFactory f37761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final HostnameVerifier f37762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final e f37763k;

    public a(String str, int i11, m mVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, e eVar, b bVar, Proxy proxy, List<u> list, List<i> list2, ProxySelector proxySelector) {
        this.f37753a = new q.a().e(sSLSocketFactory != null ? "https" : "http").b(str).a(i11).a();
        if (mVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f37754b = mVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f37755c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f37756d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f37757e = com.mbridge.msdk.thrid.okhttp.internal.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f37758f = com.mbridge.msdk.thrid.okhttp.internal.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f37759g = proxySelector;
        this.f37760h = proxy;
        this.f37761i = sSLSocketFactory;
        this.f37762j = hostnameVerifier;
        this.f37763k = eVar;
    }

    public e a() {
        return this.f37763k;
    }

    boolean a(a aVar) {
        return this.f37754b.equals(aVar.f37754b) && this.f37756d.equals(aVar.f37756d) && this.f37757e.equals(aVar.f37757e) && this.f37758f.equals(aVar.f37758f) && this.f37759g.equals(aVar.f37759g) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37760h, aVar.f37760h) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37761i, aVar.f37761i) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37762j, aVar.f37762j) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37763k, aVar.f37763k) && k().j() == aVar.k().j();
    }

    public List<i> b() {
        return this.f37758f;
    }

    public m c() {
        return this.f37754b;
    }

    public HostnameVerifier d() {
        return this.f37762j;
    }

    public List<u> e() {
        return this.f37757e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f37753a.equals(aVar.f37753a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public Proxy f() {
        return this.f37760h;
    }

    public b g() {
        return this.f37756d;
    }

    public ProxySelector h() {
        return this.f37759g;
    }

    public int hashCode() {
        int iHashCode = (((((((((((this.f37753a.hashCode() + 527) * 31) + this.f37754b.hashCode()) * 31) + this.f37756d.hashCode()) * 31) + this.f37757e.hashCode()) * 31) + this.f37758f.hashCode()) * 31) + this.f37759g.hashCode()) * 31;
        Proxy proxy = this.f37760h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f37761i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f37762j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        e eVar = this.f37763k;
        return iHashCode4 + (eVar != null ? eVar.hashCode() : 0);
    }

    public SocketFactory i() {
        return this.f37755c;
    }

    public SSLSocketFactory j() {
        return this.f37761i;
    }

    public q k() {
        return this.f37753a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f37753a.g());
        sb2.append(":");
        sb2.append(this.f37753a.j());
        if (this.f37760h != null) {
            sb2.append(", proxy=");
            sb2.append(this.f37760h);
        } else {
            sb2.append(", proxySelector=");
            sb2.append(this.f37759g);
        }
        sb2.append("}");
        return sb2.toString();
    }
}
