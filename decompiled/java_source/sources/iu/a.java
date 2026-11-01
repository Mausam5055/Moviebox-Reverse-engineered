package iu;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.subtitle.bean.SubtitleSearchListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001Jf\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0003\u0010\u000b\u001a\u00020\u0007H§@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Liu/a;", "", "", "host", CampaignEx.JSON_KEY_AD_Q, TmcConstants.KEY_LANGUAGE, "subjectId", "", "season", "episode", "page", "perPage", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: iu.a$a, reason: collision with other inner class name */
    public static final class C0794a {
        public static /* synthetic */ Object a(a aVar, String str, String str2, String str3, String str4, int i11, int i12, String str5, int i13, Continuation continuation, int i14, Object obj) {
            if (obj == null) {
                return aVar.a((i14 & 1) != 0 ? vg.a.f77324a.a() : str, str2, str3, str4, i11, i12, str5, (i14 & 128) != 0 ? 20 : i13, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: subtitleSearch");
        }
    }

    @GET("/wefeed-mobile-bff/subject-api/subtitle-search")
    Object a(@Query("host") String str, @Query(CampaignEx.JSON_KEY_AD_Q) String str2, @Query(TmcConstants.KEY_LANGUAGE) String str3, @Query("subjectId") String str4, @Query("season") int i11, @Query("episode") int i12, @Query("page") String str5, @Query("perPage") int i13, Continuation<? super BaseDto<SubtitleSearchListBean>> continuation);
}
