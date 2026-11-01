package com.google.net.cronet.okhttptransport;

import android.util.Log;
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

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Interceptor, AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f32769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f32770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f32771c;

    public static final class b extends h {
        b(CronetEngine cronetEngine) {
            super(cronetEngine, b.class);
        }

        @Override // com.google.net.cronet.okhttptransport.h
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a b(g gVar) {
            return new a(gVar);
        }
    }

    private class c extends com.google.net.cronet.okhttptransport.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Call f32772b;

        private c(ResponseBody responseBody, Call call) {
            super(responseBody);
            this.f32772b = call;
        }

        @Override // com.google.net.cronet.okhttptransport.b
        void d() {
            a.this.f32770b.remove(this.f32772b);
        }
    }

    private a(g gVar) {
        this.f32770b = new ConcurrentHashMap();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        this.f32771c = scheduledThreadPoolExecutor;
        this.f32769a = (g) m.o(gVar);
        scheduledThreadPoolExecutor.scheduleAtFixedRate(new Runnable() { // from class: dd.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f61322a.h();
            }
        }, 500L, 500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        Iterator it = this.f32770b.entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Call) entry.getKey()).getCanceled()) {
                    it.remove();
                    ((UrlRequest) entry.getValue()).cancel();
                }
            } catch (RuntimeException e11) {
                Log.w("CronetInterceptor", "Unable to propagate cancellation status", e11);
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
        this.f32771c.shutdown();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (chain.call().getCanceled()) {
            throw new IOException("Canceled");
        }
        g.b bVarB = this.f32769a.b(chain.request(), chain.readTimeoutMillis(), chain.writeTimeoutMillis());
        this.f32770b.put(chain.call(), bVarB.a());
        try {
            bVarB.a().start();
            return k(bVarB.b(), chain.call());
        } catch (IOException | RuntimeException e11) {
            this.f32770b.remove(chain.call());
            throw e11;
        }
    }
}
