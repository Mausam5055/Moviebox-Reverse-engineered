package ol;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.FilterItems;
import com.transsion.home.bean.MovieBean;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J4\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u0006\u001a\u00020\u0002H§@¢\u0006\u0004\b\t\u0010\nJ*\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000bH§@¢\u0006\u0004\b\u000f\u0010\u0010J*\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0013\u0010\u0014Jz\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u00042\b\b\u0001\u0010\u0016\u001a\u00020\u00042\n\b\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0003\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lol/c;", "", "", "host", "", "tabId", "filterItemVer", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/home/bean/FilterItems;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "requestBody", "Lcom/transsion/home/bean/RefreshBaseDto;", "Lcom/transsion/home/bean/MovieBean;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "category", "Lcom/transsion/home/bean/ugc/UGCFilterResponse;", "c", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "page", "perPage", "sort", "categoryLve2", "categoryLve3", "categoryLve4", "grade", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface c {
    @POST("/wefeed-mobile-bff/subject-api/list")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super RefreshBaseDto<MovieBean>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/filter-items")
    Object b(@Query("host") String str, @Query("tabId") int i11, @Query("filterItemVer") String str2, Continuation<? super BaseDto<FilterItems>> continuation);

    @GET("/wefeed-mobile-bff/ugc/category/lev1-sub-list")
    Object c(@Query("host") String str, @Query("category") String str2, Continuation<? super BaseDto<UGCFilterResponse>> continuation);

    @GET("/wefeed-mobile-bff/ugc/trending/filter-edu")
    Object d(@Query("host") String str, @Query("category") String str2, @Query("page") int i11, @Query("perPage") int i12, @Query("sort") String str3, @Query("categoryLve2") Integer num, @Query("categoryLve3") Integer num2, @Query("categoryLve4") Integer num3, @Query("grade") String str4, Continuation<? super BaseDto<UGCContentList>> continuation);
}
