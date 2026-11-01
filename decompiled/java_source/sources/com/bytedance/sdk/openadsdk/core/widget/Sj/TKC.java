package com.bytedance.sdk.openadsdk.core.widget.Sj;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.sU;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private final WeakReference<Context> Sj;
    private boolean sP = true;
    private final boolean TKC = true;
    private final boolean EjP = true;
    private final boolean HiB = false;
    private final boolean vS = true;
    private boolean Jcg = true;

    private TKC(Context context) {
        this.Sj = new WeakReference<>(context);
    }

    public static TKC Sj(Context context) {
        return new TKC(context);
    }

    private void Sj(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th2) {
            sU.sP(th2.toString(), new Object[0]);
        }
    }

    public static void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null) {
            return;
        }
        int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("clear_web_cache_new", 0);
        if (iSj == 0) {
            vSVar.Sj(true);
        } else if (iSj == 1) {
            vSVar.Sj(false);
        }
    }

    public static void sP(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th2) {
            sU.sP(th2.toString(), new Object[0]);
        }
    }

    public TKC Sj(boolean z10) {
        this.Jcg = z10;
        return this;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void Sj(WebView webView) {
        if (webView == null || this.Sj.get() == null) {
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
        } catch (Exception e11) {
            sU.sP("SSWebSettings", e11.getMessage());
        }
        try {
            if (this.sP) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th2) {
            sU.sP("SSWebSettings", th2.getMessage());
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setSavePassword(false);
        try {
            if (this.Jcg) {
                webView.setLayerType(2, null);
            } else {
                webView.setLayerType(0, null);
            }
        } catch (Throwable th3) {
            sU.sP("SSWebSettings", th3.getMessage());
        }
    }

    public TKC sP(boolean z10) {
        this.sP = z10;
        return this;
    }
}
