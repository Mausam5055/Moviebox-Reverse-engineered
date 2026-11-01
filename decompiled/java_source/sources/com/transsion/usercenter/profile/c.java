package com.transsion.usercenter.profile;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.SubscriptionStatus;
import com.transsion.usercenter.profile.bean.ToggleSubscriptionResult;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\tH§@¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/usercenter/profile/c;", "", "", "host", "targetUID", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/profile/bean/SubscriptionStatus;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionResult;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface c {

    public static final class a {
        public static /* synthetic */ Object a(c cVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSubscriptionStatus");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return cVar.b(str, str2, continuation);
        }

        public static /* synthetic */ Object b(c cVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toggleSubscription");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return cVar.a(str, requestBody, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/subscription/subscription")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ToggleSubscriptionResult>> continuation);

    @GET("/wefeed-mobile-bff/subscription/status")
    Object b(@Query("host") String str, @Query("targetUID") String str2, Continuation<? super BaseDto<SubscriptionStatus>> continuation);
}
