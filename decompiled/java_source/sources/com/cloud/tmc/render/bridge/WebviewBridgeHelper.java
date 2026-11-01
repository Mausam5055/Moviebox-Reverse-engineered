package com.cloud.tmc.render.bridge;

import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0011\u001a\u00020\u0012H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;", "", "webView", "Lcom/cloud/tmc/kernel/render/IWebView;", "(Lcom/cloud/tmc/kernel/render/IWebView;)V", "getWebView", "()Lcom/cloud/tmc/kernel/render/IWebView;", "getRenderBridge", "Lcom/cloud/tmc/kernel/bridge/RenderBridge;", "Landroid/webkit/WebView;", "registerMessageChannel", "", "sendConsole", "pageEventCallback", "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;", NotificationCompat.CATEGORY_MESSAGE, "", "useMessageChannel", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebviewBridgeHelper {
    private final IWebView webView;

    public WebviewBridgeHelper(IWebView webView) {
        Intrinsics.h(webView, "webView");
        this.webView = webView;
    }

    private final boolean useMessageChannel() {
        try {
            String frameworkVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion();
            return ((Intrinsics.c(frameworkVersion, "1.0.0") || Intrinsics.c(frameworkVersion, "0.1.0")) || this.webView.getMiniAppType() == MiniAppType.SHELL.getType() || this.webView.getMiniAppType() == MiniAppType.SHELL_GAME.getType()) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final RenderBridge getRenderBridge(WebView webView) {
        Intrinsics.h(webView, "webView");
        return useMessageChannel() ? new MessageChannelBridge(webView) : new DefaultRenderBridge(webView);
    }

    public final IWebView getWebView() {
        return this.webView;
    }

    public final void registerMessageChannel() {
        if (useMessageChannel()) {
            this.webView.registerMessageChannel();
        }
    }

    public final void sendConsole(WebviewPageEventCallback pageEventCallback, String msg) {
        Intrinsics.h(msg, "msg");
        if (!useMessageChannel()) {
            if (pageEventCallback != null) {
                pageEventCallback.onConsoleMessage(msg);
            }
        } else if (StringsKt.c0(msg, "DispatchEvent", false, 2, null) && StringsKt.c0(msg, EventConstants.EVENT_RENDER_ON_MSG_READY, false, 2, null) && pageEventCallback != null) {
            pageEventCallback.onConsoleMessage(msg);
        }
    }
}
