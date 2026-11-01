package com.tn.tranpay.network;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.tranpay.bean.CreateOrderResultContent;
import com.tn.tranpay.bean.CurrencyInfoBean;
import com.tn.tranpay.bean.LoadConfigContent;
import com.tn.tranpay.bean.QueryOrderResultContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J'\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0002H§@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\t\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\t\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\fJ\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\t\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\fJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\b\u0001\u0010\t\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/tn/tranpay/network/b;", "", "", TtmlNode.TAG_REGION, "Lcom/tn/tranpay/network/BaseDto;", "Lcom/tn/tranpay/bean/CurrencyInfoBean;", "e", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/tn/tranpay/bean/CreateOrderResultContent;", "c", "(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/tn/tranpay/bean/LoadConfigContent;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/tn/tranpay/bean/QueryOrderResultContent;", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface b {
    @POST("trade/checkout/txnInfo")
    Object a(@Body RequestBody requestBody, Continuation<? super QueryOrderResultContent> continuation);

    @POST("trade/checkout/loadConfig")
    Object b(@Body RequestBody requestBody, Continuation<? super LoadConfigContent> continuation);

    @POST("trade/checkout/cashierPay")
    Object c(@Body RequestBody requestBody, Continuation<? super CreateOrderResultContent> continuation);

    @POST("trade/checkout/cancel")
    Object d(@Body RequestBody requestBody, Continuation<? super QueryOrderResultContent> continuation);

    @GET("trade/extend/transaction/currencyinfo")
    Object e(@Query(TtmlNode.TAG_REGION) String str, Continuation<? super BaseDto<CurrencyInfoBean>> continuation);
}
