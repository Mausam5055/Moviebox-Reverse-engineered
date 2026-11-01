package com.cloud.tmc.worker.debug;

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
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.worker.BuildConfig;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001c\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J&\u0010\u0015\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010\u0018\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0017J.\u0010\u0018\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00032\b\u0010 \u001a\u0004\u0018\u00010\u0003H\u0016J&\u0010!\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J&\u0010$\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010\u001b\u001a\u0004\u0018\u00010'H\u0016J\u001c\u0010(\u001a\u00020)2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u000e\u0010,\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u0003J\u001e\u0010.\u001a\u0004\u0018\u00010#2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001e\u0010.\u001a\u0004\u0018\u00010#2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010/\u001a\u00020)2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u00060"}, d2 = {"Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;", "Landroid/webkit/WebViewClient;", "appId", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "renderProcessListener", "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V", "getAppId", "()Ljava/lang/String;", TmcConstants.KEY_MINI_COMMONRES_ID, "getNode", "()Lcom/cloud/tmc/kernel/node/Node;", "getRenderProcessListener", "()Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", TrackingKey.DESCRIPTION, "failingUrl", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onReceivedSslError", "handler", "Landroid/webkit/SslErrorHandler;", "Landroid/net/http/SslError;", "onRenderProcessGone", "", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "setCommonresId", "id", "shouldInterceptRequest", "shouldOverrideUrlLoading", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultWebViewClient extends WebViewClient {
    private final String appId;
    private String commonresId;
    private final Node node;
    private final IRenderProcessListener renderProcessListener;

    public DefaultWebViewClient(String str, Node node, IRenderProcessListener renderProcessListener) {
        Intrinsics.h(renderProcessListener, "renderProcessListener");
        this.appId = str;
        this.node = node;
        this.renderProcessListener = renderProcessListener;
        this.commonresId = "";
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Node getNode() {
        return this.node;
    }

    public final IRenderProcessListener getRenderProcessListener() {
        return this.renderProcessListener;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        super.onReceivedError(view, errorCode, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        super.onReceivedError(view, request, error);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        super.onReceivedHttpError(view, request, errorResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        super.onReceivedSslError(view, handler, error);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        this.renderProcessListener.onRenderProcessGone(view, detail);
        return true;
    }

    public final void setCommonresId(String id2) {
        Intrinsics.h(id2, "id");
        this.commonresId = id2;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        Uri url;
        String string = (request == null || (url = request.getUrl()) == null) ? null : url.toString();
        if (string == null || string.length() == 0 || !StringsKt.c0(string, "http", false, 2, null)) {
            return super.shouldInterceptRequest(view, request);
        }
        IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
        String str = this.commonresId;
        WebResourceResponse webResourceResponse = (str == null || str.length() <= 0) ? iResourceProcessor.get(request, this.appId, this.node) : iResourceProcessor.get(request, this.appId, this.commonresId, this.node);
        return webResourceResponse == null ? super.shouldInterceptRequest(view, request) : webResourceResponse;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
        return super.shouldInterceptRequest(view, url);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        return super.shouldOverrideUrlLoading(view, request);
    }
}
