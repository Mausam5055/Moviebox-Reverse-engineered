package com.mbridge.msdk.mbsignalcommon.mraid;

import android.webkit.WebView;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: com.mbridge.msdk.mbsignalcommon.mraid.a$a, reason: collision with other inner class name */
    private static class C0515a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f36505a = new a();
    }

    public static a a() {
        return C0515a.f36505a;
    }

    private void a(WebView webView, String str) {
        if (webView != null) {
            try {
                webView.loadUrl(str);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public void a(WebView webView) {
        a(webView, "javascript:window.mraidbridge.fireReadyEvent();");
    }

    public void a(WebView webView, double d11) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.audioVolumeChange(%s);", Double.valueOf(d11)));
    }

    public void a(WebView webView, float f11, float f12) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.setMaxSize(%.1f, %.1f);", Float.valueOf(f11), Float.valueOf(f12)));
    }

    public void a(WebView webView, float f11, float f12, float f13, float f14) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), Float.valueOf(f14)));
    }

    public void a(WebView webView, String str, String str2) {
        try {
            str2 = URLEncoder.encode(str2, "UTF-8");
            str = URLEncoder.encode(str, "UTF-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        a(webView, String.format("javascript:window.mraidbridge.fireErrorEvent('%1s', '%2s');", str2, str));
    }

    public void a(WebView webView, Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        String string = jSONObject.toString();
        try {
            string = URLEncoder.encode(string, "UTF-8");
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        a(webView, String.format("javascript:window.mraidbridge.fireChangeEvent(%s);", string));
    }

    public void b(WebView webView, float f11, float f12) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.setScreenSize(%.1f, %.1f);", Float.valueOf(f11), Float.valueOf(f12)));
    }

    public void b(WebView webView, float f11, float f12, float f13, float f14) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), Float.valueOf(f14)));
    }

    public void b(WebView webView, String str) {
        try {
            str = URLEncoder.encode(str, "UTF-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        a(webView, String.format("javascript:window.mraidbridge.nativeCallComplete('%s');", str));
    }

    public void c(WebView webView, float f11, float f12) {
        a(webView, String.format(Locale.CHINA, "javascript:window.mraidbridge.notifySizeChangeEvent(%.1f, %.1f);", Float.valueOf(f11), Float.valueOf(f12)));
    }

    public void c(WebView webView, String str) {
        try {
            str = URLEncoder.encode(str, "UTF-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        a(webView, String.format("javascript:window.mraidbridge.setIsViewable(%s);", str));
    }
}
