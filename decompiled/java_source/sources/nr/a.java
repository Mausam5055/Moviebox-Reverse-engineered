package nr;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv._channel.model.ShortTvCategoryBean;
import com.transsion.shorttv._channel.model.ShortTvFilterItems;
import com.transsion.shorttv._channel.model.ShortTvMovieBean;
import com.transsion.shorttv._channel.model.ShortTvPlayListResp;
import com.transsion.shorttv._channel.model.ShortTvRefreshBaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001Jf\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u0004H§@¢\u0006\u0004\b\u000e\u0010\u000fJ4\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\u0010\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u0014H§@¢\u0006\u0004\b\u0018\u0010\u0019J*\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001a\u001a\u00020\u0014H§@¢\u0006\u0004\b\u001c\u0010\u0019¨\u0006\u001d"}, d2 = {"Lnr/a;", "", "", "host", "", "page", "perPage", "label", "category", "recType", "topIds", "tabId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/shorttv/_channel/model/ShortTvPlayListResp;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "filterItemVer", "Lcom/transsion/shorttv/_channel/model/ShortTvFilterItems;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "requestBody", "Lcom/transsion/shorttv/_channel/model/ShortTvRefreshBaseDto;", "Lcom/transsion/shorttv/_channel/model/ShortTvMovieBean;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "request", "Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;", "c", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: nr.a$a, reason: collision with other inner class name */
    public static final class C0854a {
        public static /* synthetic */ Object a(a aVar, String str, int i11, int i12, String str2, String str3, String str4, String str5, int i13, Continuation continuation, int i14, Object obj) {
            if (obj == null) {
                return aVar.d((i14 & 1) != 0 ? vg.a.f77324a.a() : str, i11, i12, str2, str3, str4, str5, i13, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPlayList");
        }
    }

    @POST("/wefeed-fm-bff/shorts/subject/list")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super ShortTvRefreshBaseDto<ShortTvMovieBean>> continuation);

    @GET("/wefeed-fm-bff/shorts/subject/filter-items")
    Object b(@Query("host") String str, @Query("tabId") int i11, @Query("filterItemVer") String str2, Continuation<? super BaseDto<ShortTvFilterItems>> continuation);

    @POST("wefeed-fm-bff/subject-api/genre-top")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ShortTvCategoryBean>> continuation);

    @GET("/wefeed-fm-bff/shorts/playlist/content")
    Object d(@Query("host") String str, @Query("page") int i11, @Query("perPage") int i12, @Query("label") String str2, @Query("category") String str3, @Query("recType") String str4, @Query("topIds") String str5, @Query("tabId") int i13, Continuation<? super BaseDto<ShortTvPlayListResp>> continuation);
}
