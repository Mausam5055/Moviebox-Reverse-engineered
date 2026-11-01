package os;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.DubsInfoData;
import com.transsion.shorttv.bean.OperatingResp;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.StartDownloadResponseBean;
import com.transsion.shorttv.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J*\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJH\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\u000b\u001a\u00020\t2\b\b\u0003\u0010\f\u001a\u00020\t2\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\u000fJ*\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0011\u0010\bJ*\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0013\u001a\u00020\u0012H§@¢\u0006\u0004\b\u0015\u0010\u0016J4\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0017\u001a\u00020\u00022\b\b\u0003\u0010\u0018\u001a\u00020\tH§@¢\u0006\u0004\b\u0019\u0010\u001aJ4\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00052\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0003\u0010\u001b\u001a\u00020\t2\b\b\u0001\u0010\u001c\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001e\u0010\u001fJ*\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0001\u0010 \u001a\u00020\u00122\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b!\u0010\"J,\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u00052\b\b\u0001\u0010\u0004\u001a\u00020\u00022\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0012H§@¢\u0006\u0004\b$\u0010\u0016¨\u0006%"}, d2 = {"Los/a;", "", "", "subjectId", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/shorttv/bean/Subject;", "e", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "startPosition", "endPosition", "pagerMode", "Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;", "g", "(Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/shorttv/bean/DubsInfoData;", "f", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "h", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "page", "perPage", "c", "(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tabId", "version", "Lcom/transsion/shorttv/bean/OperatingResp;", "i", "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", TtmlNode.TAG_BODY, "a", "(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/shorttv/bean/StartDownloadResponseBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: os.a$a, reason: collision with other inner class name */
    public static final class C0875a {
        public static /* synthetic */ Object a(a aVar, RequestBody requestBody, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: favoriteShortTv");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShortTVDubInfo");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.f(str, str2, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, int i11, int i12, int i13, String str2, Continuation continuation, int i14, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShortTvEpisodeList");
            }
            if ((i14 & 8) != 0) {
                i13 = 1;
            }
            int i15 = i13;
            if ((i14 & 16) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.g(str, i11, i12, i15, str2, continuation);
        }

        public static /* synthetic */ Object d(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShortTvInfo");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.e(str, str2, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/shorts/favorite")
    Object a(@Body RequestBody requestBody, @Query("host") String str, Continuation<? super BaseDto<String>> continuation);

    @GET("/wefeed-mobile-bff/shorts/favorite-list")
    Object c(@Query("host") String str, @Query("page") String str2, @Query("perPage") int i11, Continuation<? super BaseDto<ShortTVRespData>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/start-download-resource")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<StartDownloadResponseBean>> continuation);

    @GET("/wefeed-mobile-bff/shorts/get-info")
    Object e(@Query("subjectId") String str, @Query("host") String str2, Continuation<? super BaseDto<Subject>> continuation);

    @GET("/wefeed-mobile-bff/shorts/dub-info")
    Object f(@Query("host") String str, @Query("subjectId") String str2, Continuation<? super BaseDto<DubsInfoData>> continuation);

    @GET("/wefeed-mobile-bff/shorts/mini-list")
    Object g(@Query("subjectId") String str, @Query("startPosition") int i11, @Query("endPosition") int i12, @Query("pagerMode") int i13, @Query("host") String str2, Continuation<? super BaseDto<ShortTvInfoEpisodeList>> continuation);

    @POST("/wefeed-mobile-bff/shorts/most-trending")
    Object h(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ShortTVRespData>> continuation);

    @GET("/wefeed-mobile-bff/tab-operating")
    Object i(@Query("host") String str, @Query("tabId") int i11, @Query("version") String str2, Continuation<? super BaseDto<OperatingResp>> continuation);
}
