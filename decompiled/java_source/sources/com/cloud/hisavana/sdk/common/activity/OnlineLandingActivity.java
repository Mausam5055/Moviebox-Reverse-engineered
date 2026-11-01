package com.cloud.hisavana.sdk.common.activity;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.p0;
import com.cloud.hisavana.sdk.e4;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class OnlineLandingActivity extends b {

    private static final class a extends e7.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f21789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f21790b;

        a(OnlineLandingActivity onlineLandingActivity) {
            this.f21790b = new WeakReference(onlineLandingActivity);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            super.onPageFinished(webView, str);
            e4.b().d("OnlineLandingActivity", "onPageFinished: progress=" + webView.getProgress());
            if (webView.getProgress() < 100 || this.f21789a <= 0 || (onlineLandingActivity = (OnlineLandingActivity) this.f21790b.get()) == null) {
                return;
            }
            AthenaTracker.d0(onlineLandingActivity.f21882h, this.f21789a);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebPageBean webPageBean;
            super.onPageStarted(webView, str, bitmap);
            e4.b().d("OnlineLandingActivity", "onPageStarted: " + str);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21790b.get();
            if (onlineLandingActivity == null || (webPageBean = onlineLandingActivity.f21892r) == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !p0.e(onlineLandingActivity.f21892r.getTargetUrl(), str) || onlineLandingActivity.f21889o) {
                return;
            }
            onlineLandingActivity.f21889o = true;
            AthenaTracker.o0(onlineLandingActivity.f21892r.getWebId(), onlineLandingActivity.f21892r.getUrl(), onlineLandingActivity.f21892r.getTargetUrl(), 0, onlineLandingActivity.f21892r.getRedirectType(), onlineLandingActivity.f21892r.getLoadTime());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            super.onReceivedError(webView, i11, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21790b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(onlineLandingActivity.f21892r.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.f21887m = true;
            onlineLandingActivity.f21892r.setErrorType("error");
            onlineLandingActivity.f21892r.setErrorCode(webResourceError.getErrorCode());
            onlineLandingActivity.j(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21790b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(onlineLandingActivity.f21892r.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.f21887m = true;
            onlineLandingActivity.f21892r.setErrorType("error");
            onlineLandingActivity.f21892r.setErrorCode(webResourceResponse.getStatusCode());
            onlineLandingActivity.j(webResourceResponse.getStatusCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebPageBean webPageBean;
            e4.b().d("OnlineLandingActivity", "sslerror " + sslError.getPrimaryError());
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21790b.get();
            if (onlineLandingActivity != null && !TextUtils.isEmpty(sslError.getUrl()) && (webPageBean = onlineLandingActivity.f21892r) != null && p0.e(webPageBean.getTargetUrl(), sslError.getUrl())) {
                onlineLandingActivity.f21887m = true;
                onlineLandingActivity.f21892r.setErrorType("ssl");
                onlineLandingActivity.f21892r.setErrorCode(sslError.getPrimaryError());
            }
            this.f21789a++;
            sslErrorHandler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            OnlineLandingActivity onlineLandingActivity;
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return false;
            }
            WeakReference weakReference = this.f21790b;
            if (weakReference != null && (onlineLandingActivity = (OnlineLandingActivity) weakReference.get()) != null) {
                if (TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                    return false;
                }
                e4.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
                return onlineLandingActivity.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            e4.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            WeakReference weakReference = this.f21790b;
            return (weakReference == null || (onlineLandingActivity = (OnlineLandingActivity) weakReference.get()) == null) ? super.shouldOverrideUrlLoading(webView, str) : onlineLandingActivity.g(str, false);
        }
    }

    private void x() {
        if (this.f21881g == null) {
            finish();
            e4.b().e("OnlineLandingActivity", "initPaw webview is null,finish");
            return;
        }
        try {
            e4.b().d("OnlineLandingActivity", "initPaw");
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.f21881g, true);
            Class.forName("com.google.android.gms.ads.MobileAds").getMethod("registerWebView", WebView.class).invoke(null, this.f21881g);
        } catch (Exception e11) {
            e4.b().e("OnlineLandingActivity", "initPaw " + Log.getStackTraceString(e11));
        }
    }

    private void y() {
        if (this.f21882h == null || this.f21881g == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            e4.b().e("OnlineLandingActivity", "loadLandingPage,ad is null,finish");
            return;
        }
        e4.b().d("OnlineLandingActivity", "loadLandingPage " + this.f21882h.getAdCreativeId());
        com.cloud.hisavana.sdk.manager.a.f22653a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.f21883i, this.f21882h);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AthenaTracker.G(originalUrl, this.f21882h, Boolean.FALSE);
        if (TextUtils.isEmpty(splicedURL)) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            e4.b().e("OnlineLandingActivity", "loadLandingPage,click url is empty,finish");
            return;
        }
        if (m(splicedURL)) {
            e4.b().d("OnlineLandingActivity", "loadLandingPage,click url is gp,go to gp,finish");
            u();
            j(0);
            finish();
            return;
        }
        if (f(splicedURL)) {
            u();
            j(0);
            e4.b().e("OnlineLandingActivity", "loadLandingPage,checkDeepLink true finish");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(originalUrl);
            AthenaTracker.p0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        HashMap map = new HashMap();
        map.put("Accept-Timezone", "UTC");
        q(splicedURL);
        this.f21881g.loadUrl(splicedURL, map);
        e4.b().d("OnlineLandingActivity", "loadLandingPage,url:" + splicedURL);
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected WebViewClient h() {
        return new a(this);
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
        y();
    }
}
