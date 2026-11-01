package com.cloud.tmc.kernel.render;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public interface WebviewPageCallback {
    void onPageFinished(WebView webView, String str);

    void onPageStarted(WebView webView, String str);

    void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError);

    void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse);

    Boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);

    Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);
}
