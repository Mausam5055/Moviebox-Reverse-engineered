package zv;

import com.transsion.push.PushConstants;
import com.transsion.upgradesdk.bean.RequestBean;
import com.transsion.upgradesdk.bean.UpgradeStatus;
import kotlin.Metadata;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J)\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lzv/h;", "", "Lcom/transsion/upgradesdk/bean/RequestBean;", "requestParam", "", PushConstants.PROVIDER_FIELD_APP_KEY, "Lretrofit2/d;", "Lcom/transsion/upgradesdk/bean/UpgradeStatus;", "a", "(Lcom/transsion/upgradesdk/bean/RequestBean;Ljava/lang/String;)Lretrofit2/d;", "upgradesdk_release"}, k = 1, mv = {1, 9, 0})
public interface h {
    @POST("app/upgrade/issued")
    retrofit2.d<UpgradeStatus> a(@Body RequestBean requestParam, @Header("ACCESS-KEY") String appKey);
}
