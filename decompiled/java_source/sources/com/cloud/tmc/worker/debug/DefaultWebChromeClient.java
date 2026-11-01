package com.cloud.tmc.worker.debug;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.WorkerAnalyseType;
import com.cloud.tmc.worker.BuildConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001e\u0010\u0007\u001a\u00020\b2\u0014\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J,\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\bH\u0016J\u001c\u0010\u001b\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\f2\b\u0010\t\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\bH\u0016J0\u0010\u001f\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010!\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J0\u0010$\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010!\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J0\u0010%\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010!\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J:\u0010&\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010!\u001a\u0004\u0018\u00010\f2\b\u0010'\u001a\u0004\u0018\u00010\f2\b\u0010\"\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010)\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010-\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010.\u001a\u00020/H\u0016J\u001c\u00100\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u00101\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u00102\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u00103\u001a\u0004\u0018\u00010\fH\u0016J$\u00104\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\u0010 \u001a\u0004\u0018\u00010\f2\u0006\u00105\u001a\u00020\u0011H\u0016J\u0012\u00106\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u00107\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u000108H\u0016J2\u00109\u001a\u00020\u00112\b\u0010:\u001a\u0004\u0018\u00010\u000f2\u0014\u0010;\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020<0\u000b\u0018\u00010\n2\b\u0010=\u001a\u0004\u0018\u00010>H\u0016¨\u0006?"}, d2 = {"Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;", "Landroid/webkit/WebChromeClient;", "()V", "getDefaultVideoPoster", "Landroid/graphics/Bitmap;", "getVideoLoadingProgressView", "Landroid/view/View;", "getVisitedHistory", "", "callback", "Landroid/webkit/ValueCallback;", "", "", "onCloseWindow", "window", "Landroid/webkit/WebView;", "onConsoleMessage", "", "consoleMessage", "Landroid/webkit/ConsoleMessage;", "onCreateWindow", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "isDialog", "isUserGesture", "resultMsg", "Landroid/os/Message;", "onGeolocationPermissionsHidePrompt", "onGeolocationPermissionsShowPrompt", "origin", "Landroid/webkit/GeolocationPermissions$Callback;", "onHideCustomView", "onJsAlert", "url", "message", "result", "Landroid/webkit/JsResult;", "onJsBeforeUnload", "onJsConfirm", "onJsPrompt", "defaultValue", "Landroid/webkit/JsPromptResult;", "onPermissionRequest", "request", "Landroid/webkit/PermissionRequest;", "onPermissionRequestCanceled", "onProgressChanged", "newProgress", "", "onReceivedIcon", RewardPlus.ICON, "onReceivedTitle", CampaignEx.JSON_KEY_TITLE, "onReceivedTouchIconUrl", "precomposed", "onRequestFocus", "onShowCustomView", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "onShowFileChooser", "webView", "filePathCallback", "Landroid/net/Uri;", "fileChooserParams", "Landroid/webkit/WebChromeClient$FileChooserParams;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultWebChromeClient extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        return super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        return super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> callback) {
        super.getVisitedHistory(callback);
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView window) {
        super.onCloseWindow(window);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", WorkerAnalyseType.CONSOLE, consoleMessage != null ? consoleMessage.message() : null);
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
        return super.onCreateWindow(view, isDialog, isUserGesture, resultMsg);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        super.onGeolocationPermissionsHidePrompt();
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
        super.onGeolocationPermissionsShowPrompt(origin, callback);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        return super.onJsAlert(view, url, message, result);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView view, String url, String message, JsResult result) {
        return super.onJsBeforeUnload(view, url, message, result);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        return super.onJsConfirm(view, url, message, result);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        return super.onJsPrompt(view, url, message, defaultValue, result);
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest request) {
        super.onPermissionRequest(request);
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequestCanceled(PermissionRequest request) {
        super.onPermissionRequestCanceled(request);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView view, int newProgress) {
        super.onProgressChanged(view, newProgress);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView view, Bitmap icon) {
        super.onReceivedIcon(view, icon);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView view, String title) {
        super.onReceivedTitle(view, title);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView view, String url, boolean precomposed) {
        super.onReceivedTouchIconUrl(view, url, precomposed);
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView view) {
        super.onRequestFocus(view);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        super.onShowCustomView(view, callback);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return super.onShowFileChooser(webView, filePathCallback, fileChooserParams);
    }
}
