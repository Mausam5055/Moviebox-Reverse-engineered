package com.cloud.tmc.render.system;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.BuildConfig;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.URLDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u0001DB5\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\bH\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010%\u001a\u00020\"J\u001c\u0010&\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010\bH\u0016J&\u0010*\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010\b2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J&\u0010-\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J.\u0010-\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\b2\b\u00105\u001a\u0004\u0018\u00010\bH\u0016J&\u00106\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u00107\u001a\u0004\u0018\u000108H\u0016J&\u00109\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010:\u001a\u0004\u0018\u00010;2\b\u00100\u001a\u0004\u0018\u00010<H\u0016J\u001c\u0010=\u001a\u00020>2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010?\u001a\u0004\u0018\u00010@H\u0017J\u000e\u0010A\u001a\u00020\"2\u0006\u0010#\u001a\u00020\bJ\u001e\u0010B\u001a\u0004\u0018\u0001082\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001c\u0010C\u001a\u00020>2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006E"}, d2 = {"Lcom/cloud/tmc/render/system/DefaultWebViewClient;", "Landroid/webkit/WebViewClient;", "Lcom/cloud/tmc/render/system/IChangeAppId;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "pageCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "appId", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "renderProcessListener", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", TmcConstants.KEY_MINI_COMMONRES_ID, "getNode", "()Lcom/cloud/tmc/kernel/node/Node;", "setNode", "(Lcom/cloud/tmc/kernel/node/Node;)V", "getPageCallback", "()Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "setPageCallback", "(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V", "getPageEventCallback", "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "setPageEventCallback", "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V", "getRenderProcessListener", "()Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "changeAppId", "", "id", "changeNode", "clear", "onPageFinished", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", TrackingKey.DESCRIPTION, "failingUrl", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onReceivedSslError", "handler", "Landroid/webkit/SslErrorHandler;", "Landroid/net/http/SslError;", "onRenderProcessGone", "", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "setCommonresId", "shouldInterceptRequest", "shouldOverrideUrlLoading", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultWebViewClient extends WebViewClient implements IChangeAppId {
    private static final String TAG = "DefaultWebViewClient";
    private String appId;
    private String commonresId;
    private Node node;
    private WebviewPageCallback pageCallback;
    private WebviewPageEventCallback pageEventCallback;
    private final IRenderProcessListener renderProcessListener;

    public DefaultWebViewClient(WebviewPageEventCallback webviewPageEventCallback, WebviewPageCallback webviewPageCallback, String appId, Node node, IRenderProcessListener renderProcessListener) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(node, "node");
        Intrinsics.h(renderProcessListener, "renderProcessListener");
        this.pageEventCallback = webviewPageEventCallback;
        this.pageCallback = webviewPageCallback;
        this.appId = appId;
        this.node = node;
        this.renderProcessListener = renderProcessListener;
        this.commonresId = "";
    }

    public /* synthetic */ DefaultWebViewClient(WebviewPageEventCallback webviewPageEventCallback, WebviewPageCallback webviewPageCallback, String str, Node node, IRenderProcessListener iRenderProcessListener, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : webviewPageEventCallback, (i11 & 2) != 0 ? null : webviewPageCallback, str, node, iRenderProcessListener);
    }

    @Override // com.cloud.tmc.render.system.IChangeAppId
    public void changeAppId(String id2) {
        Intrinsics.h(id2, "id");
        this.appId = id2;
    }

    @Override // com.cloud.tmc.render.system.IChangeAppId
    public void changeNode(Node node) {
        Intrinsics.h(node, "node");
        this.node = node;
    }

    public final void clear() {
        this.pageEventCallback = null;
        this.pageCallback = null;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Node getNode() {
        return this.node;
    }

    public final WebviewPageCallback getPageCallback() {
        return this.pageCallback;
    }

    public final WebviewPageEventCallback getPageEventCallback() {
        return this.pageEventCallback;
    }

    public final IRenderProcessListener getRenderProcessListener() {
        return this.renderProcessListener;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.LOAD_FINISH, view != null ? view.getUrl() : null);
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        if (webviewPageCallback != null) {
            webviewPageCallback.onPageFinished(view, url);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.LOAD_URL, view != null ? view.getUrl() : null);
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        if (webviewPageCallback != null) {
            webviewPageCallback.onPageStarted(view, url);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        super.onReceivedError(view, errorCode, description, failingUrl);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, "[onReceivedError]:" + description);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        super.onReceivedError(view, request, error);
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        if (webviewPageCallback != null) {
            webviewPageCallback.onReceivedError(view, request, error);
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str = this.appId;
        RenderAnalyseType renderAnalyseType = RenderAnalyseType.ERROR;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[onReceivedError]:");
        sb2.append((Object) (error != null ? error.getDescription() : null));
        performanceAnalyseProxy.record(str, renderAnalyseType, sb2.toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        super.onReceivedHttpError(view, request, errorResponse);
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        if (webviewPageCallback != null) {
            webviewPageCallback.onReceivedHttpError(view, request, errorResponse);
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, "[onReceivedHttpError]:" + errorResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        super.onReceivedSslError(view, handler, error);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, RenderAnalyseType.ERROR, "[onReceivedSslError]:" + error);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        this.renderProcessListener.onRenderProcessGone(view, detail);
        return true;
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setCommonresId(String id2) {
        Intrinsics.h(id2, "id");
        this.commonresId = id2;
    }

    public final void setNode(Node node) {
        Intrinsics.h(node, "<set-?>");
        this.node = node;
    }

    public final void setPageCallback(WebviewPageCallback webviewPageCallback) {
        this.pageCallback = webviewPageCallback;
    }

    public final void setPageEventCallback(WebviewPageEventCallback webviewPageEventCallback) {
        this.pageEventCallback = webviewPageEventCallback;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("request.url:");
        sb2.append(request != null ? request.getUrl() : null);
        TmcLogger.e("juggit", sb2.toString());
        IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
        WebResourceResponse webResourceResponse = this.commonresId.length() > 0 ? iResourceProcessor.get(request, this.appId, this.commonresId, this.node) : iResourceProcessor.get(request, this.appId, this.node);
        return webResourceResponse == null ? super.shouldInterceptRequest(view, request) : webResourceResponse;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        if (request != null) {
            try {
                Uri url = request.getUrl();
                if (url != null && Intrinsics.c(url.getScheme(), TmcConstants.SCHEME_BYTEBRIDGE)) {
                    String strDecode = URLDecoder.decode(url.toString(), "utf-8");
                    Intrinsics.g(strDecode, "decode(it.toString(), \"utf-8\")");
                    String strQ = StringsKt.Q(strDecode, "bytebridge://", "", false, 4, null);
                    TmcLogger.e(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "renderSendToNative shouldOverrideUrlLoadingBridge!!");
                    WebviewPageEventCallback webviewPageEventCallback = this.pageEventCallback;
                    if (webviewPageEventCallback != null) {
                        webviewPageEventCallback.onConsoleMessage(strQ);
                    }
                    return true;
                }
            } catch (Throwable th2) {
                TmcLogger.e("renderSendToNative shouldOverrideUrlLoadingBridge fail!:" + th2);
            }
        }
        WebviewPageCallback webviewPageCallback = this.pageCallback;
        if (webviewPageCallback != null ? Intrinsics.c(webviewPageCallback.shouldOverrideUrlLoading(view, request), Boolean.TRUE) : false) {
            return true;
        }
        return super.shouldOverrideUrlLoading(view, request);
    }
}
