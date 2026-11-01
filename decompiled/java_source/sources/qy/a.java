package qy;

import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.report.launch.b;
import com.transsion.moviedetailapi.bean.DubsInfoData;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.bean.MovieRecBean;
import com.transsnet.downloader.bean.StartResponseBean;
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
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0094\u0001\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0007\u001a\u00020\u00062\b\b\u0003\u0010\b\u001a\u00020\u00062\b\b\u0003\u0010\t\u001a\u00020\u00062\b\b\u0003\u0010\n\u001a\u00020\u00062\b\b\u0003\u0010\u000b\u001a\u00020\u00062\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u00062\b\b\u0003\u0010\r\u001a\u00020\u00062\b\b\u0003\u0010\u000e\u001a\u00020\u00062\b\b\u0003\u0010\u000f\u001a\u00020\u0006H§@¢\u0006\u0004\b\u0012\u0010\u0013JR\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0014\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u00022\b\b\u0001\u0010\u0016\u001a\u00020\u00022\b\b\u0003\u0010\u0017\u001a\u00020\u0006H§@¢\u0006\u0004\b\u0018\u0010\u0019J,\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00102\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0004\b\u001d\u0010\u001eJ,\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00102\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0004\b\u001f\u0010\u001eJ,\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u00102\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0004\b \u0010\u001eJ,\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00102\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0004\b!\u0010\u001eJ/\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\u00100\"2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b$\u0010%J;\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u00100\"2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010&\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b(\u0010)J\"\u0010+\u001a\b\u0012\u0004\u0012\u00020*0\u00102\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001aH§@¢\u0006\u0004\b+\u0010,J*\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00020\u00102\b\b\u0001\u0010-\u001a\u00020\u001a2\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b.\u0010/J*\u00101\u001a\b\u0012\u0004\u0012\u0002000\u00102\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b1\u00102J*\u00104\u001a\b\u0012\u0004\u0012\u0002030\u00102\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b4\u00102¨\u00065"}, d2 = {"Lqy/a;", "", "", "host", "subjectId", "page", "", "perPage", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, "startPosition", "endPosition", "pagerMode", "resolution", "se", "epFrom", "epTo", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "g", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resourceId", "failUrl", "failCode", "resourceNum", "f", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsnet/downloader/bean/StartResponseBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", CampaignEx.JSON_KEY_AD_K, "i", "j", "Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/moviedetailapi/bean/Subject;", "h", "(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "linkUrl", "Lcom/transsnet/downloader/bean/DownloadUrlBean;", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsnet/downloader/bean/MovieRecBean;", "l", "(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", TtmlNode.TAG_BODY, "a", "(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "c", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/moviedetailapi/bean/DubsInfoData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: qy.a$a, reason: collision with other inner class name */
    public static final class C0897a {
        public static /* synthetic */ Object a(a aVar, RequestBody requestBody, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: favoriteShortTv");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: finishDownloadResource");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.k(str, requestBody, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, String str2, String str3, int i11, int i12, int i13, int i14, int i15, Integer num, int i16, int i17, int i18, Continuation continuation, int i19, Object obj) {
            if (obj == null) {
                return aVar.g(str, str2, str3, (i19 & 8) != 0 ? 8 : i11, (i19 & 16) != 0 ? 0 : i12, (i19 & 32) != 0 ? 1 : i13, (i19 & 64) != 0 ? 1 : i14, (i19 & 128) != 0 ? 0 : i15, (i19 & 256) != 0 ? Integer.valueOf(b.f43370a.b().getInt("download_last_resolution", 0)) : num, (i19 & 512) != 0 ? 1 : i16, (i19 & 1024) != 0 ? 1 : i17, (i19 & 2048) != 0 ? 1 : i18, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getDownloadList");
        }

        public static /* synthetic */ Object d(a aVar, String str, String str2, String str3, String str4, String str5, int i11, Continuation continuation, int i12, Object obj) {
            if (obj == null) {
                return aVar.f(str, str2, str3, str4, str5, (i12 & 32) != 0 ? 1 : i11, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getResource");
        }
    }

    @POST("/wefeed-mobile-bff/shorts/favorite")
    Object a(@Body RequestBody requestBody, @Query("host") String str, Continuation<? super BaseDto<String>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/dub-info")
    Object b(@Query("host") String str, @Query("subjectId") String str2, Continuation<? super BaseDto<DubsInfoData>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/season-info")
    Object c(@Query("host") String str, @Query("subjectId") String str2, Continuation<? super BaseDto<ResourcesSeasonList>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/start-download-resource")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<StartResponseBean>> continuation);

    @GET("/wefeed-mobile-bff/sniff/config")
    j<BaseDto<DownloadUrlBean>> e(@Query("host") String host, @Query("linkUrl") String linkUrl, @Query("subjectId") String subjectId);

    @GET("/wefeed-mobile-bff/subject-api/resource-position")
    Object f(@Query("host") String str, @Query("subjectId") String str2, @Query("resourceId") String str3, @Query("failUrl") String str4, @Query("failCode") String str5, @Query("resourceNum") int i11, Continuation<? super BaseDto<DownloadListBean>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/resource")
    Object g(@Query("host") String str, @Query("subjectId") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query(IntegrationConstants.NAVIGATION_BAR_ALL_ACTION) int i12, @Query("startPosition") int i13, @Query("endPosition") int i14, @Query("pagerMode") int i15, @Query("resolution") Integer num, @Query("se") int i16, @Query("epFrom") int i17, @Query("epTo") int i18, Continuation<? super BaseDto<DownloadListBean>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/get")
    j<BaseDto<Subject>> h(@Query("host") String host, @Query("subjectId") String subjectId);

    @POST("/wefeed-mobile-bff/ugc/video/start-download")
    Object i(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<StartResponseBean>> continuation);

    @POST("//wefeed-mobile-bff/ugc/video/finish-download")
    Object j(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<StartResponseBean>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/finish-download-resource")
    Object k(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<StartResponseBean>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/daily-movie-rec")
    Object l(@Body RequestBody requestBody, Continuation<? super BaseDto<MovieRecBean>> continuation);
}
