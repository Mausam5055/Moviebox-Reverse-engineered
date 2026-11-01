package xo;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.postdetail.bean.NegativeFeedbackConfigBean;
import com.transsion.postdetail.bean.NegativeFeedbackRequest;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J*\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\f\u0010\rJJ\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u000f2\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\u0014\u0010\rJ*\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\u0015\u0010\rJ4\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0003\u0010\u0010\u001a\u00020\u000fH§@¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001a\u0010\u001bJ*\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001d\u001a\u00020\u001cH§@¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lxo/b;", "", "", "host", "postId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "a", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "page", "", "perPage", "pageFrom", "f", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/ShortTVRespData;", "c", "(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;", "g", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;", TtmlNode.TAG_BODY, "e", "(Ljava/lang/String;Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface b {

    public static final class a {
        public static /* synthetic */ Object a(b bVar, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNegativeFeedbackConfig");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return bVar.g(str, continuation);
        }

        public static /* synthetic */ Object b(b bVar, String str, NegativeFeedbackRequest negativeFeedbackRequest, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postNegativeFeedback");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return bVar.e(str, negativeFeedbackRequest, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/post/get")
    Object a(@Query("host") String str, @Query("postId") String str2, Continuation<? super BaseDto<PostSubjectItem>> continuation);

    @POST("/wefeed-mobile-bff/post/delete")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<String>> continuation);

    @GET("/wefeed-mobile-bff/shorts/favorite-list")
    Object c(@Query("host") String str, @Query("page") String str2, @Query("perPage") int i11, Continuation<? super BaseDto<ShortTVRespData>> continuation);

    @POST("/wefeed-mobile-bff/post/list/immersive")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @POST("/wefeed-mobile-bff/post/negative-feedback")
    Object e(@Query("host") String str, @Body NegativeFeedbackRequest negativeFeedbackRequest, Continuation<? super BaseDto<String>> continuation);

    @GET("/wefeed-mobile-bff/post/list/immersive/v2")
    Object f(@Query("host") String str, @Query("postId") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query("pageFrom") String str4, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @GET("/wefeed-mobile-bff/post/negative-feedback/config")
    Object g(@Query("host") String str, Continuation<? super BaseDto<NegativeFeedbackConfigBean>> continuation);

    @POST("/wefeed-mobile-bff/post/list/correlation")
    Object h(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<PostSubjectBean>> continuation);
}
