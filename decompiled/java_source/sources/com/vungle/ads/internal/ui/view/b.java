package com.vungle.ads.internal.ui.view;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import com.vungle.ads.internal.omsdk.d;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public interface b {

    public interface a {
        boolean processCommand(String str, JsonObject jsonObject);
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.ui.view.b$b, reason: collision with other inner class name */
    public interface InterfaceC0718b {
        void onReceivedError(String str, boolean z10);

        void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess);

        boolean onWebRenderingProcessGone(WebView webView, Boolean bool);
    }

    void notifyPropertiesChange(boolean z10);

    void setAdVisibility(boolean z10);

    void setConsentStatus(boolean z10, String str, String str2, String str3, String str4);

    void setErrorHandler(InterfaceC0718b interfaceC0718b);

    void setMraidDelegate(a aVar);

    void setWebViewObserver(d dVar);
}
