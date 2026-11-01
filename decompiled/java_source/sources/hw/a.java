package hw;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ0\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lhw/a;", "", "", "host", "vipType", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "", "Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;", "a", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: hw.a$a, reason: collision with other inner class name */
    public static final class C0779a {
        public static /* synthetic */ Object a(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLinkedDevices");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(str, requestBody, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUpgradeRights");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.b(str, str2, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/user-api/device-sessions")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<List<LinkedDeviceDto>>> continuation);

    @GET("/wefeed-mobile-bff/vip/upgrade-rights")
    Object b(@Query("host") String str, @Query("vipType") String str2, Continuation<? super BaseDto<UpgradeRightsDto>> continuation);
}
