package com.transsnet.login.email;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsnet.login.phone.bean.LoginCheckPhoneExistResult;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J/\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\t\u0010\nJ/\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00070\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u000b\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsnet/login/email/a;", "", "Lokhttp3/RequestBody;", TtmlNode.TAG_BODY, "", "host", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;", "a", "(Lokhttp3/RequestBody;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    /* JADX INFO: renamed from: com.transsnet.login.email.a$a, reason: collision with other inner class name */
    public static final class C0698a {
        public static /* synthetic */ io.reactivex.rxjava3.core.j a(a aVar, RequestBody requestBody, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkEmail");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.a(requestBody, str);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j b(a aVar, RequestBody requestBody, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getEmailCode");
            }
            if ((i11 & 2) != 0) {
                str = vg.a.f77324a.a();
            }
            return aVar.b(requestBody, str);
        }
    }

    @POST("/wefeed-mobile-bff/user-api/check-mail-account")
    io.reactivex.rxjava3.core.j<BaseDto<LoginCheckPhoneExistResult>> a(@Body RequestBody body, @Query("host") String host);

    @POST("/wefeed-mobile-bff/user-api/get-sms-code")
    io.reactivex.rxjava3.core.j<BaseDto<String>> b(@Body RequestBody body, @Query("host") String host);
}
