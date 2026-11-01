package com.cloud.hisavana.protocol.intercept;

import bi.g;
import bi.h;
import com.cloud.sdk.commonutil.util.c;
import java.io.IOException;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import w6.b;

/* JADX INFO: loaded from: classes3.dex */
public final class CronetRetryInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.cloud.hisavana.protocol.okhttptransport.a f21430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w6.a f21431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f21432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f21433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f21434e;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.cloud.hisavana.protocol.okhttptransport.a f21435a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final w6.a f21436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map f21437c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g f21438d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private b f21439e;

        public a(CronetEngine engine) {
            Intrinsics.h(engine, "engine");
            Object objA = com.cloud.hisavana.protocol.okhttptransport.a.i(engine).a();
            Intrinsics.g(objA, "build(...)");
            this.f21435a = (com.cloud.hisavana.protocol.okhttptransport.a) objA;
            this.f21436b = new w6.a();
        }

        public final CronetRetryInterceptor a() {
            return new CronetRetryInterceptor(this, null);
        }

        public final a b(g gVar) {
            if (gVar == null) {
                return this;
            }
            gVar.b(true);
            this.f21438d = gVar;
            return this;
        }

        public final com.cloud.hisavana.protocol.okhttptransport.a c() {
            return this.f21435a;
        }

        public final w6.a d() {
            return this.f21436b;
        }

        public final b e() {
            return this.f21439e;
        }

        public final g f() {
            return this.f21438d;
        }

        public final Map g() {
            return this.f21437c;
        }

        public final a h(b policy) {
            Intrinsics.h(policy, "policy");
            this.f21439e = policy;
            return this;
        }

        public final a i(Map map) {
            this.f21437c = map;
            return this;
        }
    }

    private CronetRetryInterceptor(a aVar) {
        this.f21430a = aVar.c();
        this.f21431b = aVar.d();
        this.f21432c = aVar.g();
        this.f21433d = aVar.f();
        this.f21434e = aVar.e();
    }

    public /* synthetic */ CronetRetryInterceptor(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    private final Request b(Request request) {
        HttpUrl httpUrlUrl = request.url();
        String strHost = httpUrlUrl.host();
        Map map = this.f21432c;
        String str = map != null ? (String) map.get(strHost) : null;
        if (str == null) {
            return request;
        }
        Request requestBuild = request.newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
        Intrinsics.e(requestBuild);
        return requestBuild;
    }

    private final Response c(Response response, int i11, Interceptor.Chain chain) {
        if (!x6.a.a(response)) {
            return response;
        }
        h();
        return i11 != -1 ? f(chain, i11) : response;
    }

    private final Response d(Response response, Interceptor.Chain chain, int i11, b bVar) {
        if (i11 == -1 || !bVar.a(i11)) {
            return response;
        }
        h();
        return f(chain, i11);
    }

    private final Response e(Interceptor.Chain chain, int i11) {
        h();
        return f(chain, i11);
    }

    private final Response f(Interceptor.Chain chain, int i11) throws IOException {
        Request request = chain.request();
        Intrinsics.g(request, "request(...)");
        Request requestB = b(request);
        h.f16533a.a(chain, requestB, i11);
        Response responseProceed = chain.proceed(requestB);
        Intrinsics.g(responseProceed, "proceed(...)");
        return responseProceed;
    }

    private final void g() {
        this.f21431b.b();
    }

    private final void h() {
        this.f21431b.c(new Function0<Unit>() { // from class: com.cloud.hisavana.protocol.intercept.CronetRetryInterceptor$triggerDownCount$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m231invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m231invoke() {
                g gVar = this.this$0.f21433d;
                if (gVar != null) {
                    gVar.b(false);
                }
            }
        });
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Intrinsics.h(chain, "chain");
        if (this.f21431b.a()) {
            c.netLog("request downgrade, cause failed count exceed limit, failed url is:" + chain.request().url());
            Request request = chain.request();
            Intrinsics.g(request, "request(...)");
            Response responseProceed = chain.proceed(b(request));
            Intrinsics.g(responseProceed, "proceed(...)");
            return responseProceed;
        }
        try {
            Response responseIntercept = this.f21430a.intercept(chain);
            if (responseIntercept.isSuccessful()) {
                g();
                Intrinsics.e(responseIntercept);
                return responseIntercept;
            }
            c.netLog("request downgrade, cause domain failed1, failed url is:" + chain.request().url());
            Intrinsics.e(responseIntercept);
            int iC = x6.a.c(responseIntercept);
            b bVar = this.f21434e;
            return bVar != null ? d(responseIntercept, chain, iC, bVar) : c(responseIntercept, iC, chain);
        } catch (Exception e11) {
            int iB = x6.a.b(e11);
            if (iB == -1) {
                throw e11;
            }
            c.netLog("request downgrade, cause domain failed, failed url is:" + chain.request().url());
            b bVar2 = this.f21434e;
            if (bVar2 != null && !bVar2.a(iB)) {
                throw e11;
            }
            return e(chain, iB);
        }
    }
}
