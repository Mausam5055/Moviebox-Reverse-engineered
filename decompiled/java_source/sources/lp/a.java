package lp;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.publish.api.bean.LocationPlaceBean;
import com.transsion.publish.net.PostResuleEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J/\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\t\u0010\nJ/\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u000b\u0010\nJ8\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\fH§@¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Llp/a;", "", "", "host", "Lokhttp3/RequestBody;", "request", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/publish/net/PostResuleEntity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "c", "", "lat", "lon", "Lcom/transsion/publish/api/bean/LocationPlaceBean;", "a", "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/location/near-address")
    Object a(@Query("host") String str, @Query("lat") Double d11, @Query("lon") Double d12, Continuation<? super BaseDto<LocationPlaceBean>> continuation);

    @POST("/wefeed-mobile-bff/post/create")
    j<BaseDto<PostResuleEntity>> b(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/subject-api/have-seen")
    j<BaseDto<PostResuleEntity>> c(@Query("host") String host, @Body RequestBody request);
}
