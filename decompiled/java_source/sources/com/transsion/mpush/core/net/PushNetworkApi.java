package com.transsion.mpush.core.net;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import vg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u0006\u001a\u00020\u0004H§@¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u0006\u001a\u00020\u00042\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0003\u0010\u0011\u001a\u00020\u0004H§@¢\u0006\u0002\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/mpush/core/net/PushNetworkApi;", "", "pushRegister", "Lcom/tn/lib/net/bean/BaseDto;", "", RequestParameters.PREFIX, "host", TtmlNode.TAG_BODY, "Lokhttp3/RequestBody;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLocalNotifications", "Lcom/transsion/mpush/core/net/SdkBaseDto;", "Lcom/transsion/mpush/core/net/SdkPullMsgResp;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPermanentPushData", "Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;", "page", "perPage", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface PushNetworkApi {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ Object getLocalNotifications$default(PushNetworkApi pushNetworkApi, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLocalNotifications");
            }
            if ((i11 & 2) != 0) {
                str2 = a.f77324a.a();
            }
            return pushNetworkApi.getLocalNotifications(str, str2, continuation);
        }

        public static /* synthetic */ Object getPermanentPushData$default(PushNetworkApi pushNetworkApi, String str, String str2, String str3, String str4, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPermanentPushData");
            }
            if ((i11 & 2) != 0) {
                str2 = a.f77324a.a();
            }
            String str5 = str2;
            if ((i11 & 4) != 0) {
                str3 = "1";
            }
            String str6 = str3;
            if ((i11 & 8) != 0) {
                str4 = "30";
            }
            return pushNetworkApi.getPermanentPushData(str, str5, str6, str4, continuation);
        }
    }

    @Headers({"Domain-Name: mb"})
    @GET("{prefix}/message/push/local/list")
    Object getLocalNotifications(@Path(encoded = true, value = RequestParameters.PREFIX) String str, @Query("host") String str2, Continuation<? super SdkBaseDto<SdkPullMsgResp>> continuation);

    @Headers({"Domain-Name: mb"})
    @GET("{prefix}/message/notify-bar/v2")
    Object getPermanentPushData(@Path(encoded = true, value = RequestParameters.PREFIX) String str, @Query("host") String str2, @Query("page") String str3, @Query("perPage") String str4, Continuation<? super SdkBaseDto<SdkPermanentMsgResp>> continuation);

    @Headers({"Domain-Name: mb"})
    @POST("{prefix}/message/report")
    Object pushRegister(@Path(encoded = true, value = RequestParameters.PREFIX) String str, @Query("host") String str2, @Body RequestBody requestBody, Continuation<? super BaseDto<String>> continuation);
}
