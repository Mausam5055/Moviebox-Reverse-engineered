package com.bytedance.sdk.openadsdk.sU;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public class uA {
    private static void Sj(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th2) {
            Jcg.Sj("WebViewSettings", "allowMediaPlayWithoutUserGesture error", th2);
        }
    }

    public static void Sj(WebView webView) {
        if (webView == null) {
            return;
        }
        sP(webView);
        WebSettings settings = webView.getSettings();
        Sj(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Throwable th2) {
            Jcg.Sj("WebViewSettings", "setJavaScriptEnabled error", th2);
        }
        try {
            settings.setSupportZoom(false);
        } catch (Throwable th3) {
            Jcg.Sj("WebViewSettings", "setSupportZoom error", th3);
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setDisplayZoomControls(false);
        int i11 = Build.VERSION.SDK_INT;
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setSavePassword(false);
        boolean z10 = i11 >= 28;
        try {
            if (z10) {
                if (z10) {
                    webView.setLayerType(2, null);
                }
                webView.getSettings().setMixedContentMode(0);
            }
            webView.setLayerType(0, null);
        } catch (Throwable th4) {
            Jcg.Sj("WebViewSettings", "setLayerType error", th4);
        }
        webView.getSettings().setMixedContentMode(0);
    }

    private static void sP(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th2) {
            Jcg.Sj("WebViewSettings", "removeJavascriptInterfacesSafe error", th2);
        }
    }
}
