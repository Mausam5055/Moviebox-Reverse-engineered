package xo;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.bean.CommentLikeBean;
import com.transsion.postdetail.bean.CommentListBean;
import com.transsion.postdetail.bean.MyCommentListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J,\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0006\u0010\u0007J,\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\b\u0010\u0007J*\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\f\u0010\rJ*\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\u000e\u0010\rJ*\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\u0010\u0010\rJ\\\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00022\b\b\u0001\u0010\u0013\u001a\u00020\u00022\b\b\u0001\u0010\u0014\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u00022\b\b\u0001\u0010\u0017\u001a\u00020\u0016H§@¢\u0006\u0004\b\u0019\u0010\u001aJ*\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00052\b\b\u0001\u0010\n\u001a\u00020\t2\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lxo/a;", "", "", "host", "commentId", "Lcom/tn/lib/net/bean/BaseDto;", "c", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lokhttp3/RequestBody;", "requestBody", "Lcom/transsion/moviedetailapi/bean/CommentBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "Lcom/transsion/postdetail/bean/CommentLikeBean;", "f", "topicId", "topicType", "rootCommentId", "page", "locCommentId", "", "perPage", "Lcom/transsion/postdetail/bean/CommentListBean;", "g", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/postdetail/bean/MyCommentListBean;", "a", "(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: xo.a$a, reason: collision with other inner class name */
    public static final class C0962a {
        public static /* synthetic */ Object a(a aVar, RequestBody requestBody, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUserCommentList");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/comment/user/list")
    Object a(@Body RequestBody requestBody, @Query("host") String str, Continuation<? super BaseDto<MyCommentListBean>> continuation);

    @POST("/wefeed-mobile-bff/comment")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CommentBean>> continuation);

    @DELETE("/wefeed-mobile-bff/comment")
    Object c(@Query("host") String str, @Query("commentId") String str2, Continuation<? super BaseDto<String>> continuation);

    @DELETE("/wefeed-mobile-bff/comment/ugc-video")
    Object d(@Query("host") String str, @Query("commentId") String str2, Continuation<? super BaseDto<String>> continuation);

    @POST("/wefeed-mobile-bff/comment/ugc-video")
    Object e(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CommentBean>> continuation);

    @POST("/wefeed-mobile-bff/comment/like")
    Object f(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<CommentLikeBean>> continuation);

    @GET("/wefeed-mobile-bff/comment/list")
    Object g(@Query("host") String str, @Query("topicId") String str2, @Query("topicType") String str3, @Query("rootCommentId") String str4, @Query("page") String str5, @Query("locCommentId") String str6, @Query("perPage") int i11, Continuation<? super BaseDto<CommentListBean>> continuation);
}
