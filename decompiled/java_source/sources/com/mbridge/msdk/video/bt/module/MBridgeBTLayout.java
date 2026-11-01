package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.bt.component.d;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeBTLayout extends BTBaseView {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WebView f38886p;

    public MBridgeBTLayout(Context context) {
        super(context);
    }

    public MBridgeBTLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f38886p != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.f38809n);
                jSONObject2.put("id", getInstanceId());
                jSONObject2.put(EventConstants.KEY_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a(this.f38886p, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                d.c().a(this.f38886p, "broadcast", getInstanceId());
            }
        }
    }

    public WebView getBtWebView() {
        return this.f38886p;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
    }

    public void notifyEvent(String str) {
        WebView webView = this.f38886p;
        if (webView != null) {
            BTBaseView.a(webView, str, this.f38814d);
        }
    }

    public void onBackPressed() {
        if (this.f38886p != null) {
            d.c().a(this.f38886p, "onSystemBackPressed", this.f38814d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.f38886p != null) {
            try {
                CampaignEx campaignEx = this.f38812b;
                if (campaignEx == null || !campaignEx.isDynamicView()) {
                    JSONObject jSONObject = new JSONObject();
                    if (configuration.orientation == 2) {
                        jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
                    } else {
                        jSONObject.put("orientation", "portrait");
                    }
                    jSONObject.put("instanceId", this.f38814d);
                    f.a().a(this.f38886p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
    }

    public void setWebView(WebView webView) {
        this.f38886p = webView;
    }
}
