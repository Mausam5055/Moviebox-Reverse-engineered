package com.cloud.tmc.render.system;

import android.content.Context;
import android.view.View;
import android.webkit.WebChromeClient;
import com.cloud.tmc.kernel.render.CustomViewVisiableCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;", "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;", "context", "Landroid/content/Context;", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "webviewBridgeHelper", "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "customViewCallback", "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;", "(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getPageEventCallback", "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", "setPageEventCallback", "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V", "getWebviewBridgeHelper", "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "onHideCustomView", "", "onShowCustomView", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "callback", "Landroid/webkit/WebChromeClient$CustomViewCallback;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SupportFullScreenWebChromeClient extends DefaultWebChromeClient {
    private Context context;
    private CustomViewVisiableCallback customViewCallback;
    private WebviewPageEventCallback pageEventCallback;
    private final WebviewBridgeHelper webviewBridgeHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportFullScreenWebChromeClient(Context context, WebviewPageEventCallback webviewPageEventCallback, WebviewBridgeHelper webviewBridgeHelper, CustomViewVisiableCallback customViewVisiableCallback) {
        super(context, webviewPageEventCallback, webviewBridgeHelper);
        Intrinsics.h(context, "context");
        this.context = context;
        this.pageEventCallback = webviewPageEventCallback;
        this.webviewBridgeHelper = webviewBridgeHelper;
        this.customViewCallback = customViewVisiableCallback;
    }

    public /* synthetic */ SupportFullScreenWebChromeClient(Context context, WebviewPageEventCallback webviewPageEventCallback, WebviewBridgeHelper webviewBridgeHelper, CustomViewVisiableCallback customViewVisiableCallback, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : webviewPageEventCallback, (i11 & 4) != 0 ? null : webviewBridgeHelper, customViewVisiableCallback);
    }

    @Override // com.cloud.tmc.render.system.DefaultWebChromeClient
    public Context getContext() {
        return this.context;
    }

    @Override // com.cloud.tmc.render.system.DefaultWebChromeClient
    public WebviewPageEventCallback getPageEventCallback() {
        return this.pageEventCallback;
    }

    @Override // com.cloud.tmc.render.system.DefaultWebChromeClient
    public WebviewBridgeHelper getWebviewBridgeHelper() {
        return this.webviewBridgeHelper;
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        CustomViewVisiableCallback customViewVisiableCallback = this.customViewCallback;
        if (customViewVisiableCallback != null) {
            customViewVisiableCallback.onHideCustomView();
        }
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        CustomViewVisiableCallback customViewVisiableCallback = this.customViewCallback;
        if (customViewVisiableCallback != null) {
            customViewVisiableCallback.onShowCustomView(view, callback);
        }
        super.onShowCustomView(view, callback);
    }

    @Override // com.cloud.tmc.render.system.DefaultWebChromeClient
    public void setContext(Context context) {
        Intrinsics.h(context, "<set-?>");
        this.context = context;
    }

    @Override // com.cloud.tmc.render.system.DefaultWebChromeClient
    public void setPageEventCallback(WebviewPageEventCallback webviewPageEventCallback) {
        this.pageEventCallback = webviewPageEventCallback;
    }
}
