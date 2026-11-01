package com.transsion.payment.lib;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.bean.CheckPaymentBean;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.transsion.payment.lib.bean.SkuData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J,\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\b\u0010\tJ,\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\n\u0010\tJ,\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\f\u0010\tJ,\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\r\u0010\tJ\"\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/payment/lib/a;", "", "", "host", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/payment/lib/bean/CheckPaymentBean;", "c", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Lcom/transsion/payment/lib/bean/CreateOrderRes;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/payment/lib/bean/SkuData;", "e", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @POST("/wefeed-mobile-bff/money/paynicorn-purchase-result/polling")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CheckPaymentBean>> continuation);

    @POST("/wefeed-mobile-bff/money/gp-trading-order/create")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CreateOrderRes>> continuation);

    @POST("/wefeed-mobile-bff/money/gp-purchase-result/polling")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CheckPaymentBean>> continuation);

    @POST("/wefeed-mobile-bff/money/paynicorn-trading-order/create")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CreateOrderRes>> continuation);

    @GET("/wefeed-mobile-bff/money/sku-list/get")
    Object e(@Query("host") String str, Continuation<? super BaseDto<SkuData>> continuation);
}
