package rm;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.mb.config.download.AppStartConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JC\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00022\b\b\u0003\u0010\u0006\u001a\u00020\u0002H'¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lrm/a;", "", "", "dynamicPath", "host", "keys", "version", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/mb/config/download/AppStartConfig;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/{dynamicPath}/app/config")
    j<BaseDto<AppStartConfig>> a(@Path("dynamicPath") String dynamicPath, @Query("host") String host, @Query("keys") String keys, @Query("version") String version);
}
