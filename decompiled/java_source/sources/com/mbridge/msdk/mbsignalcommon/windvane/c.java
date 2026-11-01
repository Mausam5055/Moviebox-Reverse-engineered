package com.mbridge.msdk.mbsignalcommon.windvane;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes5.dex */
public interface c {
    void a(WebView webView);

    void a(WebView webView, int i11);

    void a(WebView webView, int i11, String str, String str2);

    void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError);

    void a(WebView webView, String str);

    void a(WebView webView, String str, Bitmap bitmap);

    void b(WebView webView, int i11);

    boolean b(WebView webView, String str);

    void c(WebView webView, int i11);
}
