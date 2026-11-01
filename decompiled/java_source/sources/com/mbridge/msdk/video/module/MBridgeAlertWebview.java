package com.mbridge.msdk.video.module;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.listener.b;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.videocommon.download.d;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeAlertWebview extends MBridgeH5EndCardView {
    private String P;

    class a extends b {
        a() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            String str;
            super.a(webView, i11);
            o0.b("MBridgeAlertWebview", "readyState  :  " + i11);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            if (mBridgeAlertWebview.f39281u) {
                return;
            }
            boolean z10 = i11 == 1;
            mBridgeAlertWebview.f39280t = z10;
            if (z10) {
                str = "readyState state is " + i11;
            } else {
                str = "";
            }
            String str2 = str;
            MBridgeAlertWebview mBridgeAlertWebview2 = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview2.f39225a, mBridgeAlertWebview2.f39226b, mBridgeAlertWebview2.P, MBridgeAlertWebview.this.unitId, i11, str2, 1);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            o0.b("MBridgeAlertWebview", "onReceivedError");
            if (MBridgeAlertWebview.this.f39281u) {
                return;
            }
            o0.a(MBridgeBaseView.TAG, "onReceivedError,url:" + str2);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview.f39225a, mBridgeAlertWebview.f39226b, mBridgeAlertWebview.P, MBridgeAlertWebview.this.unitId, 2, str, 1);
            MBridgeAlertWebview.this.f39281u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("MBridgeAlertWebview", "finish+" + str);
            f.a().a(webView);
        }
    }

    public MBridgeAlertWebview(Context context) {
        super(context);
    }

    public MBridgeAlertWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected String getURL() {
        if (TextUtils.isEmpty(this.unitId)) {
            return "";
        }
        String strC = com.mbridge.msdk.videocommon.setting.b.b().a(c.m().b(), this.unitId, false).c();
        this.P = strC;
        return !TextUtils.isEmpty(strC) ? d.a().a(this.P) : "";
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (!this.f39229e || this.f39226b == null || TextUtils.isEmpty(url)) {
            this.notifyListener.a(101, "");
            return;
        }
        com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f39226b);
        aVar.a(this.f39226b.getAppName());
        this.f39276p.setDownloadListener(aVar);
        this.f39276p.setCampaignId(this.f39226b.getId());
        setCloseVisible(8);
        this.f39276p.setApiManagerJSFactory(bVar);
        this.f39276p.setWebViewListener(new a());
        setHtmlSource(com.mbridge.msdk.videocommon.download.f.a().a(url));
        this.f39280t = false;
        if (TextUtils.isEmpty(this.f39279s)) {
            o0.a(MBridgeBaseView.TAG, "load url:" + url);
            this.f39276p.loadUrl(url);
        } else {
            o0.a(MBridgeBaseView.TAG, "load html...");
            this.f39276p.loadDataWithBaseURL(url, this.f39279s, "text/html", "UTF-8", null);
        }
        this.f39276p.setBackgroundColor(0);
        setBackgroundColor(0);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        RelativeLayout relativeLayout = this.f39274n;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(0);
        }
        super.webviewshow();
        j.a(this.f39225a, this.f39226b, this.P, this.unitId, 2, 1);
    }
}
