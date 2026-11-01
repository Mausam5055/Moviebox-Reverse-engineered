package yg;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f79015a = "HeaderInterceptor";

    private final Request a(Request request, String str) {
        b.a aVar = b.f79009a;
        String strC = aVar.c();
        Request.Builder builderNewBuilder = request.newBuilder();
        builderNewBuilder.addHeader("X-Client-Info", strC);
        builderNewBuilder.addHeader("X-Client-Status", String.valueOf(!Intrinsics.c(aVar.d(), Boolean.TRUE) ? 1 : 0));
        return builderNewBuilder.build();
    }

    private final Request b(Request request) {
        Map mapF = b.f79009a.f();
        if (mapF.isEmpty()) {
            return request;
        }
        Request.Builder builderNewBuilder = request.newBuilder();
        for (Map.Entry entry : mapF.entrySet()) {
            builderNewBuilder.header((String) entry.getKey(), (String) entry.getValue());
        }
        return builderNewBuilder.build();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.h(chain, "chain");
        return chain.proceed(a(b(chain.request()), ""));
    }
}
