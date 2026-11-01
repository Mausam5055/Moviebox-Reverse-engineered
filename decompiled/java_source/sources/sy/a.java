package sy;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.report.launch.b;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResolutions;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JN\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0003\u0010\b\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\fJ,\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\t2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\b\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\u000fJ,\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\b\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0011\u0010\u000fJ4\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\t2\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0003\u0010\u0006\u001a\u00020\u00052\b\b\u0003\u0010\b\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lsy/a;", "", "", "collectionId", "page", "", "perPage", "resolution", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "a", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ugcVideoId", "c", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResolutions;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: sy.a$a, reason: collision with other inner class name */
    public static final class C0919a {
        public static /* synthetic */ Object a(a aVar, String str, String str2, int i11, Integer num, String str3, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCCollectionDownloadList");
            }
            if ((i12 & 4) != 0) {
                i11 = 8;
            }
            int i13 = i11;
            if ((i12 & 8) != 0) {
                num = Integer.valueOf(b.f43370a.b().getInt("download_last_resolution", 0));
            }
            Integer num2 = num;
            if ((i12 & 16) != 0) {
                str3 = vg.a.f77324a.a();
            }
            return aVar.a(str, str2, i13, num2, str3, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, int i11, String str2, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCDownloadForYouList");
            }
            if ((i12 & 2) != 0) {
                i11 = 8;
            }
            if ((i12 & 4) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.b(str, i11, str2, continuation);
        }

        public static /* synthetic */ Object c(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCDownloadList");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.c(str, str2, continuation);
        }

        public static /* synthetic */ Object d(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCDownloadResolutions");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return aVar.d(str, str2, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/ugc/collection/download-list")
    Object a(@Query("collectionId") String str, @Query("page") String str2, @Query("perPage") int i11, @Query("resolution") Integer num, @Query("host") String str3, Continuation<? super BaseDto<UGCVideoDownloadList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/trending/by-download")
    Object b(@Query("page") String str, @Query("perPage") int i11, @Query("host") String str2, Continuation<? super BaseDto<UGCContentList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/video/download")
    Object c(@Query("ugcVideoId") String str, @Query("host") String str2, Continuation<? super BaseDto<UGCVideoDownloadList>> continuation);

    @GET("/wefeed-mobile-bff/ugc/collection/resolution")
    Object d(@Query("collectionId") String str, @Query("host") String str2, Continuation<? super BaseDto<UGCVideoDownloadResolutions>> continuation);
}
