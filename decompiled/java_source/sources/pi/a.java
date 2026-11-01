package pi;

import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JP\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lpi/a;", "", "", "url", "host", "version", "versionAdScene", "", "withAdScene", "projectId", "Lcom/transsion/ad/monopoly/model/MbAdPlansDto;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: pi.a$a, reason: collision with other inner class name */
    public static final class C0885a {
        public static /* synthetic */ Object a(a aVar, String str, String str2, String str3, String str4, boolean z10, String str5, Continuation continuation, int i11, Object obj) {
            if (obj == null) {
                return aVar.a(str, str2, str3, str4, (i11 & 16) != 0 ? true : z10, str5, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAdConfig");
        }
    }

    @GET
    Object a(@Url String str, @Header("multiple_base_url") String str2, @Query("version") String str3, @Query("versionAdScene") String str4, @Query("withAdScene") boolean z10, @Query("projectId") String str5, Continuation<? super MbAdPlansDto> continuation);
}
