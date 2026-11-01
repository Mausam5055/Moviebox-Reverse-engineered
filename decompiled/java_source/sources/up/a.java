package up;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.rewardscenterapi.AdTaskInfo;
import com.transsion.rewardscenterapi.ClaimReceiverResponse;
import com.transsion.rewardscenterapi.ClaimResultData;
import com.transsion.rewardscenterapi.DaDaInfo;
import com.transsion.rewardscenterapi.MineLotteryInfo;
import com.transsion.rewardscenterapi.RedeemLotteryResult;
import com.transsion.rewardscenterapi.RedeemProductResult;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsion.rewardscenterapi.TaskRewards;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0006\u0010\u0007J\"\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\t\u0010\u0007J,\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\r\u0010\u000eJ,\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\u0010\u0010\u000eJ,\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\u0012\u0010\u000eJ,\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\u0014\u0010\u000eJ,\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\u0016\u0010\u000eJ,\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\u0018\u0010\u000eJ\"\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001a\u0010\u0007¨\u0006\u001b"}, d2 = {"Lup/a;", "", "", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/rewardscenterapi/RewardsCenterData;", "e", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/rewardscenterapi/AdTaskInfo;", "h", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/rewardscenterapi/TaskRewards;", "i", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/rewardscenterapi/DaDaInfo;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/rewardscenterapi/RedeemLotteryResult;", "f", "Lcom/transsion/rewardscenterapi/RedeemProductResult;", "a", "Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/rewardscenterapi/ClaimResultData;", "c", "Lcom/transsion/rewardscenterapi/MineLotteryInfo;", "g", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: up.a$a, reason: collision with other inner class name */
    public static final class C0938a {
        public static /* synthetic */ Object a(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkDaDaSetDefault");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.b(str, requestBody, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: claimReward");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.c(str, requestBody, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchAdTaskInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.h(str, continuation);
        }

        public static /* synthetic */ Object d(a aVar, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchRewardsCenterData");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.e(str, continuation);
        }

        public static /* synthetic */ Object e(a aVar, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUserLotteryInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.g(str, continuation);
        }

        public static /* synthetic */ Object f(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveTaskRewards");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.i(str, requestBody, continuation);
        }

        public static /* synthetic */ Object g(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: redeemLottery");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.f(str, requestBody, continuation);
        }

        public static /* synthetic */ Object h(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: redeemProduct");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(str, requestBody, continuation);
        }

        public static /* synthetic */ Object i(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: submitClaimReceiverInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.d(str, requestBody, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/money/exchange/order")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RedeemProductResult>> continuation);

    @POST("/wefeed-mobile-bff/activity/ad-dada-set-default")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<DaDaInfo>> continuation);

    @POST("/wefeed-mobile-bff/activity/lottery/prize-claim")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ClaimResultData>> continuation);

    @POST("/wefeed-mobile-bff/activity/lottery/prize-redeem")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ClaimReceiverResponse>> continuation);

    @GET("/wefeed-mobile-bff/activity/welfare-center")
    Object e(@Query("host") String str, Continuation<? super BaseDto<RewardsCenterData>> continuation);

    @POST("/wefeed-mobile-bff/activity/lottery/draw-code-redeem")
    Object f(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RedeemLotteryResult>> continuation);

    @GET("/wefeed-mobile-bff/activity/lottery/user-info")
    Object g(@Query("host") String str, Continuation<? super BaseDto<MineLotteryInfo>> continuation);

    @GET("/wefeed-mobile-bff/activity/ad-task-list")
    Object h(@Query("host") String str, Continuation<? super BaseDto<AdTaskInfo>> continuation);

    @POST("/wefeed-mobile-bff/activity/rewards-receive")
    Object i(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<TaskRewards>> continuation);
}
