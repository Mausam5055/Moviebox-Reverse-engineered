package com.cloud.hisavana.sdk.common.activity;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.util.p0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.vungle.ads.internal.presenter.MRAIDPresenter;

/* JADX INFO: loaded from: classes3.dex */
public class EWOfficialActivity extends b {

    class a extends e7.j {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = EWOfficialActivity.this.f21892r;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !p0.e(EWOfficialActivity.this.f21892r.getUrl(), str)) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            if (eWOfficialActivity.f21889o) {
                return;
            }
            eWOfficialActivity.f21889o = true;
            AthenaTracker.o0(eWOfficialActivity.f21892r.getWebId(), EWOfficialActivity.this.f21892r.getUrl(), EWOfficialActivity.this.f21892r.getTargetUrl(), 0, EWOfficialActivity.this.f21892r.getRedirectType(), EWOfficialActivity.this.f21892r.getLoadTime());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            super.onReceivedError(webView, i11, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (EWOfficialActivity.this.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(EWOfficialActivity.this.f21892r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21887m = true;
            eWOfficialActivity.f21892r.setErrorType("error");
            EWOfficialActivity.this.f21892r.setErrorCode(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (EWOfficialActivity.this.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(EWOfficialActivity.this.f21892r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21887m = true;
            eWOfficialActivity.f21892r.setErrorType("error");
            EWOfficialActivity.this.f21892r.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (EWOfficialActivity.this.f21892r == null || TextUtils.isEmpty(sslError.getUrl()) || !p0.e(EWOfficialActivity.this.f21892r.getUrl(), sslError.getUrl())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21887m = true;
            eWOfficialActivity.f21892r.setErrorType("ssl");
            EWOfficialActivity.this.f21892r.setErrorCode(sslError.getPrimaryError());
        }
    }

    private void x() {
        AdsDTO adsDTO = this.f21882h;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdChoiceClickUrl()) || this.f21881g == null) {
            e4.b().e("EWOfficialActivity", "loadAdChoiceUrl ad or adChoiceUrl is null");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(this.f21882h.getAdChoiceClickUrl());
            AthenaTracker.p0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        q(this.f21882h.getAdChoiceClickUrl());
        this.f21881g.loadUrl(this.f21882h.getAdChoiceClickUrl());
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected WebViewClient h() {
        return new a();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
    }
}
