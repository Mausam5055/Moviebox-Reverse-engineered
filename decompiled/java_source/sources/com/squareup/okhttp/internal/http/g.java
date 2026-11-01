package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.InternalCache;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final ResponseBody f40500r = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final OkHttpClient f40501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f40502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Response f40503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HttpStream f40504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f40505e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f40506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f40507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Request f40508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Request f40509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Response f40510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Response f40511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Sink f40512l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private BufferedSink f40513m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f40514n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f40515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CacheRequest f40516p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.squareup.okhttp.internal.http.b f40517q;

    static class a extends ResponseBody {
        a() {
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return 0L;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return new Buffer();
        }
    }

    class b implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f40518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BufferedSource f40519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CacheRequest f40520c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ BufferedSink f40521d;

        b(BufferedSource bufferedSource, CacheRequest cacheRequest, BufferedSink bufferedSink) {
            this.f40519b = bufferedSource;
            this.f40520c = cacheRequest;
            this.f40521d = bufferedSink;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f40518a && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                this.f40518a = true;
                this.f40520c.abort();
            }
            this.f40519b.close();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            try {
                long j12 = this.f40519b.read(buffer, j11);
                if (j12 != -1) {
                    buffer.copyTo(this.f40521d.getBufferField(), buffer.size() - j12, j12);
                    this.f40521d.emitCompleteSegments();
                    return j12;
                }
                if (!this.f40518a) {
                    this.f40518a = true;
                    this.f40521d.close();
                }
                return -1L;
            } catch (IOException e11) {
                if (!this.f40518a) {
                    this.f40518a = true;
                    this.f40520c.abort();
                }
                throw e11;
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.f40519b.timeout();
        }
    }

    class c implements Interceptor.Chain {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f40523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Request f40524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f40525c;

        c(int i11, Request request) {
            this.f40523a = i11;
            this.f40524b = request;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return g.this.f40502b.c();
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            this.f40525c++;
            if (this.f40523a > 0) {
                Interceptor interceptor = g.this.f40501a.networkInterceptors().get(this.f40523a - 1);
                Address address = connection().getRoute().getAddress();
                if (!request.httpUrl().host().equals(address.getUriHost()) || request.httpUrl().port() != address.getUriPort()) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must retain the same host and port");
                }
                if (this.f40525c > 1) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                }
            }
            if (this.f40523a < g.this.f40501a.networkInterceptors().size()) {
                c cVar = g.this.new c(this.f40523a + 1, request);
                Interceptor interceptor2 = g.this.f40501a.networkInterceptors().get(this.f40523a);
                Response responseIntercept = interceptor2.intercept(cVar);
                if (cVar.f40525c != 1) {
                    throw new IllegalStateException("network interceptor " + interceptor2 + " must call proceed() exactly once");
                }
                if (responseIntercept != null) {
                    return responseIntercept;
                }
                throw new NullPointerException("network interceptor " + interceptor2 + " returned null");
            }
            g.this.f40504d.writeRequestHeaders(request);
            g.this.f40509i = request;
            if (g.this.q(request) && request.body() != null) {
                BufferedSink bufferedSinkBuffer = Okio.buffer(g.this.f40504d.createRequestBody(request, request.body().contentLength()));
                request.body().writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
            }
            Response responseR = g.this.r();
            int iCode = responseR.code();
            if ((iCode != 204 && iCode != 205) || responseR.body().contentLength() <= 0) {
                return responseR;
            }
            throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseR.body().contentLength());
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.f40524b;
        }
    }

    public g(OkHttpClient okHttpClient, Request request, boolean z10, boolean z11, boolean z12, n nVar, k kVar, Response response) {
        this.f40501a = okHttpClient;
        this.f40508h = request;
        this.f40507g = z10;
        this.f40514n = z11;
        this.f40515o = z12;
        this.f40502b = nVar == null ? new n(okHttpClient.getConnectionPool(), i(okHttpClient, request)) : nVar;
        this.f40512l = kVar;
        this.f40503c = response;
    }

    private Response A(Response response) {
        if (!this.f40506f || !"gzip".equalsIgnoreCase(this.f40511k.header(HttpHeaders.CONTENT_ENCODING)) || response.body() == null) {
            return response;
        }
        GzipSource gzipSource = new GzipSource(response.body().source());
        Headers headersBuild = response.headers().newBuilder().removeAll(HttpHeaders.CONTENT_ENCODING).removeAll(HttpHeaders.CONTENT_LENGTH).build();
        return response.newBuilder().headers(headersBuild).body(new i(headersBuild, Okio.buffer(gzipSource))).build();
    }

    private static boolean B(Response response, Response response2) {
        Date date;
        if (response2.code() == 304) {
            return true;
        }
        Date date2 = response.headers().getDate("Last-Modified");
        return (date2 == null || (date = response2.headers().getDate("Last-Modified")) == null || date.getTime() >= date2.getTime()) ? false : true;
    }

    private Response d(CacheRequest cacheRequest, Response response) {
        Sink sinkBody;
        return (cacheRequest == null || (sinkBody = cacheRequest.body()) == null) ? response : response.newBuilder().body(new i(response.headers(), Okio.buffer(new b(response.body().source(), cacheRequest, Okio.buffer(sinkBody))))).build();
    }

    private static Headers g(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i11 = 0; i11 < size; i11++) {
            String strName = headers.name(i11);
            String strValue = headers.value(i11);
            if ((!"Warning".equalsIgnoreCase(strName) || !strValue.startsWith("1")) && (!OkHeaders.h(strName) || headers2.get(strName) == null)) {
                builder.add(strName, strValue);
            }
        }
        int size2 = headers2.size();
        for (int i12 = 0; i12 < size2; i12++) {
            String strName2 = headers2.name(i12);
            if (!HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(strName2) && OkHeaders.h(strName2)) {
                builder.add(strName2, headers2.value(i12));
            }
        }
        return builder.build();
    }

    private HttpStream h() {
        return this.f40502b.k(this.f40501a.getConnectTimeout(), this.f40501a.getReadTimeout(), this.f40501a.getWriteTimeout(), this.f40501a.getRetryOnConnectionFailure(), !this.f40509i.method().equals("GET"));
    }

    private static Address i(OkHttpClient okHttpClient, Request request) {
        SSLSocketFactory sslSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (request.isHttps()) {
            sslSocketFactory = okHttpClient.getSslSocketFactory();
            hostnameVerifier = okHttpClient.getHostnameVerifier();
            certificatePinner = okHttpClient.getCertificatePinner();
        } else {
            sslSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(request.httpUrl().host(), request.httpUrl().port(), okHttpClient.getDns(), okHttpClient.getSocketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.getAuthenticator(), okHttpClient.getProxy(), okHttpClient.getProtocols(), okHttpClient.getConnectionSpecs(), okHttpClient.getProxySelector());
    }

    public static boolean n(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && OkHeaders.e(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    private void o() {
        InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f40501a);
        if (internalCache == null) {
            return;
        }
        if (com.squareup.okhttp.internal.http.b.a(this.f40511k, this.f40509i)) {
            this.f40516p = internalCache.put(z(this.f40511k));
        } else if (h.a(this.f40509i.method())) {
            try {
                internalCache.remove(this.f40509i);
            } catch (IOException unused) {
            }
        }
    }

    private Request p(Request request) {
        Request.Builder builderNewBuilder = request.newBuilder();
        if (request.header(HttpHeaders.HOST) == null) {
            builderNewBuilder.header(HttpHeaders.HOST, com.squareup.okhttp.internal.g.i(request.httpUrl()));
        }
        if (request.header("Connection") == null) {
            builderNewBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null) {
            this.f40506f = true;
            builderNewBuilder.header("Accept-Encoding", "gzip");
        }
        CookieHandler cookieHandler = this.f40501a.getCookieHandler();
        if (cookieHandler != null) {
            OkHeaders.a(builderNewBuilder, cookieHandler.get(request.uri(), OkHeaders.l(builderNewBuilder.build().headers(), null)));
        }
        if (request.header("User-Agent") == null) {
            builderNewBuilder.header("User-Agent", com.squareup.okhttp.internal.h.a());
        }
        return builderNewBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response r() throws IOException {
        this.f40504d.finishRequest();
        Response responseBuild = this.f40504d.readResponseHeaders().request(this.f40509i).handshake(this.f40502b.c().getHandshake()).header(OkHeaders.f40437c, Long.toString(this.f40505e)).header(OkHeaders.f40438d, Long.toString(System.currentTimeMillis())).build();
        if (!this.f40515o) {
            responseBuild = responseBuild.newBuilder().body(this.f40504d.openResponseBody(responseBuild)).build();
        }
        if ("close".equalsIgnoreCase(responseBuild.request().header("Connection")) || "close".equalsIgnoreCase(responseBuild.header("Connection"))) {
            this.f40502b.l();
        }
        return responseBuild;
    }

    private static Response z(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    public void C() {
        if (this.f40505e != -1) {
            throw new IllegalStateException();
        }
        this.f40505e = System.currentTimeMillis();
    }

    public void e() {
        this.f40502b.b();
    }

    public n f() {
        BufferedSink bufferedSink = this.f40513m;
        if (bufferedSink != null) {
            com.squareup.okhttp.internal.g.c(bufferedSink);
        } else {
            Sink sink = this.f40512l;
            if (sink != null) {
                com.squareup.okhttp.internal.g.c(sink);
            }
        }
        Response response = this.f40511k;
        if (response != null) {
            com.squareup.okhttp.internal.g.c(response.body());
        } else {
            this.f40502b.d();
        }
        return this.f40502b;
    }

    public Request j() throws ProtocolException {
        String strHeader;
        HttpUrl httpUrlResolve;
        if (this.f40511k == null) {
            throw new IllegalStateException();
        }
        df.a aVarC = this.f40502b.c();
        Route route = aVarC != null ? aVarC.getRoute() : null;
        Proxy proxy = route != null ? route.getProxy() : this.f40501a.getProxy();
        int iCode = this.f40511k.code();
        String strMethod = this.f40508h.method();
        if (iCode != 307 && iCode != 308) {
            if (iCode != 401) {
                if (iCode != 407) {
                    switch (iCode) {
                        case 300:
                        case MRAID_ERROR_VALUE:
                        case INVALID_IFA_STATUS_VALUE:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                } else if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
            }
            return OkHeaders.j(this.f40501a.getAuthenticator(), this.f40511k, proxy);
        }
        if (!strMethod.equals("GET") && !strMethod.equals("HEAD")) {
            return null;
        }
        if (!this.f40501a.getFollowRedirects() || (strHeader = this.f40511k.header(HttpHeaders.LOCATION)) == null || (httpUrlResolve = this.f40508h.httpUrl().resolve(strHeader)) == null) {
            return null;
        }
        if (!httpUrlResolve.scheme().equals(this.f40508h.httpUrl().scheme()) && !this.f40501a.getFollowSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = this.f40508h.newBuilder();
        if (h.b(strMethod)) {
            if (h.c(strMethod)) {
                builderNewBuilder.method("GET", null);
            } else {
                builderNewBuilder.method(strMethod, null);
            }
            builderNewBuilder.removeHeader("Transfer-Encoding");
            builderNewBuilder.removeHeader(HttpHeaders.CONTENT_LENGTH);
            builderNewBuilder.removeHeader(HttpHeaders.CONTENT_TYPE);
        }
        if (!x(httpUrlResolve)) {
            builderNewBuilder.removeHeader(HttpHeaders.AUTHORIZATION);
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    public Connection k() {
        return this.f40502b.c();
    }

    public Request l() {
        return this.f40508h;
    }

    public Response m() {
        Response response = this.f40511k;
        if (response != null) {
            return response;
        }
        throw new IllegalStateException();
    }

    boolean q(Request request) {
        return h.b(request.method());
    }

    public void s() throws IOException {
        Response responseR;
        if (this.f40511k != null) {
            return;
        }
        Request request = this.f40509i;
        if (request == null && this.f40510j == null) {
            throw new IllegalStateException("call sendRequest() first!");
        }
        if (request == null) {
            return;
        }
        if (this.f40515o) {
            this.f40504d.writeRequestHeaders(request);
            responseR = r();
        } else if (this.f40514n) {
            BufferedSink bufferedSink = this.f40513m;
            if (bufferedSink != null && bufferedSink.getBufferField().size() > 0) {
                this.f40513m.emit();
            }
            if (this.f40505e == -1) {
                if (OkHeaders.d(this.f40509i) == -1) {
                    Sink sink = this.f40512l;
                    if (sink instanceof k) {
                        this.f40509i = this.f40509i.newBuilder().header(HttpHeaders.CONTENT_LENGTH, Long.toString(((k) sink).d())).build();
                    }
                }
                this.f40504d.writeRequestHeaders(this.f40509i);
            }
            Sink sink2 = this.f40512l;
            if (sink2 != null) {
                BufferedSink bufferedSink2 = this.f40513m;
                if (bufferedSink2 != null) {
                    bufferedSink2.close();
                } else {
                    sink2.close();
                }
                Sink sink3 = this.f40512l;
                if (sink3 instanceof k) {
                    this.f40504d.writeRequestBody((k) sink3);
                }
            }
            responseR = r();
        } else {
            responseR = new c(0, request).proceed(this.f40509i);
        }
        t(responseR.headers());
        Response response = this.f40510j;
        if (response != null) {
            if (B(response, responseR)) {
                this.f40511k = this.f40510j.newBuilder().request(this.f40508h).priorResponse(z(this.f40503c)).headers(g(this.f40510j.headers(), responseR.headers())).cacheResponse(z(this.f40510j)).networkResponse(z(responseR)).build();
                responseR.body().close();
                w();
                InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f40501a);
                internalCache.trackConditionalCacheHit();
                internalCache.update(this.f40510j, z(this.f40511k));
                this.f40511k = A(this.f40511k);
                return;
            }
            com.squareup.okhttp.internal.g.c(this.f40510j.body());
        }
        Response responseBuild = responseR.newBuilder().request(this.f40508h).priorResponse(z(this.f40503c)).cacheResponse(z(this.f40510j)).networkResponse(z(responseR)).build();
        this.f40511k = responseBuild;
        if (n(responseBuild)) {
            o();
            this.f40511k = A(d(this.f40516p, this.f40511k));
        }
    }

    public void t(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.f40501a.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.f40508h.uri(), OkHeaders.l(headers, null));
        }
    }

    public g u(RouteException routeException) {
        if (!this.f40502b.m(routeException) || !this.f40501a.getRetryOnConnectionFailure()) {
            return null;
        }
        return new g(this.f40501a, this.f40508h, this.f40507g, this.f40514n, this.f40515o, f(), (k) this.f40512l, this.f40503c);
    }

    public g v(IOException iOException, Sink sink) {
        if (!this.f40502b.n(iOException, sink) || !this.f40501a.getRetryOnConnectionFailure()) {
            return null;
        }
        return new g(this.f40501a, this.f40508h, this.f40507g, this.f40514n, this.f40515o, f(), (k) sink, this.f40503c);
    }

    public void w() {
        this.f40502b.o();
    }

    public boolean x(HttpUrl httpUrl) {
        HttpUrl httpUrl2 = this.f40508h.httpUrl();
        return httpUrl2.host().equals(httpUrl.host()) && httpUrl2.port() == httpUrl.port() && httpUrl2.scheme().equals(httpUrl.scheme());
    }

    public void y() throws IOException {
        if (this.f40517q != null) {
            return;
        }
        if (this.f40504d != null) {
            throw new IllegalStateException();
        }
        Request requestP = p(this.f40508h);
        InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f40501a);
        Response response = internalCache != null ? internalCache.get(requestP) : null;
        com.squareup.okhttp.internal.http.b bVarC = new com.squareup.okhttp.internal.http.b.C0580b(System.currentTimeMillis(), requestP, response).c();
        this.f40517q = bVarC;
        this.f40509i = bVarC.f40442a;
        this.f40510j = bVarC.f40443b;
        if (internalCache != null) {
            internalCache.trackResponse(bVarC);
        }
        if (response != null && this.f40510j == null) {
            com.squareup.okhttp.internal.g.c(response.body());
        }
        if (this.f40509i == null) {
            Response response2 = this.f40510j;
            if (response2 != null) {
                this.f40511k = response2.newBuilder().request(this.f40508h).priorResponse(z(this.f40503c)).cacheResponse(z(this.f40510j)).build();
            } else {
                this.f40511k = new Response.Builder().request(this.f40508h).priorResponse(z(this.f40503c)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(f40500r).build();
            }
            this.f40511k = A(this.f40511k);
            return;
        }
        HttpStream httpStreamH = h();
        this.f40504d = httpStreamH;
        httpStreamH.setHttpEngine(this);
        if (this.f40514n && q(this.f40509i) && this.f40512l == null) {
            long jD = OkHeaders.d(requestP);
            if (!this.f40507g) {
                this.f40504d.writeRequestHeaders(this.f40509i);
                this.f40512l = this.f40504d.createRequestBody(this.f40509i, jD);
            } else {
                if (jD > 2147483647L) {
                    throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                }
                if (jD == -1) {
                    this.f40512l = new k();
                } else {
                    this.f40504d.writeRequestHeaders(this.f40509i);
                    this.f40512l = new k((int) jD);
                }
            }
        }
    }
}
