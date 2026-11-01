package lq;

import com.cloud.config.utils.CommonUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.room.sub.bean.subscription.SubscriptionFeedBean;
import com.transsion.room.sub.bean.subscription.SubscriptionStatsBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J4\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0005H§@¢\u0006\u0004\b\t\u0010\nJ*\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u0002H§@¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Llq/a;", "", "", "host", "cursor", "", "limit", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", CommonUtils.PARAM_UID, "Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;", "a", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/subscription/stats")
    Object a(@Query("host") String str, @Query(CommonUtils.PARAM_UID) String str2, Continuation<? super BaseDto<SubscriptionStatsBean>> continuation);

    @GET("/wefeed-mobile-bff/subscription/feed")
    Object b(@Query("host") String str, @Query("cursor") String str2, @Query("limit") int i11, Continuation<? super BaseDto<SubscriptionFeedBean>> continuation);
}
