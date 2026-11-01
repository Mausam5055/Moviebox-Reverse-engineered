package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.r0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.io.File;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class OfflineLandingActivity extends com.cloud.hisavana.sdk.common.activity.b {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    c f21784x;

    class a extends e7.j {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            AdsDTO adsDTO;
            e4.b().d("OfflineLandingActivity", "shouldInterceptRequest URL== " + str);
            WebResourceResponse webResourceResponseA = r0.a(str);
            if (webResourceResponseA == null || (adsDTO = OfflineLandingActivity.this.f21882h) == null || !adsDTO.isOfflineAd()) {
                return super.shouldInterceptRequest(webView, str);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            OfflineLandingActivity offlineLandingActivity = OfflineLandingActivity.this;
            AthenaTracker.w(offlineLandingActivity.f21882h, jCurrentTimeMillis - offlineLandingActivity.f21886l);
            return webResourceResponseA;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            e4.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            return OfflineLandingActivity.this.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            e4.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            return OfflineLandingActivity.this.g(str, false);
        }
    }

    private static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<Handler> f21786a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f21787b;

        private b(Handler handler, String str) {
            this.f21786a = new WeakReference<>(handler);
            this.f21787b = str;
        }

        /* synthetic */ b(Handler handler, String str, a aVar) {
            this(handler, str);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                String strD = com.cloud.hisavana.sdk.common.util.m.d(N0.i(this.f21787b, 1));
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString(String.valueOf(1), strD);
                bundle.putString("load_offline_H5_res", this.f21787b);
                messageObtain.setData(bundle);
                Handler handler = this.f21786a.get();
                if (handler == null) {
                    return;
                }
                handler.sendMessage(messageObtain);
            } catch (Exception e11) {
                e4.b().e(Log.getStackTraceString(e11));
            }
        }
    }

    private static class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f21788a;

        c(OfflineLandingActivity offlineLandingActivity, Looper looper) {
            super(looper);
            this.f21788a = new WeakReference(offlineLandingActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            OfflineLandingActivity offlineLandingActivity = (OfflineLandingActivity) this.f21788a.get();
            if (offlineLandingActivity == null) {
                return;
            }
            if (message.what == 1) {
                offlineLandingActivity.x(message);
            } else {
                e4.b().e("OfflineLandingActivity", "handleMessage,wrong msg.what");
            }
        }
    }

    private void A(String str, String str2) {
        WebView webView;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str3 = File.separator;
        sb2.append(str3);
        sb2.append("offline_zip");
        sb2.append(str3);
        sb2.append(com.cloud.hisavana.sdk.common.util.a0.c(str));
        sb2.append(str3);
        sb2.append(com.vungle.ads.internal.b.AD_INDEX_FILE_NAME);
        String string = sb2.toString();
        if (new File(string).exists() && (webView = this.f21881g) != null) {
            webView.loadUrl(string);
        } else {
            e4.b().e("OfflineLandingActivity", "loadOfflineZip file.exists() is false,or webview is null");
            finish();
        }
    }

    private void B(String str) {
        HSScopeHelper.f23167a.g(new b(this.f21784x, str, null));
    }

    private void C() {
        try {
            AdsDTO adsDTO = this.f21882h;
            String clickUrl = adsDTO != null ? adsDTO.getClickUrl() : null;
            if (m(clickUrl)) {
                return;
            }
            q(clickUrl);
            z(this.f21883i);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Message message) {
        Bundle data = message.getData();
        if (data == null || this.f21881g == null) {
            return;
        }
        String string = data.getString(String.valueOf(message.what));
        String string2 = data.getString("load_offline_H5_res");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            e4.b().e("OfflineLandingActivity", "postLoadOfflineH5,dataString or resString is empty");
            this.f21881g.loadUrl(this.f21882h.getOfflineH5Url());
            return;
        }
        WebView webView = this.f21881g;
        if (webView != null) {
            webView.loadDataWithBaseURL(string2, string, "text/html; charset=UTF-8", "UTF-8", null);
        } else {
            e4.b().e("OfflineLandingActivity", "postLoadOfflineH5,webview is null");
            finish();
        }
    }

    private void z(DownUpPointBean downUpPointBean) {
        AdsDTO adsDTO = this.f21882h;
        if (adsDTO == null) {
            e4.b().e("OfflineLandingActivity", "loadOfflineWeb,adsDto is null");
            finish();
            return;
        }
        ViewJson viewJsonData = adsDTO.getViewJsonData();
        if (viewJsonData == null || viewJsonData.getOffline() == null) {
            e4.b().e("OfflineLandingActivity", "loadOfflineWeb,viewJsonData or viewJsonData.getOffline() is null");
            finish();
        } else if (!TextUtils.isEmpty(viewJsonData.getOffline().getRes())) {
            B(viewJsonData.getOffline().getRes());
            AthenaTracker.G(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.f21882h), this.f21882h, Boolean.FALSE);
        } else if (TextUtils.isEmpty(viewJsonData.getOffline().getZipRes())) {
            e4.b().e("OfflineLandingActivity", "loadOfflineWeb,can not open landingPage");
            finish();
        } else {
            A(viewJsonData.getOffline().getZipRes(), this.f21882h.getAdCreativeId());
            AthenaTracker.G(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.f21882h), this.f21882h, Boolean.FALSE);
        }
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected WebViewClient h() {
        return new a();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        this.f21784x = new c(this, getMainLooper());
        C();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c cVar = this.f21784x;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
    }
}
