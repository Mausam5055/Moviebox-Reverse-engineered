package jq;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.bean.favorite.FeedFavorData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J>\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0007\u001a\u00020\u0002H§@¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Ljq/a;", "", "", "host", "page", "", "perPage", "userId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/postdetail/bean/favorite/FeedFavorData;", "a", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/favorite/ugc-video/list")
    Object a(@Query("host") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("userId") String str3, Continuation<? super BaseDto<FeedFavorData>> continuation);
}
