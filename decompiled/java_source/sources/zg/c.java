package zg;

import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import com.transsion.api.gateway.interceptor.GatewayInterceptor;
import java.net.Proxy;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import retrofit2.k0;
import v10.g;
import xg.e;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f79414e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f79415f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: zg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.i();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f79416g = "one_room_net_thread";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OkHttpClient f79418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k0 f79419c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f79417a = "NetServiceGenerator";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f79420d = new AtomicInteger(1);

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return (c) c.f79415f.getValue();
        }
    }

    public c() {
        CacheIpPool.f40825a.h();
        this.f79418b = j();
        k0.b bVarC = new k0.b().c(vg.a.f77324a.a());
        OkHttpClient okHttpClient = this.f79418b;
        Intrinsics.e(okHttpClient);
        this.f79419c = bVarC.g(okHttpClient).b(ug.a.f()).a(g.e(qz.a.a(Executors.newFixedThreadPool(6, new ThreadFactory() { // from class: zg.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return c.c(this.f79413a, runnable);
            }
        })))).e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread c(c cVar, Runnable runnable) {
        Thread thread = new Thread(runnable, f79416g + "-" + cVar.f79420d.incrementAndGet());
        thread.setPriority(10);
        return thread;
    }

    private final Object e(Class cls) {
        return new k0.b().e().b(cls);
    }

    private final Interceptor f() {
        try {
            CronetEngine.Builder builder = new CronetEngine.Builder(Utils.a());
            builder.enableQuic(true).enableBrotli(true).addQuicHint("api3.aoneroom.com", 443, 443).addQuicHint("api4.aoneroom.com", 443, 443).addQuicHint("api4sg.aoneroom.com", 443, 443).addQuicHint("api5.aoneroom.com", 443, 443).addQuicHint("api6.aoneroom.com", 443, 443).addQuicHint(" api7.aoneroom.com ", 443, 443).addQuicHint(" api8.aoneroom.com", 443, 443).addQuicHint("api6sg.aoneroom.com", 443, 443).addQuicHint("api.inmoviebox.com", 443, 443).addQuicHint("test-mse-api.aoneroom.com", 443, 443);
            CronetEngine cronetEngineBuild = builder.build();
            Intrinsics.g(cronetEngineBuild, "build(...)");
            return (Interceptor) com.google.net.cronet.okhttptransport.a.i(cronetEngineBuild).a();
        } catch (Throwable th2) {
            Log.e("error", "e " + th2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c i() {
        return new c();
    }

    private final OkHttpClient j() {
        Proxy proxy = pg.a.f72446a.c() ? null : Proxy.NO_PROXY;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        SSLSocketFactory sSLSocketFactoryA = ah.a.a();
        Intrinsics.g(sSLSocketFactoryA, "createSSLSocketFactory(...)");
        builder.sslSocketFactory(sSLSocketFactoryA, new ah.a()).hostnameVerifier(new ah.a.C0008a());
        OkHttpClient.Builder builderProxy = builder.proxy(proxy);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderProxy.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit).callTimeout(40L, timeUnit).addInterceptor(yg.a.f79008a.a()).addInterceptor(new xg.c()).addInterceptor(new GatewayInterceptor()).addInterceptor(new xg.a());
        Iterator it = e.f78303a.b().iterator();
        while (it.hasNext()) {
            builder.addInterceptor((Interceptor) it.next());
        }
        if (pg.a.f72446a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new com.tn.lib.net.interceptor.a());
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            builder.addInterceptor(httpLoggingInterceptor);
        }
        Interceptor interceptorF = f();
        if (interceptorF != null) {
            builder.addInterceptor(interceptorF);
        }
        return builder.build();
    }

    private final void k() {
        qg.a aVar = qg.a.f73609a;
        aVar.a(0);
        aVar.b(0L);
    }

    public final OkHttpClient g() {
        return this.f79418b;
    }

    public final Object h(Class service) {
        Object objE;
        Intrinsics.h(service, "service");
        k0 k0Var = this.f79419c;
        if (k0Var == null || (objE = k0Var.b(service)) == null) {
            objE = e(service);
        }
        try {
            k();
            return objE;
        } catch (Exception e11) {
            e11.printStackTrace();
            return objE;
        }
    }
}
