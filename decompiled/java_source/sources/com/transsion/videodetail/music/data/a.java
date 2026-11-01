package com.transsion.videodetail.music.data;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.videodetail.music.bean.MusicLikedRemoteActionBean;
import com.transsion.videodetail.music.bean.MusicLikedRemoteBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J4\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00042\b\b\u0003\u0010\u0006\u001a\u00020\u0002H§@¢\u0006\u0004\b\t\u0010\nJ,\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00072\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\b\u0003\u0010\u0006\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/videodetail/music/data/a;", "", "", "page", "", "perPage", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;", "a", "(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: com.transsion.videodetail.music.data.a$a, reason: collision with other inner class name */
    public static final class C0689a {
        public static /* synthetic */ Object a(a aVar, String str, int i11, String str2, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMusicLikedList");
            }
            if ((i12 & 2) != 0) {
                i11 = 20;
            }
            if ((i12 & 4) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.b(str, i11, str2, continuation);
        }

        public static /* synthetic */ Object b(a aVar, RequestBody requestBody, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: likeMusic");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/music/like")
    Object a(@Body RequestBody requestBody, @Query("host") String str, Continuation<? super BaseDto<MusicLikedRemoteActionBean>> continuation);

    @GET("/wefeed-mobile-bff/music/like-list")
    Object b(@Query("page") String str, @Query("perPage") int i11, @Query("host") String str2, Continuation<? super BaseDto<MusicLikedRemoteBean>> continuation);
}
