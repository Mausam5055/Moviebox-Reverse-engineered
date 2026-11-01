package com.bytedance.sdk.component.Sj;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public class uP extends Sj {
    static final /* synthetic */ boolean TEQ = true;
    protected String Dq;
    protected WebView uA;

    private void Sj(String str, final String str2) {
        if (this.vS || TextUtils.isEmpty(str2)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.Sj.uP.1
            @Override // java.lang.Runnable
            public void run() {
                if (uP.this.vS) {
                    return;
                }
                try {
                    uP.this.uA.evaluateJavascript(str2, null);
                } catch (Throwable unused) {
                }
            }
        };
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.EjP.post(runnable);
        } else {
            runnable.run();
        }
    }

    protected void EjP() {
        this.uA.removeJavascriptInterface(this.Dq);
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    protected Context Sj(TEQ teq) {
        Context context = teq.HiB;
        if (context != null) {
            return context;
        }
        WebView webView = teq.Sj;
        if (webView != null) {
            return webView.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    protected String Sj() {
        return this.uA.getUrl();
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    protected void Sj(String str) {
        Sj(str, "javascript:" + this.Dq + "._handleMessageFromToutiao(" + str + ")");
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    protected void Sj(String str, uvD uvd) {
        if (uvd == null || TextUtils.isEmpty(uvd.Dq)) {
            super.Sj(str, uvd);
            return;
        }
        String str2 = uvd.Dq;
        Sj(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
    }

    @SuppressLint({"AddJavascriptInterface"})
    protected void TKC() {
        if (!TEQ && this.uA == null) {
            throw new AssertionError();
        }
        this.uA.addJavascriptInterface(this, this.Dq);
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    protected void sP() {
        super.sP();
        EjP();
    }

    @Override // com.bytedance.sdk.component.Sj.Sj
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    protected void sP(TEQ teq) {
        this.uA = teq.Sj;
        this.Dq = teq.TKC;
        if (teq.sef) {
            return;
        }
        TKC();
    }
}
