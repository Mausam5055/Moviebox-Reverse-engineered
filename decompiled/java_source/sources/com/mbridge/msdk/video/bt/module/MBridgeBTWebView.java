package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.video.signal.impl.k;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeBTWebView extends MBridgeBTWebViewDiff {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f38933p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f38934q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f38935r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f38936s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ImageView f38937t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f38938u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f38939v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<CampaignEx> f38940w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WebView f38941x;

    class a extends com.mbridge.msdk.mbsignalcommon.listener.a {
        a() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            super.a(webView, i11);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            if (MBridgeBTWebView.this.f38941x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject.put("code", BTBaseView.f38809n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38941x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38941x, e11.getMessage());
                    o0.a("RVWindVaneWebView", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            if (MBridgeBTWebView.this.f38941x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject.put("code", BTBaseView.f38809n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", sslError.toString());
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38941x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38941x, e11.getMessage());
                    o0.a("RVWindVaneWebView", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (MBridgeBTWebView.this.f38941x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject.put("code", BTBaseView.f38809n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f38814d);
                    jSONObject2.put("result", 1);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38941x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38941x, e11.getMessage());
                    o0.a("RVWindVaneWebView", e11.getMessage());
                }
            }
            f.a().a(MBridgeBTWebView.this.webView);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(Object obj) {
            super.a(obj);
            try {
                k kVar = MBridgeBTWebView.this.jsCommon;
                String strEncodeToString = "";
                String strC = kVar != null ? kVar.c() : "";
                if (TextUtils.isEmpty(strC)) {
                    o0.a("RVWindVaneWebView", "getEndScreenInfo failed");
                } else {
                    strEncodeToString = Base64.encodeToString(strC.getBytes(), 2);
                    o0.a("RVWindVaneWebView", "getEndScreenInfo success");
                }
                f.a().b(obj, strEncodeToString);
            } catch (Throwable th2) {
                o0.a("RVWindVaneWebView", th2.getMessage());
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTWebView.this.f38941x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f38809n);
                    jSONObject.put("id", MBridgeBTWebView.this.f38814d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", String.valueOf(view.getX()));
                    jSONObject2.put("y", String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38941x, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38941x, "onClicked", MBridgeBTWebView.this.f38814d);
                }
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeBTWebView.this.close();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WindVaneWebView windVaneWebView = MBridgeBTWebView.this.webView;
                if (windVaneWebView != null) {
                    windVaneWebView.clearWebView();
                    MBridgeBTWebView.this.webView.release();
                }
                MBridgeBTWebView.this.f38933p = null;
                MBridgeBTWebView.this.f38934q = null;
                MBridgeBTWebView.this.f38935r = null;
                if (MBridgeBTWebView.this.f38941x != null) {
                    MBridgeBTWebView.this.f38941x = null;
                }
            } catch (Throwable th2) {
                o0.a(BTBaseView.TAG, th2.getMessage());
            }
        }
    }

    public MBridgeBTWebView(Context context) {
        super(context);
        this.f38936s = false;
        this.f38938u = false;
    }

    public MBridgeBTWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38936s = false;
        this.f38938u = false;
    }

    private void setIntentFilter(com.mbridge.msdk.mbsignalcommon.base.c cVar) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setFilter(cVar);
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.f38809n);
                jSONObject2.put("id", this.f38814d);
                jSONObject2.put(EventConstants.KEY_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a((WebView) this.webView, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "broadcast", this.f38814d);
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        WebView webView = this.f38941x;
        if (webView != null) {
            BTBaseView.a(webView, "onPlayerCloseBtnClicked", this.f38814d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }

    public List<CampaignEx> getCampaigns() {
        return this.f38940w;
    }

    public String getFilePath() {
        return this.f38934q;
    }

    public String getFileURL() {
        return this.f38933p;
    }

    public String getHtml() {
        return this.f38935r;
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f38812b;
    }

    public com.mbridge.msdk.videocommon.setting.c getRewardUnitSetting() {
        return this.f38939v;
    }

    public WindVaneWebView getWebView() {
        return this.webView;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        this.webView = windVaneWebView;
        windVaneWebView.setBackgroundColor(0);
        this.webView.setVisibility(0);
        k kVar = new k(null, this.f38812b, this.f38940w);
        this.jsCommon = kVar;
        kVar.setUnitId(this.f38813c);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        this.webView.setObject(this.jsCommon);
        this.webView.setMraidObject(this);
        this.webView.setWebViewListener(new a());
        addView(this.webView, new FrameLayout.LayoutParams(-1, -1));
        setOnClickListener(new b());
        try {
            ImageView imageView = new ImageView(getContext());
            this.f38937t = imageView;
            imageView.setImageResource(findDrawable("mbridge_reward_close"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
            layoutParams.setMargins(30, 30, 30, 30);
            this.f38937t.setLayoutParams(layoutParams);
            this.f38937t.setVisibility(this.f38936s ? 4 : 8);
            CampaignEx campaignEx = this.f38812b;
            if (campaignEx != null && campaignEx.isMraid()) {
                this.f38937t.setVisibility(4);
            }
            this.f38937t.setOnClickListener(new c());
            addView(this.f38937t);
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPressed() {
        if (this.webView != null) {
            com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemBackPressed", this.f38814d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (configuration.orientation == 2) {
                    jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
                } else {
                    jSONObject.put("orientation", "portrait");
                }
                jSONObject.put("instanceId", this.f38814d);
                f.a().a((WebView) this.webView, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        if (this.f38938u) {
            return;
        }
        this.f38938u = true;
        try {
            if (this.webView != null) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemDestory", this.f38814d);
            }
            new Handler(Looper.getMainLooper()).postDelayed(new d(), 500L);
            setOnClickListener(null);
            removeAllViews();
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        s0.b(campaign, this);
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        try {
            String clickURL = this.f38812b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.f38812b.setClickURL(str);
                reportOpen(str);
            }
            this.f38812b.setClickTempSource(2);
            this.f38812b.setClickType(2);
            this.f38812b.setTriggerClickSource(2);
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), this.f38813c);
            aVar.a(this);
            aVar.a(this.f38812b);
            this.f38812b.setClickURL(clickURL);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void preload() {
        if (!TextUtils.isEmpty(this.f38933p)) {
            this.webView.loadUrl(this.f38933p);
        } else if (!TextUtils.isEmpty(this.f38934q)) {
            this.webView.loadUrl(this.f38934q);
        } else {
            if (TextUtils.isEmpty(this.f38935r)) {
                return;
            }
            this.webView.loadDataWithBaseURL("", this.f38935r, "text/html", "UTF-8", null);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff
    public void reportOpen(String str) {
        try {
            CampaignEx mraidCampaign = getMraidCampaign();
            if (mraidCampaign != null) {
                new h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.f38813c, str, this.f38812b.isBidCampaign());
            }
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void setCampaigns(List<CampaignEx> list) {
        this.f38940w = list;
    }

    public void setCreateWebView(WebView webView) {
        this.f38941x = webView;
    }

    public void setFilePath(String str) {
        this.f38934q = str;
    }

    public void setFileURL(String str) {
        this.f38933p = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean zContains = str.contains(Constants.GP_DEEPLINK);
        setWebviewClickable(!zContains);
        if (zContains) {
            setIntentFilter(new com.mbridge.msdk.mbsignalcommon.base.c());
        }
    }

    public void setHtml(String str) {
        this.f38935r = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        this.f38939v = cVar;
    }

    public void setTempTypeForMetrics(int i11) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setTempTypeForMetrics(i11);
        }
    }

    public void setWebViewLocalRequestId(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setLocalRequestId(str);
        }
    }

    public void setWebViewRid(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setRid(str);
        }
    }

    public void setWebviewClickable(boolean z10) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setClickable(z10);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTWebViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        try {
            this.f38937t.setVisibility(z10 ? 4 : 0);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public boolean webviewGoBack() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null || !windVaneWebView.canGoBack()) {
            return false;
        }
        this.webView.goBack();
        return true;
    }

    public boolean webviewGoForward() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null || !windVaneWebView.canGoForward()) {
            return false;
        }
        this.webView.goForward();
        return true;
    }

    public void webviewLoad(int i11) {
        if (this.jsCommon == null) {
            this.jsCommon = new k(null, this.f38812b, this.f38940w);
        }
        CampaignEx campaignEx = this.f38812b;
        if (campaignEx != null) {
            this.jsCommon.c(campaignEx);
        } else {
            List<CampaignEx> list = this.f38940w;
            if (list != null && list.size() > 0) {
                this.jsCommon.a(this.f38940w);
                if (this.f38940w.size() == 1) {
                    this.jsCommon.c(this.f38940w.get(0));
                }
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f38939v;
        if (cVar != null) {
            this.jsCommon.setRewardUnitSetting(cVar);
        }
        this.jsCommon.setUnitId(this.f38813c);
        this.jsCommon.c(this.f38814d);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        if (i11 == 1) {
            this.jsCommon.r();
        }
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setObject(this.jsCommon);
        }
        CampaignEx campaignEx2 = this.f38812b;
        if (campaignEx2 != null && campaignEx2.isMraid()) {
            this.f38937t.setVisibility(4);
        }
        preload();
    }

    public boolean webviewReload() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null) {
            return false;
        }
        windVaneWebView.reload();
        return true;
    }
}
