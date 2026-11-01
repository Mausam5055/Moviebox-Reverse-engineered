package ol;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.HotSubjectEntity;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.bean.TrendingRespData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J,\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\b\u0010\tJ,\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\r\u0010\u000eJ*\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u000fH§@¢\u0006\u0004\b\u0012\u0010\u0013J@\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0014\u001a\u00020\u000f2\b\b\u0003\u0010\u0015\u001a\u00020\u000f2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0018\u0010\u0019J6\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u000f2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u001b\u0010\u001cJ*\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u001d\u001a\u00020\u000fH§@¢\u0006\u0004\b\u001f\u0010\u0013J6\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00170\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u000f2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b \u0010\u001cJB\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0015\u001a\u00020\u000f2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010!\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\"\u0010#J,\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b$\u0010\tJ,\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b%\u0010\t¨\u0006&"}, d2 = {"Lol/e;", "", "", "host", "Lokhttp3/RequestBody;", "request", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/home/bean/TrendingRespData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "isUgcEnabled", "Lcom/transsion/home/bean/AppTab;", "g", "(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "everyOneSearch", "Lcom/transsion/home/bean/HotSubjectEntity;", "f", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "page", "tabId", "version", "Lcom/transsion/home/bean/MainOperateData;", "e", "(Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/home/bean/SubOperateData;", "j", "(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postNum", "Lcom/transsion/home/bean/RoomEntranceResponse;", "a", "c", "grade", "h", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface e {

    public static final class a {
        public static /* synthetic */ Object a(e eVar, String str, int i11, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getHotSearch");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return eVar.f(str, i11, continuation);
        }

        public static /* synthetic */ Object b(e eVar, String str, int i11, int i12, String str2, Continuation continuation, int i13, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMainOperation");
            }
            if ((i13 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            String str3 = str;
            if ((i13 & 4) != 0) {
                i12 = 0;
            }
            return eVar.e(str3, i11, i12, str2, continuation);
        }

        public static /* synthetic */ Object c(e eVar, String str, int i11, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRoomPostEntrance");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return eVar.a(str, i11, continuation);
        }

        public static /* synthetic */ Object d(e eVar, String str, int i11, String str2, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSubOperation");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return eVar.j(str, i11, str2, continuation);
        }

        public static /* synthetic */ Object e(e eVar, String str, int i11, String str2, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getTrendingOperation");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return eVar.c(str, i11, str2, continuation);
        }

        public static /* synthetic */ Object f(e eVar, String str, int i11, String str2, String str3, Continuation continuation, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCOperation");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            String str4 = str;
            if ((i12 & 8) != 0) {
                str3 = null;
            }
            return eVar.h(str4, i11, str2, str3, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/community/trending-entrance")
    Object a(@Query("host") String str, @Query("postNum") int i11, Continuation<? super BaseDto<RoomEntranceResponse>> continuation);

    @POST("/wefeed-mobile-bff/subject-api/trending/v2")
    Object b(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<TrendingRespData>> continuation);

    @GET("/wefeed-mobile-bff/ugc/operating/tab-operating")
    Object c(@Query("host") String str, @Query("tabId") int i11, @Query("version") String str2, Continuation<? super BaseDto<MainOperateData>> continuation);

    @POST("/wefeed-mobile-bff/ugc/trending/channel")
    Object d(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<TrendingRespData>> continuation);

    @GET("/wefeed-mobile-bff/tab-operating")
    Object e(@Query("host") String str, @Query("page") int i11, @Query("tabId") int i12, @Query("version") String str2, Continuation<? super BaseDto<MainOperateData>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/search-rank")
    Object f(@Query("host") String str, @Query("everyoneSearch") int i11, Continuation<? super BaseDto<HotSubjectEntity>> continuation);

    @GET("/wefeed-mobile-bff/subject-api/bottom-tab")
    Object g(@Header("X-Ugc-Enabled") Boolean bool, @Query("host") String str, Continuation<? super BaseDto<AppTab>> continuation);

    @GET("/wefeed-mobile-bff/ugc/operating/tab-operating")
    Object h(@Query("host") String str, @Query("tabId") int i11, @Query("version") String str2, @Query("grade") String str3, Continuation<? super BaseDto<SubOperateData>> continuation);

    @POST("/wefeed-mobile-bff/ugc/trending/home")
    Object i(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<TrendingRespData>> continuation);

    @GET("/wefeed-mobile-bff/tab-operating")
    Object j(@Query("host") String str, @Query("tabId") int i11, @Query("version") String str2, Continuation<? super BaseDto<SubOperateData>> continuation);
}
