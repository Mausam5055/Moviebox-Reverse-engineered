package xo;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001JV\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\r\u0010\u000eJJ\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\u000f2\b\b\u0001\u0010\t\u001a\u00020\u000fH§@¢\u0006\u0004\b\u0010\u0010\u0011JJ\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0014\u001a\u00020\u0013H§@¢\u0006\u0004\b\u0015\u0010\u0016JT\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0017\u001a\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0018\u001a\u00020\u00022\b\b\u0001\u0010\u0014\u001a\u00020\u0013H§@¢\u0006\u0004\b\u0019\u0010\u001aJ*\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001c\u001a\u00020\u001bH§@¢\u0006\u0004\b\u001e\u0010\u001fJN\u0010!\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b!\u0010\"JN\u0010#\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00052\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b#\u0010\"¨\u0006$"}, d2 = {"Lxo/c;", "", "", "host", "page", "", "perPage", "", "lon", "lat", "entryPostId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "a", "(Ljava/lang/String;Ljava/lang/String;IFFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "c", "(Ljava/lang/String;Ljava/lang/String;IDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "groupId", "", "with", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", NativeComponentConstants.KEY_COMPONENT_TYPE, "g", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/moviedetailapi/bean/RoomBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface c {

    public static final class a {
        public static /* synthetic */ Object a(c cVar, String str, String str2, int i11, String str3, String str4, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPostSubList");
            }
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return cVar.d(str, str2, i11, str3, str4, continuation);
        }

        public static /* synthetic */ Object b(c cVar, String str, String str2, int i11, String str3, String str4, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getStaggeredPostList");
            }
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return cVar.f(str, str2, i11, str3, str4, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/post/explore")
    Object a(@Query("host") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("lon") float f11, @Query("lat") float f12, @Query("entryPostId") String str3, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @POST("/wefeed-mobile-bff/group/list/nearby")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RoomBean>> continuation);

    @GET("/wefeed-mobile-bff/post/nearby")
    Object c(@Query("host") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("lon") double d11, @Query("lat") double d12, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @GET("/wefeed-mobile-bff/post/list-by-tab")
    Object d(@Query("tabId") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("entryPostId") String str3, @Query("host") String str4, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @GET("/wefeed-mobile-bff/post/list-trending/group")
    Object e(@Query("host") String str, @Query("groupId") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query("with") boolean z10, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @GET("/wefeed-mobile-bff/post/list-by-tab")
    Object f(@Query("tabId") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("entryPostId") String str3, @Query("host") String str4, Continuation<? super BaseDto<PostSubjectBean>> continuation);

    @GET("/wefeed-mobile-bff/post/list/group")
    Object g(@Query("host") String str, @Query("id") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query(NativeComponentConstants.KEY_COMPONENT_TYPE) String str4, @Query("with") boolean z10, Continuation<? super BaseDto<PostSubjectBean>> continuation);
}
