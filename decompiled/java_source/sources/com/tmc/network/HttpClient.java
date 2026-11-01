package com.tmc.network;

import android.os.Environment;
import android.util.Log;
import com.cloud.config.utils.XLogUtil;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tmc.network.log.LogLevel;
import com.transsion.api.gateway.GateWaySdk;
import com.transsion.api.gateway.interceptor.GatewayInterceptor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0013\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J!\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0002¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u0004\u0018\u00010\u0003J\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/tmc/network/HttpClient;", "", XLogUtil.TAG, "Lcom/tmc/network/HttpClientConfig;", "(Lcom/tmc/network/HttpClientConfig;)V", "mOkHttpClient", "Lokhttp3/OkHttpClient;", "createSSLSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "trustManagers", "", "Ljavax/net/ssl/TrustManager;", "([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;", "getConfig", "getOkHttpClient", "newCall", "Lokhttp3/Call;", "request", "Lokhttp3/Request;", "resetHttpClient", "", "setConfig", "Companion", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HttpClient {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean ifForceUseCache;
    private static boolean ifInitAnalytics;
    private static boolean ifTestMode;
    private static boolean ifUseCache;
    private static List<Interceptor> initInterceptors;
    private static ProgressListener progressListener;
    private HttpClientConfig config;
    private OkHttpClient mOkHttpClient;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0010\u001a\u00020\u0004J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/tmc/network/HttpClient$Companion;", "", "()V", "ifForceUseCache", "", "ifInitAnalytics", "ifTestMode", "ifUseCache", "initInterceptors", "", "Lokhttp3/Interceptor;", "progressListener", "Lcom/tmc/network/ProgressListener;", "addInterceptor", "", "interceptor", "isForceUseCacheMode", "setCacheMode", "ifUse", "ifForce", "setIfInitAnalytics", "ifInit", "setIfTestMode", "setProgressListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addInterceptor(Interceptor interceptor) {
            if (interceptor == null) {
                return;
            }
            if (HttpClient.initInterceptors == null) {
                HttpClient.initInterceptors = new ArrayList();
            }
            List list = HttpClient.initInterceptors;
            if (list == null) {
                return;
            }
            list.add(interceptor);
        }

        public final boolean isForceUseCacheMode() {
            return HttpClient.ifUseCache && HttpClient.ifForceUseCache;
        }

        public final void setCacheMode(boolean ifUse, boolean ifForce) {
            HttpClient.ifUseCache = ifUse;
            HttpClient.ifForceUseCache = ifForce;
        }

        public final void setIfInitAnalytics(boolean ifInit) {
            HttpClient.ifInitAnalytics = ifInit;
        }

        public final void setIfTestMode(boolean ifInit) {
            HttpClient.ifTestMode = ifInit;
        }

        public final void setProgressListener(ProgressListener listener) {
            HttpClient.progressListener = listener;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public HttpClient() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @JvmOverloads
    public HttpClient(HttpClientConfig httpClientConfig) {
        if (httpClientConfig == null) {
            httpClientConfig = new HttpClientConfig(0, 0L, null, 7, null);
        }
        setConfig(httpClientConfig);
    }

    public /* synthetic */ HttpClient(HttpClientConfig httpClientConfig, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i11 & 1) != 0) {
            httpClientConfig = new HttpClientConfig(0, 0L, null, 7, null);
        }
        this(httpClientConfig);
    }

    private final SSLSocketFactory createSSLSocketFactory(TrustManager[] trustManagers) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, trustManagers, new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e11) {
            gg.b.f63567a.e(e11);
            return null;
        }
    }

    public final HttpClientConfig getConfig() {
        return this.config;
    }

    public final synchronized OkHttpClient getOkHttpClient() {
        return this.mOkHttpClient;
    }

    public final synchronized Call newCall(Request request) {
        Call callNewCall;
        OkHttpClient okHttpClient = this.mOkHttpClient;
        if (okHttpClient == null) {
            callNewCall = null;
        } else {
            Intrinsics.e(request);
            callNewCall = okHttpClient.newCall(request);
        }
        return callNewCall;
    }

    public final synchronized void resetHttpClient() {
        Dns localDns;
        try {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            HttpClientConfig httpClientConfig = this.config;
            Intrinsics.e(httpClientConfig);
            long timeoutConnect = httpClientConfig.getTimeoutConnect();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            OkHttpClient.Builder builderConnectTimeout = builder.connectTimeout(timeoutConnect, timeUnit);
            HttpClientConfig httpClientConfig2 = this.config;
            Intrinsics.e(httpClientConfig2);
            OkHttpClient.Builder builderWriteTimeout = builderConnectTimeout.writeTimeout(httpClientConfig2.getTimeoutWrite(), timeUnit);
            HttpClientConfig httpClientConfig3 = this.config;
            Intrinsics.e(httpClientConfig3);
            OkHttpClient.Builder timeout = builderWriteTimeout.readTimeout(httpClientConfig3.getTimeoutRead(), timeUnit);
            HttpClientConfig httpClientConfig4 = this.config;
            Intrinsics.e(httpClientConfig4);
            int maxIdleConnections = httpClientConfig4.getMaxIdleConnections();
            HttpClientConfig httpClientConfig5 = this.config;
            Intrinsics.e(httpClientConfig5);
            long keepAliveDuration = httpClientConfig5.getKeepAliveDuration();
            HttpClientConfig httpClientConfig6 = this.config;
            CertificatePinner certificatePinner = null;
            TimeUnit keepAliveTimeUnit = httpClientConfig6 == null ? null : httpClientConfig6.getKeepAliveTimeUnit();
            Intrinsics.e(keepAliveTimeUnit);
            OkHttpClient.Builder builderConnectionPool = timeout.connectionPool(new ConnectionPool(maxIdleConnections, keepAliveDuration, keepAliveTimeUnit));
            if (ifUseCache) {
                builderConnectionPool = builderConnectionPool.cache(new Cache(new File(Environment.getExternalStorageDirectory(), "s_cache"), ((Long) 10485760).longValue()));
            }
            HttpClientConfig httpClientConfig7 = this.config;
            if ((httpClientConfig7 == null ? null : httpClientConfig7.getInterceptors()) != null) {
                builderConnectionPool.addInterceptor(new GatewayInterceptor());
                ProgressListener progressListener2 = progressListener;
                if (progressListener2 != null) {
                    builderConnectionPool.addNetworkInterceptor(new DownloadInterceptor(progressListener2));
                }
                HttpClientConfig httpClientConfig8 = this.config;
                List<Interceptor> interceptors = httpClientConfig8 == null ? null : httpClientConfig8.getInterceptors();
                Intrinsics.e(interceptors);
                for (Interceptor interceptor : interceptors) {
                    if (interceptor != null) {
                        builderConnectionPool.addInterceptor(interceptor);
                    }
                }
            }
            if (Log.isLoggable("mininetwork", 3)) {
                dg.b bVar = new dg.b(new dg.a());
                LogLevel logLevel = LogLevel.BODY;
                bVar.e(logLevel);
                bVar.f(logLevel);
                builderConnectionPool.addNetworkInterceptor(bVar);
            }
            List<Interceptor> list = initInterceptors;
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    builderConnectionPool.addInterceptor((Interceptor) it.next());
                }
            }
            HttpClientConfig httpClientConfig9 = this.config;
            if ((httpClientConfig9 == null ? null : httpClientConfig9.getNetworkInterceptors()) != null) {
                HttpClientConfig httpClientConfig10 = this.config;
                List<Interceptor> networkInterceptors = httpClientConfig10 == null ? null : httpClientConfig10.getNetworkInterceptors();
                Intrinsics.e(networkInterceptors);
                for (Interceptor interceptor2 : networkInterceptors) {
                    if (interceptor2 != null) {
                        builderConnectionPool.addNetworkInterceptor(interceptor2);
                    }
                }
            }
            HttpClientConfig httpClientConfig11 = this.config;
            if ((httpClientConfig11 == null ? null : httpClientConfig11.getExecutorService()) != null) {
                HttpClientConfig httpClientConfig12 = this.config;
                ExecutorService executorService = httpClientConfig12 == null ? null : httpClientConfig12.getExecutorService();
                Intrinsics.e(executorService);
                builderConnectionPool.dispatcher(new Dispatcher(executorService));
            }
            HttpClientConfig httpClientConfig13 = this.config;
            if ((httpClientConfig13 == null ? null : httpClientConfig13.getCertificatePinner()) != null) {
                HttpClientConfig httpClientConfig14 = this.config;
                if (httpClientConfig14 != null) {
                    certificatePinner = httpClientConfig14.getCertificatePinner();
                }
                Intrinsics.e(certificatePinner);
                builderConnectionPool.certificatePinner(certificatePinner);
            }
            builderConnectionPool.eventListenerFactory(cg.b.f17229c.a());
            HttpClientConfig httpClientConfig15 = this.config;
            if (httpClientConfig15 != null && (localDns = httpClientConfig15.getLocalDns()) != null) {
                builderConnectionPool.dns(localDns);
            }
            if (ifTestMode) {
                TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.tmc.network.HttpClient$resetHttpClient$trustAllCerts$1
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509Certificates, String s11) throws CertificateException {
                        Intrinsics.h(x509Certificates, "x509Certificates");
                        Intrinsics.h(s11, "s");
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509Certificates, String s11) throws CertificateException {
                        Intrinsics.h(x509Certificates, "x509Certificates");
                        Intrinsics.h(s11, "s");
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }
                }};
                SSLSocketFactory sSLSocketFactoryCreateSSLSocketFactory = createSSLSocketFactory(trustManagerArr);
                Intrinsics.e(sSLSocketFactoryCreateSSLSocketFactory);
                TrustManager trustManager = trustManagerArr[0];
                if (trustManager == null) {
                    throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                }
                builderConnectionPool.sslSocketFactory(sSLSocketFactoryCreateSSLSocketFactory, (X509TrustManager) trustManager);
                builderConnectionPool.hostnameVerifier(new HostnameVerifier() { // from class: com.tmc.network.HttpClient.resetHttpClient.3
                    @Override // javax.net.ssl.HostnameVerifier
                    public boolean verify(String p11, SSLSession p12) {
                        return true;
                    }
                });
            }
            OkHttpClient okHttpClientBuild = builderConnectionPool.build();
            this.mOkHttpClient = okHttpClientBuild;
            GateWaySdk.setOkHttpClient(okHttpClientBuild);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void setConfig(HttpClientConfig config) {
        if (config == null) {
            return;
        }
        this.config = config;
        resetHttpClient();
    }
}
