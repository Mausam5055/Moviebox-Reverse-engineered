package rv;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoFavoriteResponse;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveEntity;
import com.transsion.ugcvideodetail.api.bean.UGCVideoLikeResponse;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoSubscriptionEntity;
import com.transsion.ugcvideodetail.api.bean.UGCVideoSubscriptionResponse;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J6\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\b\u0010\tJ*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\fJ*\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\fJH\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00062\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u000f2\b\b\u0001\u0010\u0011\u001a\u00020\u000f2\b\b\u0003\u0010\u0012\u001a\u00020\u000f2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0014\u0010\u0015JL\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00062\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0017\u001a\u00020\u00022\b\b\u0003\u0010\u0018\u001a\u00020\u000f2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001a\u0010\u001bJ,\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00062\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\u001f\u0010 J,\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u00062\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b\"\u0010 J,\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u00062\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010#2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b%\u0010&J4\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\u00062\u0012\b\u0001\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010'2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b)\u0010*JL\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00190\u00062\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0017\u001a\u00020\u00022\b\b\u0003\u0010\u0018\u001a\u00020\u000f2\b\b\u0003\u0010\u0005\u001a\u00020\u0002H§@¢\u0006\u0004\b,\u0010\u001b¨\u0006-"}, d2 = {"Lrv/a;", "", "", "ugcVideoId", "collectionId", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "g", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "subjectId", "c", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "h", "", "startPosition", "endPosition", "pagerMode", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "e", "(Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "videoTitle", "page", "perPage", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "j", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;", "request", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoFavoriteResponse;", "f", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoLikeResponse;", "i", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionResponse;", "a", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoSubscriptionEntity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "([Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: rv.a$a, reason: collision with other inner class name */
    public static final class C0910a {
        public static /* synthetic */ Object a(a aVar, String[] strArr, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getImmVideoPlayInfoList");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.b(strArr, str, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, String str2, String str3, int i11, String str4, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getImmVideoRecommentList");
            }
            if ((i12 & 8) != 0) {
                i11 = 8;
            }
            int i13 = i11;
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return aVar.d(str, str2, str3, i13, str4, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, String str2, String str3, int i11, String str4, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCDetailForYouList");
            }
            if ((i12 & 8) != 0) {
                i11 = 8;
            }
            int i13 = i11;
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return aVar.j(str, str2, str3, i13, str4, continuation);
        }

        public static /* synthetic */ Object d(a aVar, String str, String str2, String str3, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCVideoDetail");
            }
            if ((i11 & 4) != 0) {
                str3 = vg.a.f77324a.a();
            }
            return aVar.g(str, str2, str3, continuation);
        }

        public static /* synthetic */ Object e(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCVideoDetailBySubjectId");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.c(str, str2, continuation);
        }

        public static /* synthetic */ Object f(a aVar, UGCVideoInteractiveEntity uGCVideoInteractiveEntity, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCVideoFavorite");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.f(uGCVideoInteractiveEntity, str, continuation);
        }

        public static /* synthetic */ Object g(a aVar, UGCVideoInteractiveEntity uGCVideoInteractiveEntity, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCVideoLike");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.i(uGCVideoInteractiveEntity, str, continuation);
        }

        public static /* synthetic */ Object h(a aVar, UGCVideoSubscriptionEntity uGCVideoSubscriptionEntity, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCVideoSubscription");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(uGCVideoSubscriptionEntity, str, continuation);
        }

        public static /* synthetic */ Object i(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoPlayInfo");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.h(str, str2, continuation);
        }

        public static /* synthetic */ Object j(a aVar, String str, int i11, int i12, int i13, String str2, Continuation continuation, int i14, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoPlayList");
            }
            if ((i14 & 8) != 0) {
                i13 = 1;
            }
            int i15 = i13;
            if ((i14 & 16) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.e(str, i11, i12, i15, str2, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/subscription/subscription")
    Object a(@Body UGCVideoSubscriptionEntity uGCVideoSubscriptionEntity, @Query("host") String str, Continuation<? super BaseDto<UGCVideoSubscriptionResponse>> continuation);

    @FormUrlEncoded
    @POST("/wefeed-mobile-bff/ugc/video/play-multi")
    Object b(@Field("ugcVideoIds") String[] strArr, @Query("host") String str, Continuation<? super BaseDto<UGCVideoPlayInfoList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/first-by-subject")
    Object c(@Query("subjectId") String str, @Query("host") String str2, Continuation<? super BaseDto<UGCVideo>> continuation);

    @GET("/wefeed-mobile-bff/ugc/trending/immersive")
    Object d(@Query("ugcVideoId") String str, @Query("tabId") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query("host") String str4, Continuation<? super BaseDto<UGCContentList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/collection/play-list")
    Object e(@Query("collectionId") String str, @Query("startPosition") int i11, @Query("endPosition") int i12, @Query("pagerMode") int i13, @Query("host") String str2, Continuation<? super BaseDto<UGCVideoList>> continuation);

    @POST("/wefeed-mobile-bff/favorite/ugc-video/toggle")
    Object f(@Body UGCVideoInteractiveEntity uGCVideoInteractiveEntity, @Query("host") String str, Continuation<? super BaseDto<UGCVideoFavoriteResponse>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/get")
    Object g(@Query("ugcVideoId") String str, @Query("collectionId") String str2, @Query("host") String str3, Continuation<? super BaseDto<UGCVideo>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/play")
    Object h(@Query("ugcVideoId") String str, @Query("host") String str2, Continuation<? super BaseDto<UGCVideoPlayInfo>> continuation);

    @POST("/wefeed-mobile-bff/interactive/ugc-video/like")
    Object i(@Body UGCVideoInteractiveEntity uGCVideoInteractiveEntity, @Query("host") String str, Continuation<? super BaseDto<UGCVideoLikeResponse>> continuation);

    @GET("/wefeed-mobile-bff/ugc/trending/by-ugc-video")
    Object j(@Query("ugcVideoId") String str, @Query("videoTitle") String str2, @Query("page") String str3, @Query("perPage") int i11, @Query("host") String str4, Continuation<? super BaseDto<UGCContentList>> continuation);
}
