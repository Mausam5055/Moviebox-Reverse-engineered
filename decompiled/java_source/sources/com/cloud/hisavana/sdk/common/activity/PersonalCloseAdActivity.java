package com.cloud.hisavana.sdk.common.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.util.p0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.t2;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class PersonalCloseAdActivity extends com.cloud.hisavana.sdk.common.activity.b {

    class a extends e7.j {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = PersonalCloseAdActivity.this.f21892r;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !p0.e(PersonalCloseAdActivity.this.f21892r.getUrl(), str)) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            if (personalCloseAdActivity.f21889o) {
                return;
            }
            personalCloseAdActivity.f21889o = true;
            AthenaTracker.o0(personalCloseAdActivity.f21892r.getWebId(), PersonalCloseAdActivity.this.f21892r.getUrl(), PersonalCloseAdActivity.this.f21892r.getTargetUrl(), 0, PersonalCloseAdActivity.this.f21892r.getRedirectType(), PersonalCloseAdActivity.this.f21892r.getLoadTime());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            super.onReceivedError(webView, i11, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (PersonalCloseAdActivity.this.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(PersonalCloseAdActivity.this.f21892r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21887m = true;
            personalCloseAdActivity.f21892r.setErrorType("error");
            PersonalCloseAdActivity.this.f21892r.setErrorCode(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (PersonalCloseAdActivity.this.f21892r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !p0.e(PersonalCloseAdActivity.this.f21892r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21887m = true;
            personalCloseAdActivity.f21892r.setErrorType("error");
            PersonalCloseAdActivity.this.f21892r.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (PersonalCloseAdActivity.this.f21892r == null || TextUtils.isEmpty(sslError.getUrl()) || !p0.e(PersonalCloseAdActivity.this.f21892r.getUrl(), sslError.getUrl())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21887m = true;
            personalCloseAdActivity.f21892r.setErrorType("ssl");
            PersonalCloseAdActivity.this.f21892r.setErrorCode(sslError.getPrimaryError());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PersonalCloseAdActivity.this.onBackPressed();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f21796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AdsDTO f21797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f21798c;

        class a implements Preconditions.a {
            a() {
            }

            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public void onRun() {
                t2.p().e(c.this.f21798c);
                Activity activity = (Activity) c.this.f21796a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        class b implements Preconditions.a {
            b() {
            }

            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public void onRun() {
                Activity activity = (Activity) c.this.f21796a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        public c(Activity activity, AdsDTO adsDTO) {
            this.f21796a = new WeakReference(activity);
            this.f21797b = adsDTO;
        }

        @JavascriptInterface
        public void athenaTrack(String str, String str2) {
            e4.b().d("PersonalCloseAdActivity", "athenaTrack -----> eventName = " + str + "  params = " + str2);
            AthenaTracker.P(this.f21797b, str, str2, 8765);
        }

        public void b(int i11) {
            this.f21798c = i11;
        }

        @JavascriptInterface
        public void closePage(String str, String str2) {
            Preconditions.d(new b());
        }

        @JavascriptInterface
        public void personaliseCallback() {
            e4.b().d("PersonalCloseAdActivity", "personaliseCallback");
            Preconditions.d(new a());
        }
    }

    private void A() {
        if (this.f21882h == null || this.f21881g == null) {
            return;
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(g7.a.b());
            AthenaTracker.p0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        StringBuilder sb2 = new StringBuilder(g7.a.b());
        sb2.append("?gaid=");
        sb2.append(DeviceUtil.e());
        sb2.append("&oneid=");
        sb2.append(DeviceUtil.j());
        sb2.append("&ad_creative_id=");
        sb2.append(this.f21882h.getAdCreativeId());
        sb2.append("&industry_id=");
        sb2.append(this.f21882h.getIndustryId());
        sb2.append("&app_id=");
        String str = a7.c.f365b;
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append("&code_seat_id=");
        sb2.append(this.f21882h.getCodeSeatId());
        sb2.append("&trigger_id=");
        sb2.append(this.f21882h.getTriggerId());
        sb2.append("&request_id=");
        sb2.append(this.f21882h.getRid());
        sb2.append("&advertiser_id=");
        sb2.append(this.f21882h.getAdvertiserId());
        String string = sb2.toString();
        e4.b().d("PersonalCloseAdActivity", "ad close url == " + string);
        q(string);
        this.f21881g.loadUrl(string);
    }

    private void x() {
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(g7.a.b());
            AthenaTracker.p0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), MRAIDPresenter.OPEN);
            this.f21887m = true;
            this.f21892r.setErrorType("error");
            this.f21892r.setErrorCode(-2);
            String webId = this.f21892r.getWebId();
            String url = this.f21892r.getUrl();
            String targetUrl = this.f21892r.getTargetUrl();
            int redirectType = this.f21892r.getRedirectType();
            boolean z10 = this.f21887m;
            AthenaTracker.n0(webId, url, targetUrl, redirectType, z10 ? "fail" : NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, z10 ? this.f21892r.getErrorType() : "succeed", this.f21887m ? this.f21892r.getErrorCode() : 8000, -1L);
        }
    }

    private void y() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.layout_title);
        this.f21877c = frameLayout;
        frameLayout.setVisibility(0);
        HSToastUtil.f(getString(R$string.toast_no_network));
        ImageView imageView = this.f21879e;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
    }

    private void z() {
        if (this.f21881g == null) {
            return;
        }
        c cVar = new c(this, this.f21882h);
        this.f21881g.addJavascriptInterface(cVar, "sspWebView");
        cVar.b(getIntent().getIntExtra("close_hash_code", 0));
        A();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected WebViewClient h() {
        return new a();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (NetStateManager.checkNetworkState(false)) {
            z();
            return;
        }
        x();
        this.f21878d.setVisibility(8);
        findViewById(R$id.layout_no_net).setVisibility(0);
        y();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        FrameLayout frameLayout = this.f21878d;
        if (frameLayout == null || frameLayout.getVisibility() != 8) {
            return;
        }
        t2.p().d();
    }
}
