package com.cloud.hisavana.sdk.common.http;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.h0;
import com.transsion.push.PushConstants;
import java.util.Locale;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Headers;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends d {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f22067k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f22068l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f22069m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22070c = "0";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f22071d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22072e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SSLSocketFactory f22073f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f22074g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f22075h = "0";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f22076i = "1";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdxImpBean f22077j;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.http.a$a, reason: collision with other inner class name */
    class C0302a extends StringCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f22078c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0302a(boolean z10, String str) {
            super(z10);
            this.f22078c = str;
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback, com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void l(Headers headers) {
            super.l(headers);
            if (headers != null) {
                for (int i11 = 0; i11 < headers.size(); i11++) {
                    String strName = headers.name(i11);
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolversion")) {
                        String strValue = headers.value(i11);
                        com.cloud.sdk.commonutil.util.c.netLog("okhttp -> get new cloud control version from header,version: " + strValue);
                        if (!TextUtils.isEmpty(strValue) && !strValue.equals(a.f22067k)) {
                            String unused = a.f22067k = strValue;
                            boolean unused2 = a.f22069m = true;
                            com.cloud.sdk.commonutil.util.c.netLog("okhttp ->  cloud control version update");
                            j7.a.e().r("new_config_ver", strValue);
                        }
                        j7.a.e().q("last_req_config_time", System.currentTimeMillis());
                    }
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolofflineversion")) {
                        String strValue2 = headers.value(i11);
                        com.cloud.sdk.commonutil.util.c.netLog("okhttp -> get new hisavana cloud control version from header,version: " + strValue2);
                        if (!TextUtils.isEmpty(strValue2) && !strValue2.equals(a.f22068l)) {
                            String unused3 = a.f22068l = strValue2;
                            com.cloud.sdk.commonutil.util.c.netLog("okhttp -> hisavana cloud control version update");
                            j7.a.e().r("new_hisavana_ver", strValue2);
                        }
                    }
                }
            }
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void x(int i11, String str, Throwable th2) {
            int iOptInt;
            if (h0.g(i11, str)) {
                a.this.i();
                return;
            }
            if (th2 != null && a7.c.p()) {
                com.cloud.sdk.commonutil.util.c.netLog(this.f22078c + " ----- error statusCode = " + i11 + " ----- error message = " + th2.getMessage() + " ----- response = " + str);
            }
            if (a.this.f22085b != null) {
                try {
                    if (str != null) {
                        iOptInt = new JSONObject(str).optInt("code");
                    } else {
                        com.cloud.sdk.commonutil.util.c.netLog("can't get code,response is null");
                        iOptInt = 0;
                    }
                } catch (Exception e11) {
                    com.cloud.sdk.commonutil.util.c.netLog("getCode error " + e11.getMessage());
                }
                if (iOptInt == 0) {
                    iOptInt = i11;
                }
                com.cloud.sdk.commonutil.util.c.netLog("statusCode = " + i11);
                ((CommonResponseListener) a.this.f22085b).c(iOptInt, str, th2);
            }
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void y(int i11, String str) {
            if (a7.c.p()) {
                com.cloud.sdk.commonutil.util.c.netLog(this.f22078c + "\n ----- status code = " + i11 + "\n ----- response = " + str);
            }
            if (TextUtils.isEmpty(str)) {
                ResponseBaseListener responseBaseListener = a.this.f22085b;
                if (responseBaseListener != null) {
                    ((CommonResponseListener) responseBaseListener).e(TaErrorCode.ERROR_RESPONSE_IS_NULL);
                }
                com.cloud.sdk.commonutil.util.c.netLog("TextUtils.isEmpty(response) == true ,  response is null ");
                return;
            }
            ResponseBaseListener responseBaseListener2 = a.this.f22085b;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).i(i11, str);
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface b {
        String a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        String strA = this.f22074g.a();
        if (TextUtils.isEmpty(strA)) {
            ResponseBaseListener responseBaseListener = this.f22085b;
            if (responseBaseListener != null) {
                ((CommonResponseListener) responseBaseListener).c(-1, "TextUtils.isEmpty(postBodyString) == true ", null);
            }
            com.cloud.sdk.commonutil.util.c.netLog("sendRequestToServer() --> TextUtils.isEmpty(postBodyString) == true ");
            return;
        }
        AdxImpBean adxImpBean = this.f22077j;
        if (adxImpBean != null) {
            adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
            AthenaTracker.g0(this.f22077j);
        }
        try {
            String str = "----- full url = " + this.f22071d + "\n ----- postBodyString = " + strA.trim();
            String strK = j7.a.e().k("cloudControlVersion", null);
            String strK2 = j7.a.e().k("hisavanaCurrentCloudControlVersion", null);
            if (TextUtils.isEmpty(this.f22071d)) {
                return;
            }
            ResponseBaseListener responseBaseListener2 = this.f22085b;
            boolean z10 = true;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).f(1);
            }
            if (g7.a.c() == 0) {
                z10 = false;
            }
            h0.f(z10);
            String strC = h0.c("post", "", "application/json", this.f22071d, strA);
            RequestParams requestParams = new RequestParams();
            requestParams.i("x-tr-signature", strC);
            requestParams.i("cloudControlVersion", strK);
            requestParams.i("cloudControlOfflineVersion", strK2);
            requestParams.i("defaultAd", "2");
            requestParams.i("offlineAd", this.f22075h);
            requestParams.i("Accept-Timezone", "UTC");
            requestParams.i("sdktype", this.f22076i);
            requestParams.i(PushConstants.PROVIDER_FIELD_PKG, com.cloud.sdk.commonutil.util.e.a().getPackageName());
            requestParams.n(strA);
            HttpRequest.j(this.f22071d, requestParams, new C0302a(false, str));
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.netLog("AdServerRequest --> " + Log.getStackTraceString(th2));
            ResponseBaseListener responseBaseListener3 = this.f22085b;
            if (responseBaseListener3 != null) {
                ((CommonResponseListener) responseBaseListener3).e(new TaErrorCode(-1, th2.getMessage()));
            }
        }
    }

    @Override // com.cloud.hisavana.sdk.common.http.d
    protected void a() {
        i();
    }

    public a j(AdxImpBean adxImpBean) {
        this.f22077j = adxImpBean;
        return this;
    }

    public a k(boolean z10) {
        this.f22072e = z10;
        return this;
    }

    public a l(boolean z10) {
        this.f22075h = z10 ? "1" : "0";
        return this;
    }

    public a m(CommonResponseListener commonResponseListener) {
        this.f22085b = commonResponseListener;
        return this;
    }

    public a n(String str) {
        this.f22070c = str;
        return this;
    }

    public a o(b bVar) {
        this.f22074g = bVar;
        return this;
    }

    public a p(String str) {
        this.f22076i = str;
        return this;
    }

    public a q(String str) {
        this.f22071d = str;
        return this;
    }
}
