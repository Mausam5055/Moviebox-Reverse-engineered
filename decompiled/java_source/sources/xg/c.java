package xg;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.tn.lib.net.dns.or.CacheIpPool;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Interceptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f78301b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f78302a = LazyKt.b(new Function0() { // from class: xg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.b();
        }
    });

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler b() {
        return new Handler(Looper.getMainLooper());
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        HttpUrl.Builder builderNewBuilder = request.url().newBuilder();
        String strHost = request.url().host();
        CacheIpPool cacheIpPool = CacheIpPool.f40825a;
        if (TextUtils.equals(strHost, cacheIpPool.l()) && TextUtils.equals(request.url().scheme(), cacheIpPool.m())) {
            builderNewBuilder.removeAllQueryParameters("host");
        } else {
            builderNewBuilder.scheme(cacheIpPool.m()).host(cacheIpPool.l()).removeAllQueryParameters("host");
        }
        Request requestBuild = request.newBuilder().url(builderNewBuilder.build()).build();
        Response responseProceed = chain.proceed(requestBuild);
        lg.a.f68839a.p("HttpTag", new String[]{"DynamicHostInterceptor response " + responseProceed.code() + " : " + requestBuild.url() + " protocol: " + responseProceed.protocol() + " "}, true);
        return responseProceed;
    }
}
