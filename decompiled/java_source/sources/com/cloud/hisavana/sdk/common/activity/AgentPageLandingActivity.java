package com.cloud.hisavana.sdk.common.activity;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.vungle.ads.internal.presenter.MRAIDPresenter;

/* JADX INFO: loaded from: classes3.dex */
public class AgentPageLandingActivity extends b {

    class a implements AgentPageWebViewClient.OverrideListener {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            e4.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            Uri url = webResourceRequest.getUrl();
            if (TextUtils.isEmpty(url.getAuthority()) || !url.getAuthority().contains("googleads")) {
                AgentPageLandingActivity.this.n().setUrl("");
            } else {
                AgentPageLandingActivity.this.n().setUrl(webResourceRequest.getUrl().toString());
            }
            return AgentPageLandingActivity.this.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public boolean OnOverrideUrlLoading(WebView webView, String str) {
            e4.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + str);
            if (TextUtils.isEmpty(str) || !str.contains("googleads")) {
                AgentPageLandingActivity.this.n().setUrl("");
            } else {
                AgentPageLandingActivity.this.n().setUrl(str);
            }
            return AgentPageLandingActivity.this.g(str, false);
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            e4.b().e("AgentPageLandingActivity", "onError for:" + webResourceRequest.getUrl() + ",error code: " + webResourceError.getErrorCode());
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public void onPageFinished(WebView webView, String str) {
            e4.b().d("AgentPageLandingActivity", "onPageFinished for:" + str);
        }
    }

    private void x(String str) {
        if (!str.contains(AgentPageJsBridge.AGENT_PAGE_INFO)) {
            e4.b().e("AgentPageLandingActivity", "loadAgentPageWeb, url is not legal");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(str);
            AthenaTracker.p0(this.f21892r.getWebId(), this.f21892r.getUrl(), this.f21892r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        this.f21881g.loadUrl(str);
    }

    private void y() {
        if (this.f21882h == null) {
            e4.b().e("AgentPageLandingActivity", "loadAgentPageWeb,adsDto is null");
            finish();
            return;
        }
        AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
        agentPageJsBridge.setCurrentAdInfo(new AgentPageCurrentAd("", "", ""));
        agentPageJsBridge.setWebview(this.f21881g);
        this.f21881g.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this.f21881g, true);
        this.f21881g.getSettings().setMediaPlaybackRequiresUserGesture(false);
        String clickUrl = this.f21882h.getClickUrl();
        q(clickUrl);
        x(clickUrl);
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected WebViewClient h() {
        return new AgentPageWebViewClient(new a());
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        y();
    }
}
