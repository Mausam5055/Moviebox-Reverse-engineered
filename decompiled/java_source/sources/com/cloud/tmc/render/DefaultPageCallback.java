package com.cloud.tmc.render;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.cloud.tmc.kernel.render.IPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J!\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0002\u0010\u001eJ\u0012\u0010\u001f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J!\u0010 \u001a\u00020\u001b2\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010!R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\""}, d2 = {"Lcom/cloud/tmc/render/DefaultPageCallback;", "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;", "Lcom/cloud/tmc/render/IRegisterPageCallback;", "pageCallback", "Lcom/cloud/tmc/kernel/render/IPageCallback;", "(Lcom/cloud/tmc/kernel/render/IPageCallback;)V", "getPageCallback", "()Lcom/cloud/tmc/kernel/render/IPageCallback;", "setPageCallback", "onPageFinished", "", "webView", "Landroid/webkit/WebView;", "url", "", "onPageStarted", "onReceivedError", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "webResourceRequest", "Landroid/webkit/WebResourceRequest;", "webResourceError", "Landroid/webkit/WebResourceError;", "onReceivedHttpError", "request", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onRenderProcessGone", "", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;", "registerPageCallback", "shouldOverrideUrlLoading", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultPageCallback implements WebviewPageCallback, IRegisterPageCallback {
    private IPageCallback pageCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultPageCallback() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DefaultPageCallback(IPageCallback iPageCallback) {
        this.pageCallback = iPageCallback;
    }

    public /* synthetic */ DefaultPageCallback(IPageCallback iPageCallback, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : iPageCallback);
    }

    public final IPageCallback getPageCallback() {
        return this.pageCallback;
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageFinished(WebView webView, String url) {
        IPageCallback iPageCallback = this.pageCallback;
        if (iPageCallback != null) {
            iPageCallback.onPageFinished(webView, url);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageStarted(WebView webView, String url) {
        IPageCallback iPageCallback = this.pageCallback;
        if (iPageCallback != null) {
            iPageCallback.onPageStarted(webView, url);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedError(WebView view, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        IPageCallback iPageCallback = this.pageCallback;
        if (iPageCallback != null) {
            iPageCallback.onReceivedError(view, webResourceRequest, webResourceError);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        IPageCallback iPageCallback = this.pageCallback;
        if (iPageCallback != null) {
            iPageCallback.onReceivedHttpError(view, request, errorResponse);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public Boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        IPageCallback iPageCallback = this.pageCallback;
        Boolean boolOnRenderProcessGone = iPageCallback != null ? iPageCallback.onRenderProcessGone(view, detail) : null;
        return Boolean.valueOf(boolOnRenderProcessGone == null ? false : boolOnRenderProcessGone.booleanValue());
    }

    @Override // com.cloud.tmc.render.IRegisterPageCallback
    public void registerPageCallback(IPageCallback pageCallback) {
        this.pageCallback = pageCallback;
    }

    public final void setPageCallback(IPageCallback iPageCallback) {
        this.pageCallback = iPageCallback;
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public Boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        IPageCallback iPageCallback = this.pageCallback;
        Boolean boolShouldOverrideUrlLoading = iPageCallback != null ? iPageCallback.shouldOverrideUrlLoading(view, request) : null;
        return Boolean.valueOf(boolShouldOverrideUrlLoading == null ? false : boolShouldOverrideUrlLoading.booleanValue());
    }
}
