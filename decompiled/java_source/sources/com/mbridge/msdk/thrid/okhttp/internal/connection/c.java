package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.i;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.o;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.s;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends com.mbridge.msdk.thrid.okhttp.internal.http2.g.j implements com.mbridge.msdk.thrid.okhttp.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f37941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a0 f37942c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Socket f37943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Socket f37944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f37945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private u f37946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.thrid.okhttp.internal.http2.g f37947h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.thrid.okio.e f37948i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.mbridge.msdk.thrid.okio.d f37949j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f37950k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f37951l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f37952m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<Reference<g>> f37953n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f37954o = Long.MAX_VALUE;

    public c(h hVar, a0 a0Var) {
        this.f37941b = hVar;
        this.f37942c = a0Var;
    }

    private w a(int i11, int i12, w wVar, q qVar) throws IOException {
        String str = "CONNECT " + com.mbridge.msdk.thrid.okhttp.internal.c.a(qVar, true) + " HTTP/1.1";
        while (true) {
            com.mbridge.msdk.thrid.okhttp.internal.http1.a aVar = new com.mbridge.msdk.thrid.okhttp.internal.http1.a(null, null, this.f37948i, this.f37949j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f37948i.b().a(i11, timeUnit);
            this.f37949j.b().a(i12, timeUnit);
            aVar.a(wVar.c(), str);
            aVar.a();
            y yVarA = aVar.a(false).a(wVar).a();
            long jA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVarA);
            if (jA == -1) {
                jA = 0;
            }
            s sVarB = aVar.b(jA);
            com.mbridge.msdk.thrid.okhttp.internal.c.b(sVarB, Integer.MAX_VALUE, timeUnit);
            sVarB.close();
            int iK = yVarA.k();
            if (iK == 200) {
                if (this.f37948i.a().f() && this.f37949j.a().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iK != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + yVarA.k());
            }
            w wVarA = this.f37942c.a().g().a(this.f37942c, yVarA);
            if (wVarA == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if ("close".equalsIgnoreCase(yVarA.b("Connection"))) {
                return wVarA;
            }
            wVar = wVarA;
        }
    }

    private void a(int i11) throws IOException {
        this.f37944e.setSoTimeout(0);
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVarA = new com.mbridge.msdk.thrid.okhttp.internal.http2.g.h(true).a(this.f37944e, this.f37942c.a().k().g(), this.f37948i, this.f37949j).a(this).a(i11).a();
        this.f37947h = gVarA;
        gVarA.m();
    }

    private void a(int i11, int i12, int i13, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        w wVarE = e();
        q qVarG = wVarE.g();
        for (int i14 = 0; i14 < 21; i14++) {
            a(i11, i12, dVar, nVar);
            wVarE = a(i12, i13, wVarE, qVarG);
            if (wVarE == null) {
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37943d);
            this.f37943d = null;
            this.f37949j = null;
            this.f37948i = null;
            nVar.connectEnd(dVar, this.f37942c.d(), this.f37942c.b(), null);
        }
    }

    private void a(int i11, int i12, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        Proxy proxyB = this.f37942c.b();
        this.f37943d = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.f37942c.a().i().createSocket() : new Socket(proxyB);
        nVar.connectStart(dVar, this.f37942c.d(), proxyB);
        this.f37943d.setSoTimeout(i12);
        try {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f37943d, this.f37942c.d(), i11);
            try {
                this.f37948i = l.a(l.b(this.f37943d));
                this.f37949j = l.a(l.a(this.f37943d));
            } catch (NullPointerException e11) {
                if ("throw with null exception".equals(e11.getMessage())) {
                    throw new IOException(e11);
                }
            }
        } catch (ConnectException e12) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f37942c.d());
            connectException.initCause(e12);
            throw connectException;
        }
    }

    private void a(b bVar) throws Throwable {
        com.mbridge.msdk.thrid.okhttp.a aVarA = this.f37942c.a();
        SSLSocket sSLSocket = null;
        try {
            try {
                SSLSocket sSLSocket2 = (SSLSocket) aVarA.j().createSocket(this.f37943d, aVarA.k().g(), aVarA.k().j(), true);
                try {
                    i iVarA = bVar.a(sSLSocket2);
                    if (iVarA.c()) {
                        com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2, aVarA.k().g(), aVarA.e());
                    }
                    sSLSocket2.startHandshake();
                    SSLSession session = sSLSocket2.getSession();
                    o oVarA = o.a(session);
                    if (aVarA.d().verify(aVarA.k().g(), session)) {
                        aVarA.a().a(aVarA.k().g(), oVarA.b());
                        String strB = iVarA.c() ? com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(sSLSocket2) : null;
                        this.f37944e = sSLSocket2;
                        this.f37948i = l.a(l.b(sSLSocket2));
                        this.f37949j = l.a(l.a(this.f37944e));
                        this.f37945f = oVarA;
                        this.f37946g = strB != null ? u.a(strB) : u.HTTP_1_1;
                        com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2);
                        return;
                    }
                    List<Certificate> listB = oVarA.b();
                    if (listB.isEmpty()) {
                        throw new SSLPeerUnverifiedException("Hostname " + aVarA.k().g() + " not verified (no certificates)");
                    }
                    X509Certificate x509Certificate = (X509Certificate) listB.get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + aVarA.k().g() + " not verified:\n    certificate: " + com.mbridge.msdk.thrid.okhttp.e.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.mbridge.msdk.thrid.okhttp.internal.tls.d.a(x509Certificate));
                } catch (AssertionError e11) {
                    e = e11;
                    if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th2) {
                    th = th2;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket);
                    }
                    com.mbridge.msdk.thrid.okhttp.internal.c.a((Socket) sSLSocket);
                    throw th;
                }
            } catch (AssertionError e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void a(b bVar, int i11, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws Throwable {
        if (this.f37942c.a().j() != null) {
            nVar.secureConnectStart(dVar);
            a(bVar);
            nVar.secureConnectEnd(dVar, this.f37945f);
            if (this.f37946g == u.HTTP_2) {
                a(i11);
                return;
            }
            return;
        }
        List<u> listE = this.f37942c.a().e();
        u uVar = u.H2_PRIOR_KNOWLEDGE;
        if (!listE.contains(uVar)) {
            this.f37944e = this.f37943d;
            this.f37946g = u.HTTP_1_1;
        } else {
            this.f37944e = this.f37943d;
            this.f37946g = uVar;
            a(i11);
        }
    }

    private w e() throws IOException {
        w wVarA = new w.a().a(this.f37942c.a().k()).a("CONNECT", (x) null).b(HttpHeaders.HOST, com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37942c.a().k(), true)).b("Proxy-Connection", "Keep-Alive").b("User-Agent", com.mbridge.msdk.thrid.okhttp.internal.d.a()).a();
        w wVarA2 = this.f37942c.a().g().a(this.f37942c, new y.a().a(wVarA).a(u.HTTP_1_1).a(TTAdConstant.DOWNLOAD_APP_INFO_CODE).a("Preemptive Authenticate").a(com.mbridge.msdk.thrid.okhttp.internal.c.f37903c).b(-1L).a(-1L).b("Proxy-Authenticate", "OkHttp-Preemptive").a());
        return wVarA2 != null ? wVarA2 : wVarA;
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, g gVar) throws SocketException {
        if (this.f37947h != null) {
            return new com.mbridge.msdk.thrid.okhttp.internal.http2.f(tVar, aVar, gVar, this.f37947h);
        }
        this.f37944e.setSoTimeout(aVar.b());
        com.mbridge.msdk.thrid.okio.t tVarB = this.f37948i.b();
        long jB = aVar.b();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        tVarB.a(jB, timeUnit);
        this.f37949j.b().a(aVar.c(), timeUnit);
        return new com.mbridge.msdk.thrid.okhttp.internal.http1.a(tVar, gVar, this.f37948i, this.f37949j);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public u a() {
        return this.f37946g;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0131  */
    /* JADX WARN: Code duplicated, block: B:57:0x0137  */
    /* JADX WARN: Code duplicated, block: B:59:0x013c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[LOOP:0: B:73:0x0088->B:79:?, LOOP_END, SYNTHETIC] */
    public void a(int i11, int i12, int i13, int i14, boolean z10, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws Throwable {
        if (this.f37946g != null) {
            throw new IllegalStateException("already connected");
        }
        List<i> listB = this.f37942c.a().b();
        b bVar = new b(listB);
        if (this.f37942c.a().j() == null) {
            if (!listB.contains(i.f37890j)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strG = this.f37942c.a().k().g();
            if (!com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(strG)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication to " + strG + " not permitted by network security policy"));
            }
        } else if (this.f37942c.a().e().contains(u.H2_PRIOR_KNOWLEDGE)) {
            throw new e(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        e eVar = null;
        while (true) {
            try {
                if (this.f37942c.c()) {
                    a(i11, i12, i13, dVar, nVar);
                    if (this.f37943d == null) {
                        break;
                    }
                } else {
                    try {
                        a(i11, i12, dVar, nVar);
                    } catch (IOException e11) {
                        e = e11;
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37944e);
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37943d);
                        this.f37944e = null;
                        this.f37943d = null;
                        this.f37948i = null;
                        this.f37949j = null;
                        this.f37945f = null;
                        this.f37946g = null;
                        this.f37947h = null;
                        nVar.connectFailed(dVar, this.f37942c.d(), this.f37942c.b(), null, e);
                        if (eVar == null) {
                            eVar = new e(e);
                        } else {
                            eVar.a(e);
                        }
                        if (z10) {
                            throw eVar;
                        }
                        if (bVar.a(e)) {
                            throw eVar;
                        }
                    }
                }
                try {
                    a(bVar, i14, dVar, nVar);
                    nVar.connectEnd(dVar, this.f37942c.d(), this.f37942c.b(), this.f37946g);
                    break;
                } catch (IOException e12) {
                    e = e12;
                    com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37944e);
                    com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37943d);
                    this.f37944e = null;
                    this.f37943d = null;
                    this.f37948i = null;
                    this.f37949j = null;
                    this.f37945f = null;
                    this.f37946g = null;
                    this.f37947h = null;
                    nVar.connectFailed(dVar, this.f37942c.d(), this.f37942c.b(), null, e);
                    if (eVar == null) {
                        eVar = new e(e);
                    } else {
                        eVar.a(e);
                    }
                    if (z10) {
                        throw eVar;
                    }
                    if (bVar.a(e)) {
                        throw eVar;
                    }
                }
            } catch (IOException e13) {
                e = e13;
            }
        }
        if (this.f37942c.c() && this.f37943d == null) {
            throw new e(new ProtocolException("Too many tunnel connections attempted: 21"));
        }
        if (this.f37947h != null) {
            synchronized (this.f37941b) {
                this.f37952m = this.f37947h.k();
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar) {
        synchronized (this.f37941b) {
            this.f37952m = gVar.k();
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
        iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
    }

    public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, a0 a0Var) {
        if (this.f37953n.size() >= this.f37952m || this.f37950k || !com.mbridge.msdk.thrid.okhttp.internal.a.f37899a.a(this.f37942c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(c().a().k().g())) {
            return true;
        }
        if (this.f37947h == null || a0Var == null) {
            return false;
        }
        Proxy.Type type = a0Var.b().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type != type2 || this.f37942c.b().type() != type2 || !this.f37942c.d().equals(a0Var.d()) || a0Var.a().d() != com.mbridge.msdk.thrid.okhttp.internal.tls.d.f38258a || !a(aVar.k())) {
            return false;
        }
        try {
            aVar.a().a(aVar.k().g(), b().b());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean a(q qVar) {
        if (qVar.j() != this.f37942c.a().k().j()) {
            return false;
        }
        if (qVar.g().equals(this.f37942c.a().k().g())) {
            return true;
        }
        return this.f37945f != null && com.mbridge.msdk.thrid.okhttp.internal.tls.d.f38258a.a(qVar.g(), (X509Certificate) this.f37945f.b().get(0));
    }

    public boolean a(boolean z10) {
        if (this.f37944e.isClosed() || this.f37944e.isInputShutdown() || this.f37944e.isOutputShutdown()) {
            return false;
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar = this.f37947h;
        if (gVar != null) {
            return gVar.f(System.nanoTime());
        }
        if (z10) {
            try {
                int soTimeout = this.f37944e.getSoTimeout();
                try {
                    this.f37944e.setSoTimeout(1);
                    if (this.f37948i.f()) {
                        this.f37944e.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f37944e.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th2) {
                    this.f37944e.setSoTimeout(soTimeout);
                    throw th2;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public o b() {
        return this.f37945f;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public a0 c() {
        return this.f37942c;
    }

    public void d() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37943d);
    }

    public boolean f() {
        return this.f37947h != null;
    }

    public Socket g() {
        return this.f37944e;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f37942c.a().k().g());
        sb2.append(":");
        sb2.append(this.f37942c.a().k().j());
        sb2.append(", proxy=");
        sb2.append(this.f37942c.b());
        sb2.append(" hostAddress=");
        sb2.append(this.f37942c.d());
        sb2.append(" cipherSuite=");
        o oVar = this.f37945f;
        sb2.append(oVar != null ? oVar.a() : "none");
        sb2.append(" protocol=");
        sb2.append(this.f37946g);
        sb2.append('}');
        return sb2.toString();
    }
}
