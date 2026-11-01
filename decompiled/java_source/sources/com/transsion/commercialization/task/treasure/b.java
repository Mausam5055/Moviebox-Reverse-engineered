package com.transsion.commercialization.task.treasure;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.lottery.LotteryDrawResultEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoEntity;
import com.transsion.bean.lottery.LotteryUserInfoEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J8\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\b\u0010\tJ*\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\r\u0010\u000eJ.\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/commercialization/task/treasure/b;", "", "", "host", "activityId", "orderId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/bean/lottery/LotteryDrawResultEntity;", "c", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;", "a", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface b {

    public static final class a {
        public static /* synthetic */ Object a(b bVar, String str, String str2, String str3, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLotteryUserActivityInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 2) != 0) {
                str2 = null;
            }
            if ((i11 & 4) != 0) {
                str3 = null;
            }
            return bVar.b(str, str2, str3, continuation);
        }

        public static /* synthetic */ Object b(b bVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLotteryUserInfoEntity");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 2) != 0) {
                str2 = null;
            }
            return bVar.a(str, str2, continuation);
        }

        public static /* synthetic */ Object c(b bVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lotteryDraw");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return bVar.c(str, requestBody, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/activity/lottery/user-info")
    Object a(@Query("host") String str, @Query("activityId") String str2, Continuation<? super BaseDto<LotteryUserInfoEntity>> continuation);

    @GET("/wefeed-mobile-bff/activity/lottery/user-activity-info")
    Object b(@Query("host") String str, @Query("activityId") String str2, @Query("orderId") String str3, Continuation<? super BaseDto<LotteryUserActivityInfoEntity>> continuation);

    @POST("/wefeed-mobile-bff/activity/lottery/draw")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<LotteryDrawResultEntity>> continuation);
}
