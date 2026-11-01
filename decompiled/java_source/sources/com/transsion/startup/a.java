package com.transsion.startup;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J/\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/startup/a;", "", "", "host", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "Startup_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @POST("/wefeed-mobile-bff/user-api/submit-prefer")
    j<BaseDto<String>> a(@Query("host") String host, @Body RequestBody body);
}
