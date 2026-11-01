package com.iab.omid.library.hisavana.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f33586a = new h();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebView f33587a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f33588b;

        a(WebView webView, String str) {
            this.f33587a = webView;
            this.f33588b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.o(this.f33587a, this.f33588b);
        }
    }

    private h() {
    }

    public static final h a() {
        return f33586a;
    }

    public void b(WebView webView, String str) {
        g(webView, "finishSession", str);
    }

    public void c(WebView webView, String str, float f11) {
        g(webView, "setDeviceVolume", Float.valueOf(f11), str);
    }

    public void d(WebView webView, String str, String str2) {
        g(webView, "setDeviceLockState", str2);
    }

    public void e(WebView webView, String str, JSONObject jSONObject) {
        g(webView, "init", jSONObject, str);
    }

    public void f(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        g(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    void g(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            ie.d.a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("if(window.omidBridge!==undefined){omidBridge.");
        sb2.append(str);
        sb2.append("(");
        j(sb2, objArr);
        sb2.append(")}");
        h(webView, sb2);
    }

    void h(WebView webView, StringBuilder sb2) {
        String string = sb2.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            o(webView, string);
        } else {
            handler.post(new a(webView, string));
        }
    }

    public void i(WebView webView, JSONObject jSONObject) {
        g(webView, "setLastActivity", jSONObject);
    }

    void j(StringBuilder sb2, Object[] objArr) {
        String string;
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                string = "null";
            } else {
                if (obj instanceof String) {
                    string = obj.toString();
                    if (!string.startsWith("{")) {
                        sb2.append('\"');
                        sb2.append(string);
                        sb2.append('\"');
                    }
                } else {
                    sb2.append(obj);
                }
                sb2.append(",");
            }
            sb2.append(string);
            sb2.append(",");
        }
        sb2.setLength(sb2.length() - 1);
    }

    public void k(WebView webView, String str) {
        g(webView, "publishImpressionEvent", str);
    }

    public void l(WebView webView, String str, String str2) {
        g(webView, "setNativeViewHierarchy", str2, str);
    }

    public void m(WebView webView, String str, JSONObject jSONObject) {
        g(webView, "publishLoadedEvent", jSONObject, str);
    }

    public void n(WebView webView, String str, String str2) {
        g(webView, "setState", str2, str);
    }

    public boolean o(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            webView.evaluateJavascript(str, null);
            return true;
        } catch (IllegalStateException unused) {
            webView.loadUrl("javascript: " + str);
            return true;
        }
    }

    public void p(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        o(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};Object.defineProperty(this.omidVerificationProperties, 'injectionId', {get: function() {var currentScript = document && document.currentScript;return currentScript && currentScript.getAttribute('data-injection-id');}, configurable: true});var script = document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");script.setAttribute(\"data-injection-id\",\"%INJECTION_ID%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }
}
