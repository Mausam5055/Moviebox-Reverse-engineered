package com.tmc.network;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002¨\u0006\u000b"}, d2 = {"Lcom/tmc/network/LogInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "readRequestBody", "", "oriReq", "Lokhttp3/Request;", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LogInterceptor implements Interceptor {
    private final String readRequestBody(Request oriReq) {
        if ((oriReq == null ? null : oriReq.body()) == null) {
            return "";
        }
        Request requestBuild = oriReq.newBuilder().build();
        Buffer buffer = new Buffer();
        try {
            RequestBody requestBodyBody = requestBuild.body();
            if (requestBodyBody != null) {
                requestBodyBody.writeTo(buffer);
            }
            return buffer.readUtf8();
        } catch (IOException e11) {
            gg.b.f63567a.e(e11);
            return "";
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        gg.b bVar = gg.b.f63567a;
        bVar.g(Intrinsics.q("[request]:", request));
        bVar.g(Intrinsics.q("[request-callTimeout]:", Long.valueOf(chain.call().timeout().getTimeoutNanos())));
        bVar.g(Intrinsics.q("[request-headers]:", request.headers()));
        bVar.g(Intrinsics.q("[request-body]:", readRequestBody(request)));
        long jNanoTime = System.nanoTime();
        Response responseProceed = chain.proceed(request);
        bVar.b("[costs]:" + TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime) + "ms");
        bVar.g(Intrinsics.q("[response-code]:", Integer.valueOf(responseProceed.code())));
        bVar.g(Intrinsics.q("[response-headers]:", responseProceed.headers()));
        return responseProceed;
    }
}
