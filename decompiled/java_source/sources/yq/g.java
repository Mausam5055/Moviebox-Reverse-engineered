package yq;

import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.publish.model.PostEntity;
import com.transsion.search.bean.HotSubjectEntity;
import com.transsion.search.bean.JoinGroupEntity;
import com.transsion.search.bean.SearchGroupEntity;
import com.transsion.search.bean.SearchResultEntity;
import com.transsion.search.bean.SearchSuggestEntity;
import com.transsion.search.bean.SearchWorkEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J*\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\b\u0010\tJ*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\u000b\u0010\tJ9\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00060\u000f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u000e\u001a\u00020\u0002H'¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00060\u000f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00060\u000f2\b\b\u0001\u0010\u0016\u001a\u00020\f2\b\b\u0003\u0010\u0017\u001a\u00020\fH'¢\u0006\u0004\b\u0019\u0010\u001aJ9\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00060\u000f2\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0003\u0010\u001b\u001a\u00020\f2\b\b\u0003\u0010\u001c\u001a\u00020\fH'¢\u0006\u0004\b\u001e\u0010\u001fJ1\u0010\"\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u00060\u000f2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u0004H'¢\u0006\u0004\b\"\u0010\u0015¨\u0006#"}, d2 = {"Lyq/g;", "", "", "host", "Lokhttp3/RequestBody;", "request", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/search/bean/SearchWorkEntity;", "e", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/search/bean/SearchResultEntity;", "c", "", "page", "keyword", "Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/search/bean/SearchGroupEntity;", "a", "(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/search/bean/JoinGroupEntity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "everyOneSearch", PlaceTypes.ROOM, "Lcom/transsion/search/bean/HotSubjectEntity;", "g", "(II)Lio/reactivex/rxjava3/core/j;", "perPage", "resultMode", "Lcom/transsion/search/bean/SearchSuggestEntity;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/j;", "requestBody", "Lcom/transsion/publish/model/PostEntity;", "f", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface g {

    public static final class a {
        public static /* synthetic */ io.reactivex.rxjava3.core.j a(g gVar, int i11, int i12, int i13, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getHotSubject");
            }
            if ((i13 & 2) != 0) {
                i12 = 1;
            }
            return gVar.g(i11, i12);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j b(g gVar, String str, int i11, int i12, int i13, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSearchSuggest");
            }
            if ((i13 & 2) != 0) {
                i11 = 20;
            }
            if ((i13 & 4) != 0) {
                i12 = 2;
            }
            return gVar.d(str, i11, i12);
        }
    }

    @GET("/wefeed-mobile-bff/group/list/search")
    io.reactivex.rxjava3.core.j<BaseDto<SearchGroupEntity>> a(@Query("host") String host, @Query("page") int page, @Query("keyword") String keyword);

    @POST("/wefeed-mobile-bff/group/join")
    io.reactivex.rxjava3.core.j<BaseDto<JoinGroupEntity>> b(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/subject-api/search/v2")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<SearchResultEntity>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/search-suggest")
    io.reactivex.rxjava3.core.j<BaseDto<SearchSuggestEntity>> d(@Query("keyword") String keyword, @Query("perPage") int perPage, @Query("resultMode") int resultMode);

    @POST("/wefeed-mobile-bff/subject-api/search")
    Object e(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<SearchWorkEntity>> continuation);

    @POST("/wefeed-mobile-bff/search-anaylze/seek")
    io.reactivex.rxjava3.core.j<BaseDto<PostEntity>> f(@Query("host") String host, @Body RequestBody requestBody);

    @GET("/wefeed-mobile-bff/subject-api/search-rank/v2")
    io.reactivex.rxjava3.core.j<BaseDto<HotSubjectEntity>> g(@Query("everyoneSearch") int everyOneSearch, @Query(PlaceTypes.ROOM) int room);
}
