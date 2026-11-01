package com.transsion.shorttv.order;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.order.bean.CenterCreateTradingOrderRespEntity;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J@\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H§@¢\u0006\u0004\b\t\u0010\nJ6\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00072\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0006\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/shorttv/order/a;", "", "", "host", "tradingOrderId", "projectName", "realHost", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: com.transsion.shorttv.order.a$a, reason: collision with other inner class name */
    public static final class C0662a {
        public static /* synthetic */ Object a(a aVar, String str, RequestBody requestBody, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPayOrderId");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(str, requestBody, str2, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, String str2, String str3, String str4, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPayOrderIdInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.b(str, str2, str3, str4, continuation);
        }
    }

    @POST("/open-api/payment/order/paynicorn")
    Object a(@Query("host") String str, @Body RequestBody requestBody, @Header("multiple_base_url") String str2, Continuation<? super BaseDto<CenterCreateTradingOrderRespEntity>> continuation);

    @GET("/open-api/payment/order/paynicorn")
    Object b(@Query("host") String str, @Query("tradingOrderId") String str2, @Query("projectName") String str3, @Header("multiple_base_url") String str4, Continuation<? super BaseDto<GetPaynicornOrderStatusRespEntity>> continuation);
}
