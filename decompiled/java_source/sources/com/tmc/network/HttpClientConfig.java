package com.tmc.network;

import com.tmc.network.strategy.LocalDnsStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.CertificatePinner;
import okhttp3.Dns;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\u0018\u0000 ,2\u00020\u0001:\u0001,B'\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u000fJ\b\u0010\u0019\u001a\u0004\u0018\u00010\nJ\b\u0010\u001a\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0006\u0010\u001c\u001a\u00020\u0005J\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u001f\u001a\u00020\u0003J\u0010\u0010 \u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0006\u0010!\u001a\u00020\u0005J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u0005J\u0012\u0010$\u001a\u0004\u0018\u00010\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010%\u001a\u0004\u0018\u00010\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u001a\u0010&\u001a\u0004\u0018\u00010\u00002\u0010\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0010\u0010'\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0012\u0010(\u001a\u0004\u0018\u00010\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010)\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u001a\u0010*\u001a\u0004\u0018\u00010\u00002\u0010\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ \u0010+\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/tmc/network/HttpClientConfig;", "", "maxIdleConnections", "", "keepAliveDuration", "", "keepAliveTimeUnit", "Ljava/util/concurrent/TimeUnit;", "(IJLjava/util/concurrent/TimeUnit;)V", "certificatePinner", "Lokhttp3/CertificatePinner;", "executorService", "Ljava/util/concurrent/ExecutorService;", "interceptors", "", "Lokhttp3/Interceptor;", "localDns", "Lokhttp3/Dns;", "networkInterceptors", "timeoutConnect", "timeoutRead", "timeoutWrite", "addInterceptor", "interceptor", "addNetInterceptor", "getCertificatePinner", "getExecutorService", "getInterceptors", "getKeepAliveDuration", "getKeepAliveTimeUnit", "getLocalDns", "getMaxIdleConnections", "getNetworkInterceptors", "getTimeoutConnect", "getTimeoutRead", "getTimeoutWrite", "setCertificatePinner", "setExecutorService", "setInterceptors", "setKeepAliveDuration", "setKeepAliveTimeUnit", "setMaxIdleConnections", "setNetworkInterceptors", "setTimeout", "Companion", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HttpClientConfig {
    public static final long DEFAULT_CONNECT_TIMEOUT = 10000;
    public static final long DEFAULT_KEEP_ALIVE_DURATION_MINUTES = 5;
    public static final int DEFAULT_MAX_IDLE_CONNECTIONS = 5;
    public static final long DEFAULT_READ_TIMEOUT = 30000;
    public static final long DEFAULT_WRITE_TIMEOUT = 30000;
    private CertificatePinner certificatePinner;
    private ExecutorService executorService;
    private List<Interceptor> interceptors;
    private long keepAliveDuration;
    private TimeUnit keepAliveTimeUnit;
    private Dns localDns;
    private int maxIdleConnections;
    private List<Interceptor> networkInterceptors;
    private long timeoutConnect;
    private long timeoutRead;
    private long timeoutWrite;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final TimeUnit DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT = TimeUnit.MINUTES;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/tmc/network/HttpClientConfig$Companion;", "", "()V", "DEFAULT_CONNECT_TIMEOUT", "", "DEFAULT_KEEP_ALIVE_DURATION_MINUTES", "DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT", "Ljava/util/concurrent/TimeUnit;", "getDEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT", "()Ljava/util/concurrent/TimeUnit;", "DEFAULT_MAX_IDLE_CONNECTIONS", "", "DEFAULT_READ_TIMEOUT", "DEFAULT_WRITE_TIMEOUT", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TimeUnit getDEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT() {
            return HttpClientConfig.DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT;
        }
    }

    @JvmOverloads
    public HttpClientConfig() {
        this(0, 0L, null, 7, null);
    }

    @JvmOverloads
    public HttpClientConfig(int i11) {
        this(i11, 0L, null, 6, null);
    }

    @JvmOverloads
    public HttpClientConfig(int i11, long j11) {
        this(i11, j11, null, 4, null);
    }

    @JvmOverloads
    public HttpClientConfig(int i11, long j11, TimeUnit timeUnit) {
        List<Interceptor> list;
        this.maxIdleConnections = i11;
        this.keepAliveDuration = j11;
        this.keepAliveTimeUnit = timeUnit;
        this.timeoutConnect = 10000L;
        this.timeoutRead = 30000L;
        this.timeoutWrite = 30000L;
        ArrayList arrayList = new ArrayList();
        this.interceptors = arrayList;
        arrayList.add(new LogInterceptor());
        if (HttpClient.INSTANCE.isForceUseCacheMode() && (list = this.interceptors) != null) {
            list.add(new NetCacheInterceptor());
        }
        ArrayList arrayList2 = new ArrayList();
        this.networkInterceptors = arrayList2;
        arrayList2.add(new InitNetworkInterceptor());
        this.localDns = LocalDnsStrategy.f40804c.a();
    }

    public /* synthetic */ HttpClientConfig(int i11, long j11, TimeUnit timeUnit, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 5 : i11, (i12 & 2) != 0 ? 5L : j11, (i12 & 4) != 0 ? DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT : timeUnit);
    }

    public final HttpClientConfig addInterceptor(Interceptor interceptor) {
        if (interceptor == null) {
            return this;
        }
        if (this.interceptors == null) {
            this.interceptors = new ArrayList();
        }
        List<Interceptor> list = this.interceptors;
        if (list != null) {
            list.add(interceptor);
        }
        return this;
    }

    public final HttpClientConfig addNetInterceptor(Interceptor interceptor) {
        if (interceptor == null) {
            return this;
        }
        if (this.networkInterceptors == null) {
            this.networkInterceptors = new ArrayList();
        }
        List<Interceptor> list = this.networkInterceptors;
        if (list != null) {
            list.add(interceptor);
        }
        return this;
    }

    public final CertificatePinner getCertificatePinner() {
        return this.certificatePinner;
    }

    public final ExecutorService getExecutorService() {
        return this.executorService;
    }

    public final List<Interceptor> getInterceptors() {
        return this.interceptors;
    }

    public final long getKeepAliveDuration() {
        return this.keepAliveDuration;
    }

    public final TimeUnit getKeepAliveTimeUnit() {
        return this.keepAliveTimeUnit;
    }

    public final Dns getLocalDns() {
        return this.localDns;
    }

    public final int getMaxIdleConnections() {
        return this.maxIdleConnections;
    }

    public final List<Interceptor> getNetworkInterceptors() {
        return this.networkInterceptors;
    }

    public final long getTimeoutConnect() {
        return this.timeoutConnect;
    }

    public final long getTimeoutRead() {
        return this.timeoutRead;
    }

    public final long getTimeoutWrite() {
        return this.timeoutWrite;
    }

    public final HttpClientConfig setCertificatePinner(CertificatePinner certificatePinner) {
        this.certificatePinner = certificatePinner;
        return this;
    }

    public final HttpClientConfig setExecutorService(ExecutorService executorService) {
        this.executorService = executorService;
        return this;
    }

    public final HttpClientConfig setInterceptors(List<Interceptor> interceptors) {
        this.interceptors = interceptors;
        return this;
    }

    public final HttpClientConfig setKeepAliveDuration(long keepAliveDuration) {
        this.keepAliveDuration = keepAliveDuration;
        return this;
    }

    public final HttpClientConfig setKeepAliveTimeUnit(TimeUnit keepAliveTimeUnit) {
        this.keepAliveTimeUnit = keepAliveTimeUnit;
        return this;
    }

    public final HttpClientConfig setMaxIdleConnections(int maxIdleConnections) {
        this.maxIdleConnections = maxIdleConnections;
        return this;
    }

    public final HttpClientConfig setNetworkInterceptors(List<Interceptor> networkInterceptors) {
        this.networkInterceptors = networkInterceptors;
        return this;
    }

    public final HttpClientConfig setTimeout(long timeoutConnect, long timeoutRead, long timeoutWrite) {
        this.timeoutConnect = timeoutConnect;
        this.timeoutRead = timeoutRead;
        this.timeoutWrite = timeoutWrite;
        return this;
    }
}
