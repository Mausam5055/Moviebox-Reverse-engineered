package fn;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomEntranceResponse;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.bean.ForYouBean;
import com.transsion.publish.model.PostEntity;
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
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J;\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005H'¢\u0006\u0004\b\n\u0010\u000bJ,\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\fH§@¢\u0006\u0004\b\u000e\u0010\u000fJR\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00052\b\b\u0001\u0010\u0013\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u0014H§@¢\u0006\u0004\b\u0017\u0010\u0018J*\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\b2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\fH§@¢\u0006\u0004\b\u001a\u0010\u000fJ*\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001b\u001a\u00020\fH§@¢\u0006\u0004\b\u001c\u0010\u000fJ,\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\b2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\fH§@¢\u0006\u0004\b\u001e\u0010\u000fJ*\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001b\u001a\u00020\fH§@¢\u0006\u0004\b \u0010\u000fJ*\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\b2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010!\u001a\u00020\u0005H§@¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lfn/a;", "", "", "host", "subjectId", "", "se", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/moviedetailapi/bean/Subject;", "g", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/j;", "Lokhttp3/RequestBody;", "requestBody", "c", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", "page", "perPage", "rankType", "", "with", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/postdetail/bean/ForYouBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "request", "h", "Lcom/transsion/publish/model/PostEntity;", "f", "Lcom/transsion/moviedetailapi/bean/RoomBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "postNum", "Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;", "a", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: fn.a$a, reason: collision with other inner class name */
    public static final class C0759a {
        public static /* synthetic */ Object a(a aVar, String str, int i11, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRoomPostEntrance");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i12 & 2) != 0) {
                i11 = 3;
            }
            return aVar.a(str, i11, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/community/trending-entrance")
    Object a(@Query("host") String str, @Query("postNum") int i11, Continuation<? super BaseDto<RoomEntranceResponse>> continuation);

    @POST("/wefeed-mobile-bff/group/list/subject")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RoomBean>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/want-to-see")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<Object>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/detail-rec")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ForYouBean>> continuation);

    @GET("/wefeed-mobile-bff/post/list/subject")
    Object e(@Query("host") String str, @Query("id") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query(NativeComponentConstants.KEY_COMPONENT_TYPE) String str4, @Query("with") boolean z10, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @POST("/wefeed-mobile-bff/search-anaylze/seek")
    Object f(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<PostEntity>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/get")
    j<BaseDto<Subject>> g(@Query("host") String host, @Query("subjectId") String subjectId, @Query("se") Integer se2);

    @POST("/wefeed-mobile-bff/subject-api/play-related-rec")
    Object h(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<ForYouBean>> continuation);
}
