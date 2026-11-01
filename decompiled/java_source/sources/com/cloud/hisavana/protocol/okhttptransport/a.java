package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.base.m;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements Interceptor, AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f21460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f21461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f21462c;

    public static final class b extends h {
        b(CronetEngine cronetEngine) {
            super(cronetEngine, b.class);
        }

        @Override // com.cloud.hisavana.protocol.okhttptransport.h
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a b(g gVar) {
            return new a(gVar);
        }
    }

    private class c extends com.cloud.hisavana.protocol.okhttptransport.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Call f21463b;

        private c(ResponseBody responseBody, Call call) {
            super(responseBody);
            this.f21463b = call;
        }

        @Override // com.cloud.hisavana.protocol.okhttptransport.b
        void d() {
            a.this.f21461b.remove(this.f21463b);
        }
    }

    private a(g gVar) {
        this.f21461b = new ConcurrentHashMap();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        this.f21462c = scheduledThreadPoolExecutor;
        this.f21460a = (g) m.o(gVar);
        scheduledThreadPoolExecutor.scheduleAtFixedRate(new Runnable() { // from class: y6.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f78924a.h();
            }
        }, 500L, 500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        Iterator it = this.f21461b.entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Call) entry.getKey()).getCanceled()) {
                    it.remove();
                    ((UrlRequest) entry.getValue()).cancel();
                }
            } catch (RuntimeException e11) {
                com.cloud.sdk.commonutil.util.c.Log().w("CronetInterceptor", "Unable to propagate cancellation status", e11);
            }
        }
    }

    public static b i(CronetEngine cronetEngine) {
        return new b(cronetEngine);
    }

    private Response k(Response response, Call call) {
        m.o(response.body());
        return response.body() instanceof c ? response : response.newBuilder().body(new c(response.body(), call)).build();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f21462c.shutdown();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (chain.call().getCanceled()) {
            throw new IOException("Canceled");
        }
        g.b bVarB = this.f21460a.b(chain.request(), chain.readTimeoutMillis(), chain.writeTimeoutMillis());
        this.f21461b.put(chain.call(), bVarB.a());
        try {
            bVarB.a().start();
            return k(bVarB.b(), chain.call());
        } catch (IOException | RuntimeException e11) {
            this.f21461b.remove(chain.call());
            throw e11;
        }
    }
}
