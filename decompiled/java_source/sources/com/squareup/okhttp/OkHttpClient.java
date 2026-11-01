package com.squareup.okhttp;

import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.c;
import com.squareup.okhttp.internal.f;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.http.n;
import df.a;
import ef.b;
import java.net.CookieHandler;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class OkHttpClient implements Cloneable {
    private static SSLSocketFactory defaultSslSocketFactory;
    private Authenticator authenticator;
    private Cache cache;
    private CertificatePinner certificatePinner;
    private int connectTimeout;
    private ConnectionPool connectionPool;
    private List<ConnectionSpec> connectionSpecs;
    private CookieHandler cookieHandler;
    private Dispatcher dispatcher;
    private Dns dns;
    private boolean followRedirects;
    private boolean followSslRedirects;
    private HostnameVerifier hostnameVerifier;
    private final List<Interceptor> interceptors;
    private InternalCache internalCache;
    private final List<Interceptor> networkInterceptors;
    private List<Protocol> protocols;
    private Proxy proxy;
    private ProxySelector proxySelector;
    private int readTimeout;
    private boolean retryOnConnectionFailure;
    private final f routeDatabase;
    private SocketFactory socketFactory;
    private SSLSocketFactory sslSocketFactory;
    private int writeTimeout;
    private static final List<Protocol> DEFAULT_PROTOCOLS = g.k(Protocol.HTTP_2, Protocol.SPDY_3, Protocol.HTTP_1_1);
    private static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = g.k(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT);

    static {
        c.instance = new c() { // from class: com.squareup.okhttp.OkHttpClient.1
            @Override // com.squareup.okhttp.internal.c
            public void addLenient(Headers.Builder builder, String str) {
                builder.addLenient(str);
            }

            public void addLenient(Headers.Builder builder, String str, String str2) {
                builder.addLenient(str, str2);
            }

            @Override // com.squareup.okhttp.internal.c
            public void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z10) {
                connectionSpec.apply(sSLSocket, z10);
            }

            public n callEngineGetStreamAllocation(Call call) {
                return call.engine.f40502b;
            }

            public void callEnqueue(Call call, Callback callback, boolean z10) {
                call.enqueue(callback, z10);
            }

            @Override // com.squareup.okhttp.internal.c
            public boolean connectionBecameIdle(ConnectionPool connectionPool, a aVar) {
                return connectionPool.connectionBecameIdle(aVar);
            }

            @Override // com.squareup.okhttp.internal.c
            public a get(ConnectionPool connectionPool, Address address, n nVar) {
                return connectionPool.get(address, nVar);
            }

            public HttpUrl getHttpUrlChecked(String str) throws MalformedURLException, UnknownHostException {
                return HttpUrl.getChecked(str);
            }

            @Override // com.squareup.okhttp.internal.c
            public InternalCache internalCache(OkHttpClient okHttpClient) {
                return okHttpClient.internalCache();
            }

            @Override // com.squareup.okhttp.internal.c
            public void put(ConnectionPool connectionPool, a aVar) {
                connectionPool.put(aVar);
            }

            @Override // com.squareup.okhttp.internal.c
            public f routeDatabase(ConnectionPool connectionPool) {
                return connectionPool.routeDatabase;
            }

            public void setCache(OkHttpClient okHttpClient, InternalCache internalCache) {
                okHttpClient.setInternalCache(internalCache);
            }
        };
    }

    public OkHttpClient() {
        this.interceptors = new ArrayList();
        this.networkInterceptors = new ArrayList();
        this.followSslRedirects = true;
        this.followRedirects = true;
        this.retryOnConnectionFailure = true;
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.writeTimeout = 10000;
        this.routeDatabase = new f();
        this.dispatcher = new Dispatcher();
    }

    private OkHttpClient(OkHttpClient okHttpClient) {
        ArrayList arrayList = new ArrayList();
        this.interceptors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.networkInterceptors = arrayList2;
        this.followSslRedirects = true;
        this.followRedirects = true;
        this.retryOnConnectionFailure = true;
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.writeTimeout = 10000;
        this.routeDatabase = okHttpClient.routeDatabase;
        this.dispatcher = okHttpClient.dispatcher;
        this.proxy = okHttpClient.proxy;
        this.protocols = okHttpClient.protocols;
        this.connectionSpecs = okHttpClient.connectionSpecs;
        arrayList.addAll(okHttpClient.interceptors);
        arrayList2.addAll(okHttpClient.networkInterceptors);
        this.proxySelector = okHttpClient.proxySelector;
        this.cookieHandler = okHttpClient.cookieHandler;
        Cache cache = okHttpClient.cache;
        this.cache = cache;
        this.internalCache = cache != null ? cache.internalCache : okHttpClient.internalCache;
        this.socketFactory = okHttpClient.socketFactory;
        this.sslSocketFactory = okHttpClient.sslSocketFactory;
        this.hostnameVerifier = okHttpClient.hostnameVerifier;
        this.certificatePinner = okHttpClient.certificatePinner;
        this.authenticator = okHttpClient.authenticator;
        this.connectionPool = okHttpClient.connectionPool;
        this.dns = okHttpClient.dns;
        this.followSslRedirects = okHttpClient.followSslRedirects;
        this.followRedirects = okHttpClient.followRedirects;
        this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure;
        this.connectTimeout = okHttpClient.connectTimeout;
        this.readTimeout = okHttpClient.readTimeout;
        this.writeTimeout = okHttpClient.writeTimeout;
    }

    private synchronized SSLSocketFactory getDefaultSSLSocketFactory() {
        if (defaultSslSocketFactory == null) {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, null, null);
                defaultSslSocketFactory = sSLContext.getSocketFactory();
            } catch (GeneralSecurityException unused) {
                throw new AssertionError();
            }
        }
        return defaultSslSocketFactory;
    }

    public OkHttpClient cancel(Object obj) {
        getDispatcher().cancel(obj);
        return this;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public OkHttpClient m294clone() {
        return new OkHttpClient(this);
    }

    OkHttpClient copyWithDefaults() {
        OkHttpClient okHttpClient = new OkHttpClient(this);
        if (okHttpClient.proxySelector == null) {
            okHttpClient.proxySelector = ProxySelector.getDefault();
        }
        if (okHttpClient.cookieHandler == null) {
            okHttpClient.cookieHandler = CookieHandler.getDefault();
        }
        if (okHttpClient.socketFactory == null) {
            okHttpClient.socketFactory = SocketFactory.getDefault();
        }
        if (okHttpClient.sslSocketFactory == null) {
            okHttpClient.sslSocketFactory = getDefaultSSLSocketFactory();
        }
        if (okHttpClient.hostnameVerifier == null) {
            okHttpClient.hostnameVerifier = b.f61860a;
        }
        if (okHttpClient.certificatePinner == null) {
            okHttpClient.certificatePinner = CertificatePinner.DEFAULT;
        }
        if (okHttpClient.authenticator == null) {
            okHttpClient.authenticator = com.squareup.okhttp.internal.http.a.f40441a;
        }
        if (okHttpClient.connectionPool == null) {
            okHttpClient.connectionPool = ConnectionPool.getDefault();
        }
        if (okHttpClient.protocols == null) {
            okHttpClient.protocols = DEFAULT_PROTOCOLS;
        }
        if (okHttpClient.connectionSpecs == null) {
            okHttpClient.connectionSpecs = DEFAULT_CONNECTION_SPECS;
        }
        if (okHttpClient.dns == null) {
            okHttpClient.dns = Dns.SYSTEM;
        }
        return okHttpClient;
    }

    public Authenticator getAuthenticator() {
        return this.authenticator;
    }

    public Cache getCache() {
        return this.cache;
    }

    public CertificatePinner getCertificatePinner() {
        return this.certificatePinner;
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public ConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public List<ConnectionSpec> getConnectionSpecs() {
        return this.connectionSpecs;
    }

    public CookieHandler getCookieHandler() {
        return this.cookieHandler;
    }

    public Dispatcher getDispatcher() {
        return this.dispatcher;
    }

    public Dns getDns() {
        return this.dns;
    }

    public boolean getFollowRedirects() {
        return this.followRedirects;
    }

    public boolean getFollowSslRedirects() {
        return this.followSslRedirects;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    public List<Protocol> getProtocols() {
        return this.protocols;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public ProxySelector getProxySelector() {
        return this.proxySelector;
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public boolean getRetryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    public SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public int getWriteTimeout() {
        return this.writeTimeout;
    }

    public List<Interceptor> interceptors() {
        return this.interceptors;
    }

    InternalCache internalCache() {
        return this.internalCache;
    }

    public List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    public Call newCall(Request request) {
        return new Call(this, request);
    }

    f routeDatabase() {
        return this.routeDatabase;
    }

    public OkHttpClient setAuthenticator(Authenticator authenticator) {
        this.authenticator = authenticator;
        return this;
    }

    public OkHttpClient setCache(Cache cache) {
        this.cache = cache;
        this.internalCache = null;
        return this;
    }

    public OkHttpClient setCertificatePinner(CertificatePinner certificatePinner) {
        this.certificatePinner = certificatePinner;
        return this;
    }

    public void setConnectTimeout(long j11, TimeUnit timeUnit) {
        if (j11 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j11);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j11 > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.connectTimeout = (int) millis;
    }

    public OkHttpClient setConnectionPool(ConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        return this;
    }

    public OkHttpClient setConnectionSpecs(List<ConnectionSpec> list) {
        this.connectionSpecs = g.j(list);
        return this;
    }

    public OkHttpClient setCookieHandler(CookieHandler cookieHandler) {
        this.cookieHandler = cookieHandler;
        return this;
    }

    public OkHttpClient setDispatcher(Dispatcher dispatcher) {
        if (dispatcher == null) {
            throw new IllegalArgumentException("dispatcher == null");
        }
        this.dispatcher = dispatcher;
        return this;
    }

    public OkHttpClient setDns(Dns dns) {
        this.dns = dns;
        return this;
    }

    public void setFollowRedirects(boolean z10) {
        this.followRedirects = z10;
    }

    public OkHttpClient setFollowSslRedirects(boolean z10) {
        this.followSslRedirects = z10;
        return this;
    }

    public OkHttpClient setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
        return this;
    }

    void setInternalCache(InternalCache internalCache) {
        this.internalCache = internalCache;
        this.cache = null;
    }

    public OkHttpClient setProtocols(List<Protocol> list) {
        List listJ = g.j(list);
        if (!listJ.contains(Protocol.HTTP_1_1)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + listJ);
        }
        if (listJ.contains(Protocol.HTTP_1_0)) {
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + listJ);
        }
        if (listJ.contains(null)) {
            throw new IllegalArgumentException("protocols must not contain null");
        }
        this.protocols = g.j(listJ);
        return this;
    }

    public OkHttpClient setProxy(Proxy proxy) {
        this.proxy = proxy;
        return this;
    }

    public OkHttpClient setProxySelector(ProxySelector proxySelector) {
        this.proxySelector = proxySelector;
        return this;
    }

    public void setReadTimeout(long j11, TimeUnit timeUnit) {
        if (j11 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j11);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j11 > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.readTimeout = (int) millis;
    }

    public void setRetryOnConnectionFailure(boolean z10) {
        this.retryOnConnectionFailure = z10;
    }

    public OkHttpClient setSocketFactory(SocketFactory socketFactory) {
        this.socketFactory = socketFactory;
        return this;
    }

    public OkHttpClient setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
        return this;
    }

    public void setWriteTimeout(long j11, TimeUnit timeUnit) {
        if (j11 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j11);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j11 > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.writeTimeout = (int) millis;
    }
}
