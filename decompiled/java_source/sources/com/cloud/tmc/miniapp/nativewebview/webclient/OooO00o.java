package com.cloud.tmc.miniapp.nativewebview.webclient;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends WebViewClient {
    public WebviewPageCallback OooO00o;

    /* JADX WARN: Multi-variable type inference failed */
    public OooO00o() {
        this(null, 0 == true ? 1 : 0, 3);
    }

    public OooO00o(WebviewPageEventCallback webviewPageEventCallback, WebviewPageCallback webviewPageCallback) {
        this.OooO00o = webviewPageCallback;
    }

    public /* synthetic */ OooO00o(WebviewPageEventCallback webviewPageEventCallback, WebviewPageCallback webviewPageCallback, int i11) {
        this(null, null);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        WebviewPageCallback webviewPageCallback = this.OooO00o;
        if (webviewPageCallback != null) {
            webviewPageCallback.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        WebviewPageCallback webviewPageCallback = this.OooO00o;
        if (webviewPageCallback != null) {
            webviewPageCallback.onPageStarted(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i11, String str, String str2) {
        super.onReceivedError(webView, i11, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        WebviewPageCallback webviewPageCallback = this.OooO00o;
        if (webviewPageCallback != null) {
            webviewPageCallback.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        WebviewPageCallback webviewPageCallback = this.OooO00o;
        if (webviewPageCallback != null ? Intrinsics.c(webviewPageCallback.shouldOverrideUrlLoading(webView, webResourceRequest), Boolean.TRUE) : false) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
