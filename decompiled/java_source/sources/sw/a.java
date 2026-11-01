package sw;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.message.model.ResponseMessage;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JC\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0006H'¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lsw/a;", "", "", "host", "page", "count", "", "perPage", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/message/model/ResponseMessage;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/message/internal/list")
    j<BaseDto<ResponseMessage>> a(@Query("host") String host, @Query("page") String page, @Query(NativeComponentConstants.KEY_COMPONENT_TYPE) String count, @Query("perPage") int perPage);
}
