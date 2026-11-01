package vm;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.PointsHistoryData;
import com.transsion.member.bean.RedeemResult;
import com.transsion.member.bean.request.InviteUserShareInfoReq;
import com.transsion.member.bean.request.MemberInviteUserShareInfo;
import com.transsion.member.bean.request.MemberPromoCodeReq;
import com.transsion.member.bean.request.MemberPromoCodeRes;
import com.transsion.memberapi.AllMemberRightsData;
import com.transsion.memberapi.GlobalTaskInfo;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.MemberRemindData;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskInviteRewards;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.MigrateVipAssetsData;
import com.transsion.memberapi.PremiumConsumeDto;
import com.transsion.memberapi.PremiumV2CheckAccessDto;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.SkuPromotionDto;
import com.transsion.memberapi.TaskRewards;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J'\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0007\u0010\bJ1\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\f\u0010\rJ1\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u000eH'¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0013\u0010\bJ1\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0014\u001a\u00020\u0002H'¢\u0006\u0004\b\u0016\u0010\u0017J;\u0010\u001c\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u00182\b\b\u0001\u0010\u001a\u001a\u00020\u0018H'¢\u0006\u0004\b\u001c\u0010\u001dJ1\u0010\u001f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\u001f\u0010\rJ7\u0010\"\u001a\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0 0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\"\u0010\rJ1\u0010%\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020#H'¢\u0006\u0004\b%\u0010&J,\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b(\u0010)J'\u0010+\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b+\u0010\bJ1\u0010,\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b,\u0010\rJ;\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010/0\u00050\u00042\b\b\u0001\u0010-\u001a\u00020\u00022\b\b\u0003\u0010.\u001a\u00020\u00182\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b0\u00101J%\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b3\u0010\bJ,\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001040\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b5\u0010)J'\u00107\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001060\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b7\u0010\bJ;\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010:0\u00050\u00042\b\b\u0001\u00109\u001a\u0002082\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b;\u0010<J,\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b>\u0010)J,\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010?0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b@\u0010)J\"\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\bB\u0010CJ%\u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\bE\u0010\bJ'\u0010G\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010F0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\bG\u0010\b¨\u0006H"}, d2 = {"Lvm/a;", "", "", "host", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/memberapi/MemberTaskInfo;", TmcStartParams.KEY_URL_SHORT, "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;", "g", "(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/member/bean/request/MemberPromoCodeReq;", "Lcom/transsion/member/bean/request/MemberPromoCodeRes;", "m", "(Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeReq;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/MemberDetail;", TtmlNode.TAG_P, "rewardId", "Lcom/transsion/memberapi/MemberTaskRewardInfo;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "", "lastId", "limit", "Lcom/transsion/memberapi/MemberTaskInviteRewards;", "c", "(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/TaskRewards;", "o", "", "Lcom/transsion/memberapi/MemberRemindData;", "n", "Lcom/transsion/member/bean/request/InviteUserShareInfoReq;", "Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;", "e", "(Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/MemberCheckResult;", "s", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/memberapi/GlobalTaskInfo;", "v", "l", "pageNum", "pageSize", "Lcom/transsion/member/bean/PointsHistoryData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/SkuData;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/member/bean/RedeemResult;", "a", "Lcom/transsion/memberapi/MemberAdTaskInfo;", CampaignEx.JSON_KEY_AD_R, "", "oldUid", "Lcom/transsion/memberapi/MigrateVipAssetsData;", "i", "(JLjava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/PremiumV2CheckAccessDto;", "f", "Lcom/transsion/memberapi/PremiumConsumeDto;", "h", "Lcom/transsion/memberapi/SkuPromotionDto;", "t", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/memberapi/MemberPriceData;", "j", "Lcom/transsion/memberapi/AllMemberRightsData;", CampaignEx.JSON_KEY_AD_Q, "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: vm.a$a, reason: collision with other inner class name */
    public static final class C0951a {
        public static /* synthetic */ Object a(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: consume");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.h(str, requestBody, continuation);
        }

        public static /* synthetic */ j b(a aVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchAllMemberRights");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.q(str);
        }

        public static /* synthetic */ j c(a aVar, String str, int i11, int i12, int i13, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchInviteUserRewards");
            }
            if ((i13 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.c(str, i11, i12);
        }

        public static /* synthetic */ j d(a aVar, String str, InviteUserShareInfoReq inviteUserShareInfoReq, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchInviteUserShareInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.e(str, inviteUserShareInfoReq);
        }

        public static /* synthetic */ j e(a aVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchMemberDetail");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.p(str);
        }

        public static /* synthetic */ j f(a aVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchMemberGoods");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.j(str);
        }

        public static /* synthetic */ j g(a aVar, String str, RequestBody requestBody, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchMemberRemind");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 2) != 0) {
                requestBody = RequestBody.INSTANCE.create("{}", MediaType.INSTANCE.parse("application/json"));
            }
            return aVar.n(str, requestBody);
        }

        public static /* synthetic */ j h(a aVar, String str, int i11, String str2, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchPointsHistory");
            }
            if ((i12 & 2) != 0) {
                i11 = 20;
            }
            if ((i12 & 4) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.b(str, i11, str2);
        }

        public static /* synthetic */ j i(a aVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchSkuList");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.k(str);
        }

        public static /* synthetic */ j j(a aVar, long j11, String str, RequestBody requestBody, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: migrateVipAssets");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 4) != 0) {
                requestBody = RequestBody.INSTANCE.create("{}", MediaType.INSTANCE.parse("application/json"));
            }
            return aVar.i(j11, str, requestBody);
        }

        public static /* synthetic */ j k(a aVar, String str, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveRewards");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 2) != 0) {
                str2 = "0";
            }
            return aVar.d(str, str2);
        }

        public static /* synthetic */ j l(a aVar, String str, MemberPromoCodeReq memberPromoCodeReq, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: submitPromoCode");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.m(str, memberPromoCodeReq);
        }

        public static /* synthetic */ j m(a aVar, String str, RequestBody requestBody, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: taskCheckInSubmit");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i11 & 2) != 0) {
                requestBody = RequestBody.INSTANCE.create("{}", MediaType.INSTANCE.parse("application/json"));
            }
            return aVar.g(str, requestBody);
        }
    }

    @POST("/wefeed-mobile-bff/money/exchange/order")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RedeemResult>> continuation);

    @GET("/wefeed-mobile-bff/money/coin-log")
    j<BaseDto<PointsHistoryData>> b(@Query("page") String pageNum, @Query("perpage") int pageSize, @Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/fission/reward-list")
    j<BaseDto<MemberTaskInviteRewards>> c(@Query("host") String host, @Query("lastId") int lastId, @Query("limit") int limit);

    @GET("/wefeed-mobile-bff/vip/member/rewards-receive")
    j<BaseDto<MemberTaskRewardInfo>> d(@Query("host") String host, @Query("rewardId") String rewardId);

    @POST("/wefeed-mobile-bff/share/shorturl")
    j<BaseDto<MemberInviteUserShareInfo>> e(@Query("host") String host, @Body InviteUserShareInfoReq request);

    @POST("/wefeed-mobile-bff/vip/check-access")
    Object f(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<PremiumV2CheckAccessDto>> continuation);

    @POST("/wefeed-mobile-bff/activity/check-in")
    j<BaseDto<MemberTaskSubmitCheckInRes>> g(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/vip/entitlement-consume")
    Object h(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<PremiumConsumeDto>> continuation);

    @POST("/wefeed-mobile-bff/vip/migrate-assets")
    j<BaseDto<MigrateVipAssetsData>> i(@Query("old_uid") long oldUid, @Query("host") String host, @Body RequestBody request);

    @GET("/wefeed-mobile-bff/vip/member-goods")
    j<BaseDto<MemberPriceData>> j(@Query("host") String host);

    @GET("/wefeed-mobile-bff/money/sku-list/get")
    j<BaseDto<SkuData>> k(@Query("host") String host);

    @POST("/wefeed-mobile-bff/statistics/user-operation")
    j<BaseDto<Object>> l(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/activity/promo-code-bind")
    j<BaseDto<MemberPromoCodeRes>> m(@Query("host") String host, @Body MemberPromoCodeReq request);

    @POST("/wefeed-mobile-bff/message/remind")
    j<BaseDto<List<MemberRemindData>>> n(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/activity/rewards-receive")
    j<BaseDto<TaskRewards>> o(@Query("host") String host, @Body RequestBody request);

    @GET("/wefeed-mobile-bff/vip/member/detail")
    j<BaseDto<MemberDetail>> p(@Query("host") String host);

    @GET("/wefeed-mobile-bff/vip/all-member-rights")
    j<BaseDto<AllMemberRightsData>> q(@Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/ad-task-list")
    j<BaseDto<MemberAdTaskInfo>> r(@Query("host") String host);

    @POST("/wefeed-mobile-bff/vip/member/rights-check")
    Object s(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<MemberCheckResult>> continuation);

    @GET("/wefeed-mobile-bff/activity/marketing/sku-promotion")
    Object t(@Query("host") String str, Continuation<? super BaseDto<SkuPromotionDto>> continuation);

    @GET("/wefeed-mobile-bff/activity/task-list")
    j<BaseDto<MemberTaskInfo>> u(@Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/global-task")
    j<BaseDto<GlobalTaskInfo>> v(@Query("host") String host);
}
