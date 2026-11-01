package df;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.e;
import com.squareup.okhttp.internal.framed.FramedConnection;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.h;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.d;
import ef.b;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Connection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Route f61339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Socket f61340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Socket f61341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handshake f61342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Protocol f61343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile FramedConnection f61344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f61345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public BufferedSource f61346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BufferedSink f61347i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f61349k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f61348j = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f61350l = Long.MAX_VALUE;

    public a(Route route) {
        this.f61339a = route;
    }

    private void d(int i11, int i12, int i13, com.squareup.okhttp.internal.a aVar) throws Throwable {
        this.f61340b.setSoTimeout(i12);
        try {
            e.f().d(this.f61340b, this.f61339a.getSocketAddress(), i11);
            this.f61346h = Okio.buffer(Okio.source(this.f61340b));
            this.f61347i = Okio.buffer(Okio.sink(this.f61340b));
            if (this.f61339a.getAddress().getSslSocketFactory() != null) {
                e(i12, i13, aVar);
            } else {
                this.f61343e = Protocol.HTTP_1_1;
                this.f61341c = this.f61340b;
            }
            Protocol protocol = this.f61343e;
            if (protocol == Protocol.SPDY_3 || protocol == Protocol.HTTP_2) {
                this.f61341c.setSoTimeout(0);
                FramedConnection framedConnectionI = new FramedConnection.a(true).k(this.f61341c, this.f61339a.getAddress().url().host(), this.f61346h, this.f61347i).j(this.f61343e).i();
                framedConnectionI.x0();
                this.f61344f = framedConnectionI;
            }
        } catch (ConnectException unused) {
            throw new ConnectException("Failed to connect to " + this.f61339a.getSocketAddress());
        }
    }

    private void e(int i11, int i12, com.squareup.okhttp.internal.a aVar) throws Throwable {
        if (this.f61339a.requiresTunnel()) {
            f(i11, i12);
        }
        Address address = this.f61339a.getAddress();
        SSLSocket sSLSocket = null;
        try {
            try {
                SSLSocket sSLSocket2 = (SSLSocket) address.getSslSocketFactory().createSocket(this.f61340b, address.getUriHost(), address.getUriPort(), true);
                try {
                    ConnectionSpec connectionSpecA = aVar.a(sSLSocket2);
                    if (connectionSpecA.supportsTlsExtensions()) {
                        e.f().c(sSLSocket2, address.getUriHost(), address.getProtocols());
                    }
                    sSLSocket2.startHandshake();
                    Handshake handshake = Handshake.get(sSLSocket2.getSession());
                    if (address.getHostnameVerifier().verify(address.getUriHost(), sSLSocket2.getSession())) {
                        address.getCertificatePinner().check(address.getUriHost(), handshake.peerCertificates());
                        String strH = connectionSpecA.supportsTlsExtensions() ? e.f().h(sSLSocket2) : null;
                        this.f61341c = sSLSocket2;
                        this.f61346h = Okio.buffer(Okio.source(sSLSocket2));
                        this.f61347i = Okio.buffer(Okio.sink(this.f61341c));
                        this.f61342d = handshake;
                        this.f61343e = strH != null ? Protocol.get(strH) : Protocol.HTTP_1_1;
                        e.f().a(sSLSocket2);
                        return;
                    }
                    X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + address.getUriHost() + " not verified:\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + b.a(x509Certificate));
                } catch (AssertionError e11) {
                    e = e11;
                    if (!g.o(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th2) {
                    th = th2;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        e.f().a(sSLSocket);
                    }
                    g.d(sSLSocket);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (AssertionError e12) {
            e = e12;
        }
    }

    private void f(int i11, int i12) throws IOException {
        Request requestG = g();
        HttpUrl httpUrl = requestG.httpUrl();
        String str = "CONNECT " + httpUrl.host() + ":" + httpUrl.port() + " HTTP/1.1";
        do {
            d dVar = new d(null, this.f61346h, this.f61347i);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f61346h.getTimeout().timeout(i11, timeUnit);
            this.f61347i.getTimeout().timeout(i12, timeUnit);
            dVar.p(requestG.headers(), str);
            dVar.finishRequest();
            Response responseBuild = dVar.o().request(requestG).build();
            long jE = OkHeaders.e(responseBuild);
            if (jE == -1) {
                jE = 0;
            }
            Source sourceL = dVar.l(jE);
            g.r(sourceL, Integer.MAX_VALUE, timeUnit);
            sourceL.close();
            int iCode = responseBuild.code();
            if (iCode == 200) {
                if (!this.f61346h.getBufferField().exhausted() || !this.f61347i.getBufferField().exhausted()) {
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                return;
            } else {
                if (iCode != 407) {
                    throw new IOException("Unexpected response code for CONNECT: " + responseBuild.code());
                }
                requestG = OkHeaders.j(this.f61339a.getAddress().getAuthenticator(), responseBuild, this.f61339a.getProxy());
            }
        } while (requestG != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    private Request g() {
        return new Request.Builder().url(this.f61339a.getAddress().url()).header(HttpHeaders.HOST, g.i(this.f61339a.getAddress().url())).header("Proxy-Connection", "Keep-Alive").header("User-Agent", h.a()).build();
    }

    public int a() {
        FramedConnection framedConnection = this.f61344f;
        if (framedConnection != null) {
            return framedConnection.h0();
        }
        return 1;
    }

    public void b() {
        g.d(this.f61340b);
    }

    public void c(int i11, int i12, int i13, List list, boolean z10) {
        if (this.f61343e != null) {
            throw new IllegalStateException("already connected");
        }
        com.squareup.okhttp.internal.a aVar = new com.squareup.okhttp.internal.a(list);
        Proxy proxy = this.f61339a.getProxy();
        Address address = this.f61339a.getAddress();
        if (this.f61339a.getAddress().getSslSocketFactory() == null && !list.contains(ConnectionSpec.CLEARTEXT)) {
            throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
        }
        RouteException routeException = null;
        while (this.f61343e == null) {
            try {
                this.f61340b = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? address.getSocketFactory().createSocket() : new Socket(proxy);
                d(i11, i12, i13, aVar);
            } catch (IOException e11) {
                g.d(this.f61341c);
                g.d(this.f61340b);
                this.f61341c = null;
                this.f61340b = null;
                this.f61346h = null;
                this.f61347i = null;
                this.f61342d = null;
                this.f61343e = null;
                if (routeException == null) {
                    routeException = new RouteException(e11);
                } else {
                    routeException.addConnectException(e11);
                }
                if (!z10) {
                    throw routeException;
                }
                if (!aVar.b(e11)) {
                    throw routeException;
                }
            }
        }
    }

    @Override // com.squareup.okhttp.Connection
    public Handshake getHandshake() {
        return this.f61342d;
    }

    @Override // com.squareup.okhttp.Connection
    public Protocol getProtocol() {
        Protocol protocol = this.f61343e;
        return protocol != null ? protocol : Protocol.HTTP_1_1;
    }

    @Override // com.squareup.okhttp.Connection
    public Route getRoute() {
        return this.f61339a;
    }

    @Override // com.squareup.okhttp.Connection
    public Socket getSocket() {
        return this.f61341c;
    }

    public boolean h(boolean z10) {
        if (this.f61341c.isClosed() || this.f61341c.isInputShutdown() || this.f61341c.isOutputShutdown()) {
            return false;
        }
        if (this.f61344f == null && z10) {
            try {
                int soTimeout = this.f61341c.getSoTimeout();
                try {
                    this.f61341c.setSoTimeout(1);
                    if (this.f61346h.exhausted()) {
                        this.f61341c.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f61341c.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th2) {
                    this.f61341c.setSoTimeout(soTimeout);
                    throw th2;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean i() {
        return this.f61344f != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f61339a.getAddress().url().host());
        sb2.append(":");
        sb2.append(this.f61339a.getAddress().url().port());
        sb2.append(", proxy=");
        sb2.append(this.f61339a.getProxy());
        sb2.append(" hostAddress=");
        sb2.append(this.f61339a.getSocketAddress());
        sb2.append(" cipherSuite=");
        Handshake handshake = this.f61342d;
        sb2.append(handshake != null ? handshake.cipherSuite() : "none");
        sb2.append(" protocol=");
        sb2.append(this.f61343e);
        sb2.append('}');
        return sb2.toString();
    }
}
