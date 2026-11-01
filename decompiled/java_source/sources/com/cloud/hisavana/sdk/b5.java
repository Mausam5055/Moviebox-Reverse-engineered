package com.cloud.hisavana.sdk;

import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b5 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r.a f21690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f21691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f21692c;

    public b5(r.a admHandlerListener) {
        Intrinsics.h(admHandlerListener, "admHandlerListener");
        this.f21690a = admHandlerListener;
        this.f21691b = "AdmWebClient";
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        e4.b().d(this.f21691b, "onPageFinished");
        if ((webView != null ? webView.getProgress() : 0) == 100) {
            this.f21692c = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String string;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.f21692c || webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        if (url == null || (string = url.toString()) == null) {
            string = "";
        }
        this.f21690a.a(string, webResourceError != null ? webResourceError.getErrorCode() : TaErrorCode.CODE_ADM_LOAD_FAILED);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        String string = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString();
        return string != null ? this.f21690a.a(string) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
