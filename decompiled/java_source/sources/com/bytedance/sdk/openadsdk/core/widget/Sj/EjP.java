package com.bytedance.sdk.openadsdk.core.widget.Sj;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.TzV;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends WebChromeClient {
    private static final String Sj = WebChromeClient.class.getSimpleName();
    private com.bytedance.sdk.openadsdk.common.EjP EjP;
    private Ym TKC;
    private final Yf sP;

    public EjP(Yf yf2) {
        this.sP = yf2;
    }

    public EjP(Yf yf2, Ym ym2) {
        this.sP = yf2;
        this.TKC = ym2;
    }

    public EjP(Yf yf2, Ym ym2, com.bytedance.sdk.openadsdk.common.EjP ejP) {
        this(yf2, ym2);
        this.EjP = ejP;
    }

    private boolean Sj(@NonNull final String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.regionMatches(true, 0, "bytedance:", 0, 10)) {
                sef.TKC().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.Sj.EjP.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TzV.Sj(Uri.parse(str), EjP.this.sP);
                    }
                });
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i11, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Sj(str);
        }
        super.onConsoleMessage(str, i11, str2);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !Sj(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i11) {
        super.onProgressChanged(webView, i11);
        Ym ym2 = this.TKC;
        if (ym2 != null) {
            ym2.Sj(webView, i11);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.EjP;
        if (ejP != null) {
            ejP.Sj(webView, i11);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }
}
