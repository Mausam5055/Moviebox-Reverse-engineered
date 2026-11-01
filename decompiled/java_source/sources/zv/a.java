package zv;

import android.util.Log;
import com.transsion.gslb.GslbSdk;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response responseProceed;
        Intrinsics.h(chain, "chain");
        try {
            Request request = chain.request();
            String url = request.url().getUrl();
            Intrinsics.g(url, "toString(...)");
            yv.c.f79060d.a();
            Intrinsics.h(url, "url");
            if (GslbSdk.isInitSuccess(url)) {
                url = GslbSdk.getDomain(url, true);
                Intrinsics.e(url);
            }
            String msg = "replace gslb: " + url;
            Intrinsics.h("DomainChangeInterceptor", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!bw.g.f16939a && jCurrentTimeMillis - bw.g.f16940b >= 5000) {
                bw.g.f16940b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    bw.g.f16939a = true;
                }
                boolean z10 = bw.g.f16939a;
            }
            boolean z11 = yv.f.f79067o.a().f79072d;
            Request.Builder builderUrl = request.newBuilder().url(url);
            Intrinsics.g(builderUrl, "url(...)");
            responseProceed = chain.withConnectTimeout(30, TimeUnit.SECONDS).proceed(builderUrl.build());
        } catch (Exception e11) {
            String msg2 = "error1: " + e11;
            Intrinsics.h("DomainChangeInterceptor", "tag");
            Intrinsics.h(msg2, "msg");
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (!bw.g.f16939a && jCurrentTimeMillis2 - bw.g.f16940b >= 5000) {
                bw.g.f16940b = jCurrentTimeMillis2;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    bw.g.f16939a = true;
                }
                boolean z12 = bw.g.f16939a;
            }
            boolean z13 = yv.f.f79067o.a().f79072d;
            try {
                responseProceed = chain.proceed(chain.request());
            } catch (Exception unused) {
                responseProceed = null;
            }
        }
        if (responseProceed == null) {
            responseProceed = new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(400).message("Internal Error").body(ResponseBody.create((MediaType) null, "The requested resource was not found.")).build();
        }
        Intrinsics.e(responseProceed);
        return responseProceed;
    }
}
