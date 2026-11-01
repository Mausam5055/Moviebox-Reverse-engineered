package rt;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.push.PushConstants;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.InteractiveRespData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ8\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\fJ,\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\bJR\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00052\b\b\u0001\u0010\t\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u000f2\b\b\u0001\u0010\u0011\u001a\u00020\u000f2\b\b\u0003\u0010\u0012\u001a\u00020\u000f2\b\b\u0003\u0010\u0013\u001a\u00020\u000f2\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0015\u0010\u0016J4\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00052\u0012\b\u0001\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00172\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0019\u0010\u001aJ4\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001b\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001d\u0010\fJ4\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001b\u001a\u00020\u000fH§@¢\u0006\u0004\b\u001e\u0010\u001fJ4\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00052\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010 \u001a\u00020\u00022\b\b\u0001\u0010\"\u001a\u00020!H§@¢\u0006\u0004\b#\u0010$J*\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0001\u0010&\u001a\u00020%2\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lrt/a;", "", "", "ugcVideoId", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;", "i", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectionId", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "f", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "subjectId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "startPosition", "endPosition", "pagerMode", "page", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;", "h", "(Ljava/lang/String;IIIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lcom/transsion/shorttv_pugc/ShorttvModel$PlayMultiDto;", "c", "([Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reqType", "Lcom/transsion/shorttv_pugc/bean/InteractiveRespData;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userId", "", PushConstants.TOPIC_SUBSCRIBE, "g", "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "a", "(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: rt.a$a, reason: collision with other inner class name */
    public static final class C0909a {
        public static /* synthetic */ Object a(a aVar, RequestBody requestBody, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: favoriteShortTv");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, String str2, String str3, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShortTvInfo");
            }
            if ((i11 & 4) != 0) {
                str3 = vg.a.f77324a.a();
            }
            return aVar.f(str, str2, str3, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getShortTvInfoBySubjectId");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.b(str, str2, continuation);
        }

        public static /* synthetic */ Object d(a aVar, String[] strArr, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoMultiStreams");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.c(strArr, str, continuation);
        }

        public static /* synthetic */ Object e(a aVar, String str, int i11, int i12, int i13, int i14, String str2, Continuation continuation, int i15, Object obj) {
            if (obj == null) {
                return aVar.h(str, i11, i12, (i15 & 8) != 0 ? 1 : i13, (i15 & 16) != 0 ? 1 : i14, (i15 & 32) != 0 ? vg.a.f77324a.a() : str2, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoPlayList");
        }

        public static /* synthetic */ Object f(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoStream");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.i(str, str2, continuation);
        }

        public static /* synthetic */ Object g(a aVar, String str, String str2, boolean z10, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: subscribeUser");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.g(str, str2, z10, continuation);
        }

        public static /* synthetic */ Object h(a aVar, String str, String str2, String str3, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toggleFavorite");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.e(str, str2, str3, continuation);
        }

        public static /* synthetic */ Object i(a aVar, String str, String str2, int i11, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toggleLike");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.d(str, str2, i11, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/shorts/favorite")
    Object a(@Body RequestBody requestBody, @Query("host") String str, Continuation<? super BaseDto<String>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/get")
    Object b(@Query("subjectId") String str, @Query("host") String str2, Continuation<? super BaseDto<ShorttvModel.UGCVideo>> continuation);

    @FormUrlEncoded
    @POST("/wefeed-mobile-bff/ugc/video/play-multi")
    Object c(@Field("ugcVideoIds") String[] strArr, @Query("host") String str, Continuation<? super BaseDto<ShorttvModel.PlayMultiDto>> continuation);

    @FormUrlEncoded
    @POST("/wefeed-mobile-bff/interactive/ugc-video/like")
    Object d(@Query("host") String str, @Field("ugcVideoId") String str2, @Field("reqType") int i11, Continuation<? super BaseDto<InteractiveRespData>> continuation);

    @FormUrlEncoded
    @POST("/wefeed-mobile-bff/favorite/ugc-video/toggle")
    Object e(@Query("host") String str, @Field("ugcVideoId") String str2, @Field("reqType") String str3, Continuation<? super BaseDto<InteractiveRespData>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/get")
    Object f(@Query("ugcVideoId") String str, @Query("collectionId") String str2, @Query("host") String str3, Continuation<? super BaseDto<ShorttvModel.UGCVideo>> continuation);

    @FormUrlEncoded
    @POST("/wefeed-mobile-bff/subscription/subscription")
    Object g(@Query("host") String str, @Field("targetUID") String str2, @Field(PushConstants.TOPIC_SUBSCRIBE) boolean z10, Continuation<? super BaseDto<InteractiveRespData>> continuation);

    @GET("/wefeed-mobile-bff/ugc/collection/play-list")
    Object h(@Query("collectionId") String str, @Query("startPosition") int i11, @Query("endPosition") int i12, @Query("pagerMode") int i13, @Query("page") int i14, @Query("host") String str2, Continuation<? super BaseDto<ShorttvModel.UGCVideoList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/play")
    Object i(@Query("ugcVideoId") String str, @Query("host") String str2, Continuation<? super BaseDto<ShorttvModel.PlayStreamItem>> continuation);
}
