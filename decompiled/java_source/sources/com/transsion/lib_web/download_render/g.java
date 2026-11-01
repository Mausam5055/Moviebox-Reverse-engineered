package com.transsion.lib_web.download_render;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.lib_web.download_render.data.PageListData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J6\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/lib_web/download_render/g;", "", "", "dynamicPath", "version", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/lib_web/download_render/data/PageListData;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface g {

    public static final class a {
        public static /* synthetic */ Object a(g gVar, String str, String str2, String str3, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPageListData");
            }
            if ((i11 & 4) != 0) {
                str3 = vg.a.f77324a.a();
            }
            return gVar.a(str, str2, str3, continuation);
        }
    }

    @GET("/{dynamicPath}/activity/embedded-h5-list/v2")
    Object a(@Path("dynamicPath") String str, @Query("ver") String str2, @Query("host") String str3, Continuation<? super BaseDto<PageListData>> continuation);
}
