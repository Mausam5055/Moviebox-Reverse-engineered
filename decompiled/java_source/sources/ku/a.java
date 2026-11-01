package ku;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.subtitle_download.bean.SubtitleListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b`\u0018\u00002\u00020\u0001JB\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0007\u001a\u00020\u0006H§@¢\u0006\u0004\b\n\u0010\u000bJ8\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\f\u0010\rJ,\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u000f\u0010\u0010J,\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0011\u0010\u0010JD\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\b2\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lku/a;", "", "", "host", "subjectId", "resourceId", "", "episode", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/subtitle_download/bean/SubtitleListBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "miniId", "e", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "ugcVideoId", "id", "idType", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/ugc/video/caption")
    Object a(@Query("ugcVideoId") String str, @Query("id") String str2, @Query("idType") String str3, @Query("host") String str4, Continuation<? super BaseDto<SubtitleListBean>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/get-stream-captions")
    Object b(@Query("host") String str, @Query("subjectId") String str2, @Query("streamId") String str3, Continuation<? super BaseDto<SubtitleListBean>> continuation);

    @GET("/wefeed-short-bff/shorts/get-mini-captions")
    Object c(@Query("host") String str, @Query("miniId") String str2, Continuation<? super BaseDto<SubtitleListBean>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/get-ext-captions")
    Object d(@Query("host") String str, @Query("subjectId") String str2, @Query("resourceId") String str3, @Query("episode") int i11, Continuation<? super BaseDto<SubtitleListBean>> continuation);

    @GET("/wefeed-mobile-bff/shorts/get-mini-captions")
    Object e(@Query("host") String str, @Query("miniId") String str2, Continuation<? super BaseDto<SubtitleListBean>> continuation);
}
