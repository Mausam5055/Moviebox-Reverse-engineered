package yq;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.ResponseBody;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.QueryMap;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JA\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0014\b\u0001\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00022\u0014\b\u0001\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lyq/a;", "", "", "", "headers", "queryMap", "Lio/reactivex/rxjava3/core/j;", "Lokhttp3/ResponseBody;", "a", "(Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/rxjava3/core/j;", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("complete/search")
    io.reactivex.rxjava3.core.j<ResponseBody> a(@HeaderMap Map<String, String> headers, @QueryMap(encoded = true) Map<String, String> queryMap);
}
