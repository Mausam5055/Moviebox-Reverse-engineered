package com.cloud.hisavana.protocol.intercept;

import bi.h;
import com.cloud.sdk.commonutil.util.c;
import java.net.UnknownHostException;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f21440a;

    public a(Map hostMap) {
        Intrinsics.h(hostMap, "hostMap");
        this.f21440a = hostMap;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Intrinsics.h(chain, "chain");
        try {
            Response responseProceed = chain.proceed(chain.request());
            Intrinsics.g(responseProceed, "proceed(...)");
            return responseProceed;
        } catch (Exception e11) {
            HttpUrl httpUrlUrl = chain.request().url();
            String str = (String) this.f21440a.get(httpUrlUrl.host());
            if (str == null || !(e11 instanceof UnknownHostException)) {
                throw e11;
            }
            Request requestBuild = chain.request().newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
            c.netLog("request downgrade, domain failed, failed url is:" + chain.request().url());
            h hVar = h.f16533a;
            Intrinsics.e(requestBuild);
            hVar.a(chain, requestBuild, 1005);
            Response responseProceed2 = chain.proceed(requestBuild);
            Intrinsics.g(responseProceed2, "proceed(...)");
            return responseProceed2;
        }
    }
}
