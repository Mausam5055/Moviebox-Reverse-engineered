package com.transsion.commercialization.aha;

import android.os.Build;
import com.transsion.bean.AhaGameResponse;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.HeaderMap;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \b2\u00020\u0001:\u0001\bJ4\u0010\b\u001a\u00020\u00072\u0016\b\u0001\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/commercialization/aha/g;", "", "", "", "headers", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/bean/AhaGameResponse;", "a", "(Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = Companion.f43762a;

    /* JADX INFO: renamed from: com.transsion.commercialization.aha.g$a, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f43762a = new Companion();

        private Companion() {
        }

        private final String b() {
            return "https://api.ahagamecenter.com/bff/game.moviebox";
        }

        public final Map a() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("multiple_base_url", b());
            ih.b bVar = ih.b.f65241a;
            linkedHashMap.put("X-Country", bVar.f());
            linkedHashMap.put("X-Gaid", bVar.i());
            linkedHashMap.put("X-Language", bVar.j());
            linkedHashMap.put("X-Model", Build.MODEL);
            linkedHashMap.put("X-VersionCode", Integer.valueOf(com.blankj.utilcode.util.c.f()));
            linkedHashMap.put("X-CPU", bVar.e());
            return linkedHashMap;
        }
    }

    @POST("/bff/game.moviebox")
    Object a(@HeaderMap Map<String, Object> map, @Body RequestBody requestBody, Continuation<? super AhaGameResponse> continuation);
}
