package com.mbridge.msdk.mbsignalcommon.windvane;

import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class j extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WindVaneWebView f36579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f36580b;

    public j(WindVaneWebView windVaneWebView) {
        this.f36579a = windVaneWebView;
    }

    public void a(c cVar) {
        this.f36580b = cVar;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.LOG) {
            return super.onConsoleMessage(consoleMessage);
        }
        b signalCommunication = this.f36579a.getSignalCommunication();
        if (signalCommunication != null) {
            String strMessage = consoleMessage.message();
            if (TextUtils.isEmpty(strMessage) || !strMessage.startsWith("mv://")) {
                return false;
            }
            o0.a("H5_ENTRY", "onConsoleMessage: message.length() = " + strMessage.length() + " " + strMessage);
            if (strMessage.contains("wv_hybrid:") && signalCommunication.b("wv_hybrid:")) {
                String strSubstring = strMessage.substring(0, strMessage.lastIndexOf(" ") + 1);
                o0.a("H5_ENTRY", "message = " + strSubstring);
                signalCommunication.a(strSubstring);
                return true;
            }
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        o0.b("H5_ENTRY", str2 + "");
        b signalCommunication = this.f36579a.getSignalCommunication();
        if (signalCommunication == null || str3 == null || !signalCommunication.b(str3)) {
            return false;
        }
        signalCommunication.a(str2);
        jsPromptResult.confirm("");
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i11) {
        super.onProgressChanged(webView, i11);
        c cVar = this.f36580b;
        if (cVar != null) {
            cVar.c(webView, i11);
        }
    }
}
