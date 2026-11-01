package com.github.lzyzsd.jsbridge;

import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import gm.n;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes3.dex */
class BridgeWebViewClient extends WebViewClient {
    private static final String TAG = "BridgeWebViewClient";
    private boolean isLoadNavigator = false;
    private WebViewClient mClient;
    private OnLoadJSListener mListener;

    public interface OnLoadJSListener {
        void onLoadFinished();

        void onLoadStart();
    }

    public BridgeWebViewClient(OnLoadJSListener onLoadJSListener) {
        this.mListener = onLoadJSListener;
    }

    private boolean interceptUrl(String str) {
        try {
            str = URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shouldOverrideUrlLoading, url = ");
        sb2.append(str);
        return str.startsWith("yy://return/") || str.startsWith("yy://");
    }

    @Override // android.webkit.WebViewClient
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.doUpdateVisitedHistory(webView, str, z10);
        } else {
            super.doUpdateVisitedHistory(webView, str, z10);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(WebView webView, android.os.Message message, android.os.Message message2) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onFormResubmission(webView, message, message2);
        } else {
            super.onFormResubmission(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onLoadResource(webView, str);
        } else {
            super.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageCommitVisible(WebView webView, String str) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onPageCommitVisible(webView, str);
        } else {
            super.onPageCommitVisible(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) throws Throwable {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onPageFinished(webView, str);
        } else {
            super.onPageFinished(webView, str);
        }
        this.mListener.onLoadStart();
        BridgeUtil.webViewLoadLocalJs(webView, BridgeUtil.JAVA_SCRIPT);
        this.mListener.onLoadFinished();
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onPageStarted(webView, str, bitmap);
        } else {
            super.onPageStarted(webView, str, bitmap);
        }
        if (this.isLoadNavigator) {
            return;
        }
        try {
            String str2 = String.format(BridgeUtil.JS_NAVIGATOR_HOST, webView.getContext().getPackageManager().getPackageInfo(webView.getContext().getPackageName(), 0).versionName);
            Log.e("yy", "jsCall:" + str2);
            webView.loadUrl(str2);
            this.isLoadNavigator = true;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
        } else {
            super.onReceivedClientCertRequest(webView, clientCertRequest);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i11, String str, String str2) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, i11, str, str2);
        } else {
            super.onReceivedError(webView, i11, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
        } else {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } else {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedLoginRequest(WebView webView, String str, @Nullable String str2, String str3) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        } else {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
        } else {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        WebViewClient webViewClient;
        if (Build.VERSION.SDK_INT >= 26 && (webViewClient = this.mClient) != null) {
            try {
                if (webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail)) {
                    return true;
                }
            } catch (Exception | LinkageError unused) {
            }
        }
        return n.f63887a.c(webView, renderProcessGoneDetail, "bridge_fallback");
    }

    @Override // android.webkit.WebViewClient
    public void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i11, SafeBrowsingResponse safeBrowsingResponse) {
        WebViewClient webViewClient;
        if (Build.VERSION.SDK_INT < 27 || (webViewClient = this.mClient) == null) {
            super.onSafeBrowsingHit(webView, webResourceRequest, i11, safeBrowsingResponse);
        } else {
            webViewClient.onSafeBrowsingHit(webView, webResourceRequest, i11, safeBrowsingResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f11, float f12) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onScaleChanged(webView, f11, f12);
        } else {
            super.onScaleChanged(webView, f11, f12);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onTooManyRedirects(WebView webView, android.os.Message message, android.os.Message message2) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onTooManyRedirects(webView, message, message2);
        } else {
            super.onTooManyRedirects(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            webViewClient.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            super.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.mClient = webViewClient;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebViewClient webViewClient = this.mClient;
        return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, webResourceRequest) : super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebViewClient webViewClient = this.mClient;
        return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, str) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClient = this.mClient;
        return webViewClient != null ? webViewClient.shouldOverrideKeyEvent(webView, keyEvent) : super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        WebViewClient webViewClient = this.mClient;
        if (webViewClient != null) {
            return webViewClient.shouldOverrideUrlLoading(webView, str);
        }
        if (interceptUrl(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
