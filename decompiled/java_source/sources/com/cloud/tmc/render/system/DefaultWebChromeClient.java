package com.cloud.tmc.render.system;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.R;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0013\u001a\u00020\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001e\u0010\u0019\u001a\u00020\u00142\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c\u0018\u00010\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u00142\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J,\u0010%\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010 2\u0006\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\"2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020\u0014H\u0016J\u001c\u0010,\u001a\u00020\u00142\b\u0010-\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001a\u001a\u0004\u0018\u00010.H\u0016J0\u0010/\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010 2\b\u00100\u001a\u0004\u0018\u00010\u001d2\b\u00101\u001a\u0004\u0018\u00010\u001d2\b\u00102\u001a\u0004\u0018\u000103H\u0016J0\u00104\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010 2\b\u00100\u001a\u0004\u0018\u00010\u001d2\b\u00101\u001a\u0004\u0018\u00010\u001d2\b\u00102\u001a\u0004\u0018\u000103H\u0016J0\u00105\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010 2\b\u00100\u001a\u0004\u0018\u00010\u001d2\b\u00101\u001a\u0004\u0018\u00010\u001d2\b\u00102\u001a\u0004\u0018\u000103H\u0016J:\u00106\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010 2\b\u00100\u001a\u0004\u0018\u00010\u001d2\b\u00101\u001a\u0004\u0018\u00010\u001d2\b\u00107\u001a\u0004\u0018\u00010\u001d2\b\u00102\u001a\u0004\u0018\u000108H\u0016J\u0012\u00109\u001a\u00020\u00142\b\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u0012\u0010<\u001a\u00020\u00142\b\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u001a\u0010=\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010 2\u0006\u0010>\u001a\u00020?H\u0016J\u001c\u0010@\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010 2\b\u0010A\u001a\u0004\u0018\u00010\u0016H\u0016J\u001c\u0010B\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010 2\b\u0010C\u001a\u0004\u0018\u00010\u001dH\u0016J$\u0010D\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010 2\b\u00100\u001a\u0004\u0018\u00010\u001d2\u0006\u0010E\u001a\u00020\"H\u0016J\u0012\u0010F\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010 H\u0016J2\u0010G\u001a\u00020\"2\b\u0010H\u001a\u0004\u0018\u00010 2\u0014\u0010I\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020J0\u001c\u0018\u00010\u001b2\b\u0010K\u001a\u0004\u0018\u00010LH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006M"}, d2 = {"Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "Landroid/webkit/WebChromeClient;", "context", "Landroid/content/Context;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "webviewBridgeHelper", "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getPageEventCallback", "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "setPageEventCallback", "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V", "getWebviewBridgeHelper", "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "clear", "", "getDefaultVideoPoster", "Landroid/graphics/Bitmap;", "getVideoLoadingProgressView", "Landroid/view/View;", "getVisitedHistory", "callback", "Landroid/webkit/ValueCallback;", "", "", "onCloseWindow", "window", "Landroid/webkit/WebView;", "onConsoleMessage", "", "consoleMessage", "Landroid/webkit/ConsoleMessage;", "onCreateWindow", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "isDialog", "isUserGesture", "resultMsg", "Landroid/os/Message;", "onGeolocationPermissionsHidePrompt", "onGeolocationPermissionsShowPrompt", "origin", "Landroid/webkit/GeolocationPermissions$Callback;", "onJsAlert", "url", "message", "result", "Landroid/webkit/JsResult;", "onJsBeforeUnload", "onJsConfirm", "onJsPrompt", "defaultValue", "Landroid/webkit/JsPromptResult;", "onPermissionRequest", "request", "Landroid/webkit/PermissionRequest;", "onPermissionRequestCanceled", "onProgressChanged", "newProgress", "", "onReceivedIcon", RewardPlus.ICON, "onReceivedTitle", CampaignEx.JSON_KEY_TITLE, "onReceivedTouchIconUrl", "precomposed", "onRequestFocus", "onShowFileChooser", "webView", "filePathCallback", "Landroid/net/Uri;", "fileChooserParams", "Landroid/webkit/WebChromeClient$FileChooserParams;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class DefaultWebChromeClient extends WebChromeClient {
    private Context context;
    private WebviewPageEventCallback pageEventCallback;
    private final WebviewBridgeHelper webviewBridgeHelper;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultWebChromeClient(Context context, WebviewPageEventCallback webviewPageEventCallback, WebviewBridgeHelper webviewBridgeHelper) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.pageEventCallback = webviewPageEventCallback;
        this.webviewBridgeHelper = webviewBridgeHelper;
    }

    public /* synthetic */ DefaultWebChromeClient(Context context, WebviewPageEventCallback webviewPageEventCallback, WebviewBridgeHelper webviewBridgeHelper, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : webviewPageEventCallback, (i11 & 4) != 0 ? null : webviewBridgeHelper);
    }

    public final void clear() {
        setPageEventCallback(null);
    }

    public Context getContext() {
        return this.context;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
        return defaultVideoPoster == null ? BitmapFactory.decodeResource(getContext().getResources(), R.drawable.icon_video) : defaultVideoPoster;
    }

    public WebviewPageEventCallback getPageEventCallback() {
        return this.pageEventCallback;
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        return super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> callback) {
        super.getVisitedHistory(callback);
    }

    public WebviewBridgeHelper getWebviewBridgeHelper() {
        return this.webviewBridgeHelper;
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView window) {
        super.onCloseWindow(window);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("consoleMessage = ");
        sb2.append(consoleMessage != null ? consoleMessage.sourceId() : null);
        sb2.append(" ; ");
        sb2.append(consoleMessage != null ? consoleMessage.messageLevel() : null);
        sb2.append(" ; ");
        sb2.append(consoleMessage != null ? consoleMessage.message() : null);
        sb2.append(" ; ");
        sb2.append(consoleMessage != null ? Integer.valueOf(consoleMessage.lineNumber()) : null);
        TraceLog.i(TmcConstants.RENDER_TAG, sb2.toString());
        if (consoleMessage != null && (strMessage = consoleMessage.message()) != null) {
            Intrinsics.g(strMessage, "message()");
            ConsoleMessage.MessageLevel messageLevel = consoleMessage.messageLevel();
            if ((messageLevel == null ? -1 : WhenMappings.$EnumSwitchMapping$0[messageLevel.ordinal()]) == 1) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", RenderAnalyseType.ERROR, strMessage);
            } else {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", RenderAnalyseType.CONSOLE, strMessage);
            }
            TmcLogger.d("juggist", "console:" + strMessage);
            WebviewBridgeHelper webviewBridgeHelper = getWebviewBridgeHelper();
            if (webviewBridgeHelper != null) {
                webviewBridgeHelper.sendConsole(getPageEventCallback(), strMessage);
            }
        }
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
        WebviewPageEventCallback pageEventCallback = getPageEventCallback();
        if (pageEventCallback != null) {
            pageEventCallback.onProgressChanged(view, newProgress);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView view, Bitmap icon) {
        super.onReceivedIcon(view, icon);
        WebviewPageEventCallback pageEventCallback = getPageEventCallback();
        if (pageEventCallback != null) {
            pageEventCallback.onReceivedIcon(icon);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView view, String title) {
        super.onReceivedTitle(view, title);
        WebviewPageEventCallback pageEventCallback = getPageEventCallback();
        if (pageEventCallback != null) {
            pageEventCallback.onReceivedTitle(title);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView view, String url, boolean precomposed) {
        super.onReceivedTouchIconUrl(view, url, precomposed);
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView view) {
        super.onRequestFocus(view);
        WebviewPageEventCallback pageEventCallback = getPageEventCallback();
        if (pageEventCallback != null) {
            pageEventCallback.onRequestFocus();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return super.onShowFileChooser(webView, filePathCallback, fileChooserParams);
    }

    public void setContext(Context context) {
        Intrinsics.h(context, "<set-?>");
        this.context = context;
    }

    public void setPageEventCallback(WebviewPageEventCallback webviewPageEventCallback) {
        this.pageEventCallback = webviewPageEventCallback;
    }
}
