package yq;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import com.transsion.search.net.GoogleSuggestConfig;
import java.net.Proxy;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.k0;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f79048a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f79049b = LazyKt.b(new Function0() { // from class: yq.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.j();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f79050c = LazyKt.b(new Function0() { // from class: yq.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.k();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f79051d = LazyKt.b(new Function0() { // from class: yq.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.d();
        }
    });

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a d() {
        return (a) f79048a.h().b(a.class);
    }

    private final a e() {
        Object value = f79051d.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (a) value;
    }

    private final OkHttpClient g() {
        return (OkHttpClient) f79049b.getValue();
    }

    private final k0 h() {
        Object value = f79050c.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }

    private final OkHttpClient i() {
        pg.a.C0884a c0884a = pg.a.f72446a;
        Proxy proxy = c0884a.c() ? null : Proxy.NO_PROXY;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = ah.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        builder.sslSocketFactory(sSLSocketFactoryA, new ah.a()).hostnameVerifier(new ah.a.C0008a());
        OkHttpClient.Builder builderProxy = builder.proxy(proxy);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderProxy.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit).callTimeout(40L, timeUnit);
        if (c0884a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new com.tn.lib.net.interceptor.a());
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient j() {
        return f79048a.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final k0 k() {
        return new k0.b().c("https://www.google.com/").g(f79048a.g()).b(ug.a.f()).a(v10.g.d()).e();
    }

    public final io.reactivex.rxjava3.core.j f(String keyword) {
        Intrinsics.h(keyword, "keyword");
        h hVar = h.f79052a;
        GoogleSuggestConfig googleSuggestConfigC = hVar.c();
        Map mapC = MapsKt.c();
        Map<String, String> queryParams = googleSuggestConfigC.getQueryParams();
        if (queryParams != null && !queryParams.isEmpty()) {
            mapC.putAll(googleSuggestConfigC.getQueryParams());
        }
        Map<String, String> queryParams2 = googleSuggestConfigC.getQueryParams();
        if (queryParams2 != null && queryParams2.containsKey("hl")) {
            mapC.put("hl", hVar.a());
        }
        mapC.put(CampaignEx.JSON_KEY_AD_Q, keyword);
        Map<String, String> mapB = MapsKt.b(mapC);
        Map<String, String> headers = googleSuggestConfigC.getHeaders();
        if (headers == null) {
            headers = MapsKt.h();
        }
        return e().a(headers, mapB);
    }
}
