package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.util.ArrayDeque;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Hashtable;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class t extends a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f55495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f55496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f55497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected AsyncHttpClient f55498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f55499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f55500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f55501g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Hashtable f55502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f55503i;

    class a implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayDeque f55504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f55505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55506c;

        a(ArrayDeque arrayDeque, e eVar, String str) {
            this.f55504a = arrayDeque;
            this.f55505b = eVar;
            this.f55506c = str;
        }

        @Override // bv.a
        public void g(Exception exc) {
            synchronized (t.this) {
                this.f55504a.remove(this.f55505b);
                t.this.w(this.f55506c);
            }
        }
    }

    class b implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.j f55508a;

        b(com.transsion.transfer.androidasync.j jVar) {
            this.f55508a = jVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            this.f55508a.p(null);
            this.f55508a.close();
        }
    }

    class c extends bv.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.j f55510a;

        c(com.transsion.transfer.androidasync.j jVar) {
            this.f55510a = jVar;
        }

        @Override // bv.d.a, bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            super.F(pVar, byteBufferList);
            byteBufferList.B();
            this.f55510a.p(null);
            this.f55510a.close();
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayDeque f55513b = new ArrayDeque();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ArrayDeque f55514c = new ArrayDeque();

        d() {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.transsion.transfer.androidasync.j f55515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f55516b = System.currentTimeMillis();

        public e(com.transsion.transfer.androidasync.j jVar) {
            this.f55515a = jVar;
        }
    }

    public t(AsyncHttpClient asyncHttpClient) {
        this(asyncHttpClient, "http", 80);
    }

    public t(AsyncHttpClient asyncHttpClient, String str, int i11) {
        this.f55497c = 300000;
        this.f55502h = new Hashtable();
        this.f55503i = Integer.MAX_VALUE;
        this.f55498d = asyncHttpClient;
        this.f55495a = str;
        this.f55496b = i11;
    }

    private d o(String str) {
        d dVar = (d) this.f55502h.get(str);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        this.f55502h.put(str, dVar2);
        return dVar2;
    }

    private void q(com.transsion.transfer.androidasync.j jVar) {
        jVar.s(new b(jVar));
        jVar.o(null);
        jVar.t(new c(jVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.transsion.transfer.androidasync.future.f s(int i11, g.a aVar, InetAddress inetAddress) {
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        String str = String.format(Locale.ENGLISH, "%s:%s", inetAddress, Integer.valueOf(i11));
        aVar.f55361b.u("attempting connection to " + str);
        this.f55498d.x().n(new InetSocketAddress(inetAddress, i11), new bv.b() { // from class: com.transsion.transfer.androidasync.http.s
            @Override // bv.b
            public final void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
                wVar.H(exc, jVar);
            }
        });
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.transsion.transfer.androidasync.future.f t(final int i11, final g.a aVar, InetAddress[] inetAddressArr) {
        return com.transsion.transfer.androidasync.future.l.d(inetAddressArr, new com.transsion.transfer.androidasync.future.z() { // from class: com.transsion.transfer.androidasync.http.r
            @Override // com.transsion.transfer.androidasync.future.z
            public final com.transsion.transfer.androidasync.future.f then(Object obj) {
                return this.f55417a.s(i11, aVar, (InetAddress) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(g.a aVar, Uri uri, int i11, Exception exc) {
        z(aVar, uri, i11, false, aVar.f55352c).a(exc, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(g.a aVar, Uri uri, int i11, Exception exc, com.transsion.transfer.androidasync.j jVar) {
        if (jVar == null) {
            return;
        }
        if (exc == null) {
            z(aVar, uri, i11, false, aVar.f55352c).a(null, jVar);
            return;
        }
        aVar.f55361b.r("Recycling extra socket leftover from cancelled operation");
        q(jVar);
        y(jVar, aVar.f55361b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str) {
        d dVar = (d) this.f55502h.get(str);
        if (dVar == null) {
            return;
        }
        while (!dVar.f55514c.isEmpty()) {
            e eVar = (e) dVar.f55514c.peekLast();
            com.transsion.transfer.androidasync.j jVar = eVar.f55515a;
            if (eVar.f55516b + ((long) this.f55497c) > System.currentTimeMillis()) {
                break;
            }
            dVar.f55514c.pop();
            jVar.p(null);
            jVar.close();
        }
        if (dVar.f55512a == 0 && dVar.f55513b.isEmpty() && dVar.f55514c.isEmpty()) {
            this.f55502h.remove(str);
        }
    }

    private void x(j jVar) {
        Uri uriP = jVar.p();
        String strN = n(uriP, p(uriP), jVar.l(), jVar.m());
        synchronized (this) {
            try {
                d dVar = (d) this.f55502h.get(strN);
                if (dVar == null) {
                    return;
                }
                dVar.f55512a--;
                while (dVar.f55512a < this.f55503i && dVar.f55513b.size() > 0) {
                    g.a aVar = (g.a) dVar.f55513b.remove();
                    com.transsion.transfer.androidasync.future.n nVar = (com.transsion.transfer.androidasync.future.n) aVar.f55353d;
                    if (!nVar.isCancelled()) {
                        nVar.setParent(e(aVar));
                    }
                }
                w(strN);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void y(com.transsion.transfer.androidasync.j jVar, j jVar2) {
        ArrayDeque arrayDeque;
        if (jVar == null) {
            return;
        }
        Uri uriP = jVar2.p();
        String strN = n(uriP, p(uriP), jVar2.l(), jVar2.m());
        e eVar = new e(jVar);
        synchronized (this) {
            arrayDeque = o(strN).f55514c;
            arrayDeque.push(eVar);
        }
        jVar.p(new a(arrayDeque, eVar, strN));
    }

    @Override // com.transsion.transfer.androidasync.http.a0, com.transsion.transfer.androidasync.http.g
    public void b(g.C0675g c0675g) {
        if (c0675g.f55360a.a("socket-owner") != this) {
            return;
        }
        try {
            q(c0675g.f55356f);
            if (c0675g.f55362k != null || !c0675g.f55356f.isOpen()) {
                c0675g.f55361b.u("closing out socket (exception)");
                c0675g.f55356f.p(null);
                c0675g.f55356f.close();
            } else if (r(c0675g)) {
                c0675g.f55361b.r("Recycling keep-alive socket");
                y(c0675g.f55356f, c0675g.f55361b);
            } else {
                c0675g.f55361b.u("closing out socket (not keep alive)");
                c0675g.f55356f.p(null);
                c0675g.f55356f.close();
            }
        } finally {
            x(c0675g.f55361b);
        }
    }

    @Override // com.transsion.transfer.androidasync.http.a0, com.transsion.transfer.androidasync.http.g
    public com.transsion.transfer.androidasync.future.a e(final g.a aVar) {
        String host;
        int iM;
        String str;
        final Uri uriP = aVar.f55361b.p();
        final int iP = p(aVar.f55361b.p());
        if (iP == -1) {
            return null;
        }
        aVar.f55360a.b("socket-owner", this);
        d dVarO = o(n(uriP, iP, aVar.f55361b.l(), aVar.f55361b.m()));
        synchronized (this) {
            try {
                int i11 = dVarO.f55512a;
                if (i11 >= this.f55503i) {
                    com.transsion.transfer.androidasync.future.n nVar = new com.transsion.transfer.androidasync.future.n();
                    dVarO.f55513b.add(aVar);
                    return nVar;
                }
                boolean z10 = true;
                dVarO.f55512a = i11 + 1;
                while (!dVarO.f55514c.isEmpty()) {
                    e eVar = (e) dVarO.f55514c.pop();
                    com.transsion.transfer.androidasync.j jVar = eVar.f55515a;
                    if (eVar.f55516b + ((long) this.f55497c) < System.currentTimeMillis()) {
                        jVar.p(null);
                        jVar.close();
                    } else if (jVar.isOpen()) {
                        aVar.f55361b.r("Reusing keep-alive socket");
                        aVar.f55352c.a(null, jVar);
                        com.transsion.transfer.androidasync.future.n nVar2 = new com.transsion.transfer.androidasync.future.n();
                        nVar2.setComplete();
                        return nVar2;
                    }
                }
                if (this.f55499e && this.f55500f == null && aVar.f55361b.l() == null) {
                    aVar.f55361b.u("Resolving domain and connecting to all available addresses");
                    com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
                    wVar.E(this.f55498d.x().p(uriP.getHost()).a(new com.transsion.transfer.androidasync.future.z() { // from class: com.transsion.transfer.androidasync.http.o
                        @Override // com.transsion.transfer.androidasync.future.z
                        public final com.transsion.transfer.androidasync.future.f then(Object obj) {
                            return this.f55406a.t(iP, aVar, (InetAddress[]) obj);
                        }
                    }).e(new com.transsion.transfer.androidasync.future.d() { // from class: com.transsion.transfer.androidasync.http.p
                        @Override // com.transsion.transfer.androidasync.future.d
                        public final void a(Exception exc) {
                            this.f55409a.u(aVar, uriP, iP, exc);
                        }
                    })).f(new com.transsion.transfer.androidasync.future.g() { // from class: com.transsion.transfer.androidasync.http.q
                        @Override // com.transsion.transfer.androidasync.future.g
                        public final void a(Exception exc, Object obj) {
                            this.f55413a.v(aVar, uriP, iP, exc, (com.transsion.transfer.androidasync.j) obj);
                        }
                    });
                    return wVar;
                }
                aVar.f55361b.r("Connecting socket");
                if (aVar.f55361b.l() == null && (str = this.f55500f) != null) {
                    aVar.f55361b.d(str, this.f55501g);
                }
                if (aVar.f55361b.l() != null) {
                    host = aVar.f55361b.l();
                    iM = aVar.f55361b.m();
                } else {
                    host = uriP.getHost();
                    z10 = false;
                    iM = iP;
                }
                if (z10) {
                    aVar.f55361b.u("Using proxy: " + host + ":" + iM);
                }
                return this.f55498d.x().m(host, iM, z(aVar, uriP, iP, z10, aVar.f55352c));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    String n(Uri uri, int i11, String str, int i12) {
        String str2;
        if (str != null) {
            str2 = str + ":" + i12;
        } else {
            str2 = "";
        }
        if (str != null) {
            str2 = str + ":" + i12;
        }
        return uri.getScheme() + "//" + uri.getHost() + ":" + i11 + "?proxy=" + str2;
    }

    public int p(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.f55495a)) {
            return -1;
        }
        return uri.getPort() == -1 ? this.f55496b : uri.getPort();
    }

    protected boolean r(g.C0675g c0675g) {
        return HttpUtil.e(c0675g.f55357g.protocol(), c0675g.f55357g.e()) && HttpUtil.d(Protocol.HTTP_1_1, c0675g.f55361b.h());
    }

    protected bv.b z(g.a aVar, Uri uri, int i11, boolean z10, bv.b bVar) {
        return bVar;
    }
}
