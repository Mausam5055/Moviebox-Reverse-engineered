package yw;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.upload.bean.LoggerBean;
import com.transsion.upload.bean.LoggerSwitchBean;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.usercenter.setting.feedback.bean.FeedbackEntity;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOptionList;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J*\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H§@¢\u0006\u0004\b\b\u0010\tJ \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\fJ\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000e\u0010\fJ*\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000f\u001a\u00020\u0004H§@¢\u0006\u0004\b\u0011\u0010\tJ \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\b\b\u0003\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0013\u0010\f¨\u0006\u0014"}, d2 = {"Lyw/a;", "", "", "host", "Lokhttp3/RequestBody;", "request", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;", "c", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/upload/bean/TstTokenEntity;", "e", TtmlNode.TAG_BODY, "Lcom/transsion/upload/bean/LoggerBean;", "a", "Lcom/transsion/upload/bean/LoggerSwitchBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: yw.a$a, reason: collision with other inner class name */
    public static final class C0971a {
        public static /* synthetic */ Object a(a aVar, String str, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLogsConfig");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.d(str, continuation);
        }

        public static /* synthetic */ Object b(a aVar, String str, RequestBody requestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportUploadLogsResult");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(str, requestBody, continuation);
        }
    }

    @POST("/wefeed-mobile-bff/retrieve_client_logs/report")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<LoggerBean>> continuation);

    @GET("/wefeed-mobile-bff/feedback/label/list")
    Object b(@Query("host") String str, Continuation<? super BaseDto<FbOptionList>> continuation);

    @POST("/wefeed-mobile-bff/feedback/commit")
    Object c(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<FeedbackEntity>> continuation);

    @GET("/wefeed-mobile-bff/client_logs_retrieve/config")
    Object d(@Query("host") String str, Continuation<? super BaseDto<LoggerSwitchBean>> continuation);

    @GET("/wefeed-mobile-bff/upload/sts-token/v2")
    Object e(@Query("host") String str, Continuation<? super BaseDto<TstTokenEntity>> continuation);
}
