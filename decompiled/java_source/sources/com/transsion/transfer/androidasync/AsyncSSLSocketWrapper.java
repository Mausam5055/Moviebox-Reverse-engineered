package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.AbstractVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncSSLSocketWrapper implements j, p, com.transsion.transfer.androidasync.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static SSLContext f55106v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static SSLContext f55107w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static TrustManager[] f55108x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static HostnameVerifier f55109y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    j f55110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n f55111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f55112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SSLEngine f55113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f55114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f55115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f55116g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f55117h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    HostnameVerifier f55118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    g f55119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    X509Certificate[] f55120k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    bv.j f55121l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    bv.d f55122m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    TrustManager[] f55123n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f55124o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f55125p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Exception f55126q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final ByteBufferList f55127r = new ByteBufferList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final bv.d f55128s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ByteBufferList f55129t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    bv.a f55130u;

    class a implements X509TrustManager {
        a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                if (x509Certificate != null && x509Certificate.getCriticalExtensionOIDs() != null) {
                    x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                }
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    class c implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f55131a;

        c(g gVar) {
            this.f55131a = gVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (exc != null) {
                this.f55131a.a(exc, null);
            } else {
                this.f55131a.a(new SSLException("socket closed during handshake"), null);
            }
        }
    }

    class d implements bv.j {
        d() {
        }

        @Override // bv.j
        public void a() {
            bv.j jVar = AsyncSSLSocketWrapper.this.f55121l;
            if (jVar != null) {
                jVar.a();
            }
        }
    }

    class e implements bv.a {
        e() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            bv.a aVar;
            AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
            if (asyncSSLSocketWrapper.f55125p) {
                return;
            }
            asyncSSLSocketWrapper.f55125p = true;
            asyncSSLSocketWrapper.f55126q = exc;
            if (asyncSSLSocketWrapper.f55127r.r() || (aVar = AsyncSSLSocketWrapper.this.f55130u) == null) {
                return;
            }
            aVar.g(exc);
        }
    }

    class f implements bv.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.transsion.transfer.androidasync.util.a f55134a = new com.transsion.transfer.androidasync.util.a().d(8192);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ByteBufferList f55135b = new ByteBufferList();

        f() {
        }

        @Override // bv.d
        public void F(p pVar, ByteBufferList byteBufferList) {
            AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
            if (asyncSSLSocketWrapper.f55112c) {
                return;
            }
            try {
                try {
                    asyncSSLSocketWrapper.f55112c = true;
                    byteBufferList.f(this.f55135b);
                    if (this.f55135b.r()) {
                        this.f55135b.a(this.f55135b.j());
                    }
                    ByteBuffer byteBufferD = ByteBufferList.f55169j;
                    while (true) {
                        if (byteBufferD.remaining() == 0 && this.f55135b.E() > 0) {
                            byteBufferD = this.f55135b.D();
                        }
                        int iRemaining = byteBufferD.remaining();
                        int iC = AsyncSSLSocketWrapper.this.f55127r.C();
                        ByteBuffer byteBufferA = this.f55134a.a();
                        SSLEngineResult sSLEngineResultUnwrap = AsyncSSLSocketWrapper.this.f55113d.unwrap(byteBufferD, byteBufferA);
                        AsyncSSLSocketWrapper asyncSSLSocketWrapper2 = AsyncSSLSocketWrapper.this;
                        asyncSSLSocketWrapper2.k(asyncSSLSocketWrapper2.f55127r, byteBufferA);
                        this.f55134a.e(AsyncSSLSocketWrapper.this.f55127r.C() - iC);
                        if (sSLEngineResultUnwrap.getStatus() != SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            if (sSLEngineResultUnwrap.getStatus() != SSLEngineResult.Status.BUFFER_UNDERFLOW) {
                                AsyncSSLSocketWrapper.this.u(sSLEngineResultUnwrap.getHandshakeStatus());
                                if (byteBufferD.remaining() != iRemaining && iC == AsyncSSLSocketWrapper.this.f55127r.C()) {
                                    this.f55135b.c(byteBufferD);
                                    break;
                                }
                            } else {
                                this.f55135b.c(byteBufferD);
                                if (this.f55135b.E() <= 1) {
                                    break;
                                }
                                this.f55135b.c(this.f55135b.j());
                                byteBufferD = ByteBufferList.f55169j;
                            }
                        } else {
                            com.transsion.transfer.androidasync.util.a aVar = this.f55134a;
                            aVar.d(aVar.c() * 2);
                        }
                        iRemaining = -1;
                        AsyncSSLSocketWrapper.this.u(sSLEngineResultUnwrap.getHandshakeStatus());
                        if (byteBufferD.remaining() != iRemaining) {
                        }
                    }
                    AsyncSSLSocketWrapper.this.C();
                } catch (SSLException e11) {
                    AsyncSSLSocketWrapper.this.F(e11);
                }
            } finally {
                AsyncSSLSocketWrapper.this.f55112c = false;
            }
        }
    }

    public interface g {
        void a(Exception exc, com.transsion.transfer.androidasync.a aVar);
    }

    static {
        try {
            f55106v = SSLContext.getInstance("Default");
        } catch (Exception e11) {
            try {
                f55106v = SSLContext.getInstance("TLS");
                f55106v.init(null, new TrustManager[]{new a()}, null);
            } catch (Exception e12) {
                e11.printStackTrace();
                e12.printStackTrace();
            }
        }
        try {
            f55107w = SSLContext.getInstance("TLS");
            TrustManager[] trustManagerArr = {new b()};
            f55108x = trustManagerArr;
            f55107w.init(null, trustManagerArr, null);
            f55109y = new HostnameVerifier() { // from class: com.transsion.transfer.androidasync.b
                @Override // javax.net.ssl.HostnameVerifier
                public final boolean verify(String str, SSLSession sSLSession) {
                    return AsyncSSLSocketWrapper.y(str, sSLSession);
                }
            };
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    private AsyncSSLSocketWrapper(j jVar, String str, int i11, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z10) {
        f fVar = new f();
        this.f55128s = fVar;
        this.f55129t = new ByteBufferList();
        this.f55110a = jVar;
        this.f55118i = hostnameVerifier;
        this.f55124o = z10;
        this.f55123n = trustManagerArr;
        this.f55113d = sSLEngine;
        this.f55116g = str;
        this.f55115f = i11;
        sSLEngine.setUseClientMode(z10);
        n nVar = new n(jVar);
        this.f55111b = nVar;
        nVar.o(new d());
        this.f55110a.s(new e());
        this.f55110a.t(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(Exception exc) {
        g gVar = this.f55119j;
        if (gVar == null) {
            bv.a aVarR = r();
            if (aVarR != null) {
                aVarR.g(exc);
                return;
            }
            return;
        }
        this.f55119j = null;
        this.f55110a.t(new bv.d.a());
        this.f55110a.d();
        this.f55110a.p(null);
        this.f55110a.close();
        gVar.a(exc, null);
    }

    public static SSLContext q() {
        return f55106v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(SSLEngineResult.HandshakeStatus handshakeStatus) {
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            this.f55113d.getDelegatedTask().run();
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
            l(this.f55129t);
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
            this.f55128s.F(this, new ByteBufferList());
        }
        try {
            if (this.f55114e) {
                return;
            }
            if (this.f55113d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING && this.f55113d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.FINISHED) {
                return;
            }
            if (this.f55124o) {
                boolean z10 = false;
                try {
                    this.f55120k = (X509Certificate[]) this.f55113d.getSession().getPeerCertificates();
                    String str = this.f55116g;
                    if (str != null) {
                        HostnameVerifier hostnameVerifier = this.f55118i;
                        if (hostnameVerifier == null) {
                            new StrictHostnameVerifier().verify(this.f55116g, AbstractVerifier.getCNs(this.f55120k[0]), AbstractVerifier.getDNSSubjectAlts(this.f55120k[0]));
                        } else if (!hostnameVerifier.verify(str, this.f55113d.getSession())) {
                            throw new SSLException("hostname <" + this.f55116g + "> has been denied");
                        }
                    }
                    z10 = true;
                    e = null;
                } catch (SSLException e11) {
                    e = e11;
                }
                this.f55114e = true;
                if (!z10) {
                    AsyncSSLException asyncSSLException = new AsyncSSLException(e);
                    F(asyncSSLException);
                    if (!asyncSSLException.getIgnore()) {
                        throw asyncSSLException;
                    }
                }
            } else {
                this.f55114e = true;
            }
            this.f55119j.a(null, this);
            this.f55119j = null;
            this.f55110a.p(null);
            a().D(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncSSLSocketWrapper.7
                @Override // java.lang.Runnable
                public void run() {
                    bv.j jVar = AsyncSSLSocketWrapper.this.f55121l;
                    if (jVar != null) {
                        jVar.a();
                    }
                }
            });
            C();
        } catch (Exception e12) {
            F(e12);
        }
    }

    public static void w(j jVar, String str, int i11, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z10, g gVar) {
        AsyncSSLSocketWrapper asyncSSLSocketWrapper = new AsyncSSLSocketWrapper(jVar, str, i11, sSLEngine, trustManagerArr, hostnameVerifier, z10);
        asyncSSLSocketWrapper.f55119j = gVar;
        jVar.p(new c(gVar));
        try {
            asyncSSLSocketWrapper.f55113d.beginHandshake();
            asyncSSLSocketWrapper.u(asyncSSLSocketWrapper.f55113d.getHandshakeStatus());
        } catch (SSLException e11) {
            asyncSSLSocketWrapper.F(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean y(String str, SSLSession sSLSession) {
        return true;
    }

    public void C() {
        bv.a aVar;
        a0.a(this, this.f55127r);
        if (!this.f55125p || this.f55127r.r() || (aVar = this.f55130u) == null) {
            return;
        }
        aVar.g(this.f55126q);
    }

    @Override // com.transsion.transfer.androidasync.p
    public bv.d I() {
        return this.f55122m;
    }

    @Override // com.transsion.transfer.androidasync.j, com.transsion.transfer.androidasync.p, com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55110a.a();
    }

    @Override // com.transsion.transfer.androidasync.p
    public void close() {
        this.f55110a.close();
    }

    @Override // com.transsion.transfer.androidasync.s
    public void d() {
        this.f55110a.d();
    }

    @Override // com.transsion.transfer.androidasync.s
    public bv.j i() {
        return this.f55121l;
    }

    @Override // com.transsion.transfer.androidasync.s
    public boolean isOpen() {
        return this.f55110a.isOpen();
    }

    @Override // com.transsion.transfer.androidasync.p
    public boolean isPaused() {
        return this.f55110a.isPaused();
    }

    void k(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byteBuffer.flip();
        if (byteBuffer.hasRemaining()) {
            byteBufferList.a(byteBuffer);
        } else {
            ByteBufferList.A(byteBuffer);
        }
    }

    @Override // com.transsion.transfer.androidasync.s
    public void l(ByteBufferList byteBufferList) {
        if (!this.f55117h && this.f55111b.k() <= 0) {
            this.f55117h = true;
            ByteBuffer byteBufferT = ByteBufferList.t(m(byteBufferList.C()));
            SSLEngineResult sSLEngineResultWrap = null;
            do {
                if (!this.f55114e || byteBufferList.C() != 0) {
                    int iC = byteBufferList.C();
                    try {
                        ByteBuffer[] byteBufferArrK = byteBufferList.k();
                        sSLEngineResultWrap = this.f55113d.wrap(byteBufferArrK, byteBufferT);
                        byteBufferList.b(byteBufferArrK);
                        byteBufferT.flip();
                        this.f55129t.a(byteBufferT);
                        if (this.f55129t.C() > 0) {
                            this.f55111b.l(this.f55129t);
                        }
                        int iCapacity = byteBufferT.capacity();
                        try {
                            if (sSLEngineResultWrap.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                                byteBufferT = ByteBufferList.t(iCapacity * 2);
                                iC = -1;
                            } else {
                                byteBufferT = ByteBufferList.t(m(byteBufferList.C()));
                                u(sSLEngineResultWrap.getHandshakeStatus());
                            }
                        } catch (SSLException e11) {
                            e = e11;
                            byteBufferT = null;
                            F(e);
                        }
                    } catch (SSLException e12) {
                        e = e12;
                    }
                    if (iC == byteBufferList.C() && (sSLEngineResultWrap == null || sSLEngineResultWrap.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NEED_WRAP)) {
                        break;
                    }
                } else {
                    break;
                }
            } while (this.f55111b.k() == 0);
            this.f55117h = false;
            ByteBufferList.A(byteBufferT);
        }
    }

    int m(int i11) {
        int i12 = (i11 * 3) / 2;
        if (i12 == 0) {
            return 8192;
        }
        return i12;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void o(bv.j jVar) {
        this.f55121l = jVar;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void p(bv.a aVar) {
        this.f55110a.p(aVar);
    }

    @Override // com.transsion.transfer.androidasync.p
    public void pause() {
        this.f55110a.pause();
    }

    public bv.a r() {
        return this.f55130u;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void resume() {
        this.f55110a.resume();
        C();
    }

    @Override // com.transsion.transfer.androidasync.p
    public void s(bv.a aVar) {
        this.f55130u = aVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void t(bv.d dVar) {
        this.f55122m = dVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public String v() {
        return null;
    }
}
