package fr;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.search_pugc.bean.UGCEveryoneSearchData;
import com.transsion.search_pugc.bean.UGCRankSearchData;
import com.transsion.search_pugc.bean.UGCSearchResultData;
import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J/\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u000b\u0010\tJC\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00022\b\b\u0003\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u0010\u0010\u0011J*\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0013\u001a\u00020\u0012H§@¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lfr/a;", "", "", "host", "pageFrom", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/search_pugc/bean/UGCEveryoneSearchData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/search_pugc/bean/UGCRankSearchData;", "c", "keyword", "", "perPage", "Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;", "a", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/search_pugc/bean/UGCSearchResultData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/ugc/search/suggest")
    j<BaseDto<UGCSearchSuggestData>> a(@Query("host") String host, @Query("keyword") String keyword, @Query("perPage") int perPage, @Query("pageFrom") String pageFrom);

    @POST("/wefeed-mobile-bff/ugc/search/result")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<UGCSearchResultData>> continuation);

    @GET("/wefeed-mobile-bff/ugc/search/rank")
    j<BaseDto<UGCRankSearchData>> c(@Query("host") String host, @Query("pageFrom") String pageFrom);

    @GET("/wefeed-mobile-bff/ugc/search/everyone")
    j<BaseDto<UGCEveryoneSearchData>> d(@Query("host") String host, @Query("pageFrom") String pageFrom);
}
