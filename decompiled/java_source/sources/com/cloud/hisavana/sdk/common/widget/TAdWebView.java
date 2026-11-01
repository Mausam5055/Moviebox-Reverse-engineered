package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public class TAdWebView extends WebView {

    class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i11) {
            super.onProgressChanged(webView, i11);
        }
    }

    public TAdWebView(Context context) {
        this(context, null);
    }

    public TAdWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TAdWebView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        a();
    }

    private void a() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(false);
        settings.setLoadWithOverviewMode(true);
        setWebChromeClient(new a());
    }
}
