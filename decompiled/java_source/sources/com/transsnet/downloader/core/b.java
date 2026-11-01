package com.transsnet.downloader.core;

import com.blankj.utilcode.util.o;
import com.tn.lib.net.cons.PrefetchDnsUrls;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f58613c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f58614d = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.core.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.d();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile OkHttpClient f58615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f58616b = CollectionsKt.q("vcdn.hakunaymatata.com", "v2cdn.hakunaymatata.com");

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f58614d.getValue();
        }
    }

    public b() {
        PrefetchDnsUrls prefetchDnsUrls;
        ConfigBean configBeanC = sm.f.f75407c.a().c("prefetch_dns_hosts", false);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value != null) {
            try {
                if (value.length() <= 0 || (prefetchDnsUrls = (PrefetchDnsUrls) o.d(value, PrefetchDnsUrls.class)) == null || prefetchDnsUrls.getHosts().isEmpty()) {
                    return;
                }
                this.f58616b.clear();
                this.f58616b.addAll(prefetchDnsUrls.getHosts());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b d() {
        return new b();
    }

    private final OkHttpClient e() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = ah.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        OkHttpClient.Builder builderHostnameVerifier = builder.sslSocketFactory(sSLSocketFactoryA, new ah.a()).hostnameVerifier(new ah.a.C0008a());
        TimeUnit timeUnit = TimeUnit.MINUTES;
        OkHttpClient.Builder timeout = builderHostnameVerifier.connectionPool(new ConnectionPool(16, 5L, timeUnit)).connectTimeout(1L, timeUnit).retryOnConnectionFailure(true).writeTimeout(1L, timeUnit).readTimeout(1L, timeUnit);
        List<? extends Protocol> listSingletonList = Collections.singletonList(Protocol.HTTP_1_1);
        Intrinsics.g(listSingletonList, "singletonList(...)");
        return timeout.protocols(listSingletonList).build();
    }

    public final OkHttpClient c() {
        OkHttpClient okHttpClientE = this.f58615a;
        if (okHttpClientE == null) {
            synchronized (this) {
                okHttpClientE = this.f58615a;
                if (okHttpClientE == null) {
                    okHttpClientE = e();
                    this.f58615a = okHttpClientE;
                }
            }
        }
        return okHttpClientE;
    }
}
