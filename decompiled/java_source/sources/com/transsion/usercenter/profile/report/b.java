package com.transsion.usercenter.profile.report;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\t\u0010\bJ,\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/transsion/usercenter/profile/report/b;", "", "", "host", "Lokhttp3/RequestBody;", "requestBody", "Lcom/tn/lib/net/bean/BaseDto;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "c", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface b {
    @POST("/wefeed-mobile-bff/user-api/block")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<Object>> continuation);

    @POST("/wefeed-mobile-bff/feedback/report")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<Object>> continuation);

    @POST("/wefeed-mobile-bff/user-api/unblock")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<Object>> continuation);
}
