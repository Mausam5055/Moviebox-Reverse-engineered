package com.cloud.tmc.render.bridge;

import android.util.Log;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebView;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.bridge.SendToRenderCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.BuildConfig;
import com.cloud.tmc.render.system.SystemWebView;
import com.cloud.tmc.render.utils.WebViewExtensionKt;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0017J\u001c\u0010\u0015\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0014\u0010\u0019\u001a\u0004\u0018\u00010\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0016R:\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/render/bridge/MessageChannelBridge;", "Lcom/cloud/tmc/kernel/bridge/RenderBridge;", "webView", "Landroid/webkit/WebView;", "(Landroid/webkit/WebView;)V", "callbackMap", "Ljava/util/HashMap;", "", "Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;", "Lkotlin/collections/HashMap;", "getCallbackMap", "()Ljava/util/HashMap;", "setCallbackMap", "(Ljava/util/HashMap;)V", "getWebView", "()Landroid/webkit/WebView;", "sendToRender", "", "bridgeContext", "Lcom/cloud/tmc/kernel/bridge/RenderCallContext;", "callback", "setGlobalObject", "key", "jsonObject", "Lcom/google/gson/JsonObject;", "takeCallback", "id", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MessageChannelBridge implements RenderBridge {
    private HashMap<String, SendToRenderCallback> callbackMap;
    private final WebView webView;

    public MessageChannelBridge(WebView webView) {
        Intrinsics.h(webView, "webView");
        this.webView = webView;
        this.callbackMap = new HashMap<>();
    }

    public final HashMap<String, SendToRenderCallback> getCallbackMap() {
        return this.callbackMap;
    }

    public final WebView getWebView() {
        return this.webView;
    }

    @Override // com.cloud.tmc.kernel.bridge.RenderBridge
    public void sendToRender(RenderCallContext bridgeContext, SendToRenderCallback callback) {
        WebMessagePort port0;
        TmcLogger.d("subPkg", "sendToRender mc");
        if (bridgeContext != null) {
            bridgeContext.getParam().addProperty(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
            String str = "onMessage(" + bridgeContext.getParam() + ')';
            TraceLog.d(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "nativeSendToRender MessageChannelBridge= " + str);
            try {
                WebView webView = this.webView;
                SystemWebView systemWebView = webView instanceof SystemWebView ? (SystemWebView) webView : null;
                if (systemWebView == null || (port0 = systemWebView.getPort0()) == null) {
                    return;
                }
                port0.postMessage(new WebMessage(str));
            } catch (Exception e11) {
                Log.e(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "port post message: " + e11);
            }
        }
    }

    public final void setCallbackMap(HashMap<String, SendToRenderCallback> map) {
        Intrinsics.h(map, "<set-?>");
        this.callbackMap = map;
    }

    @Override // com.cloud.tmc.kernel.bridge.RenderBridge
    public void setGlobalObject(String key, JsonObject jsonObject) {
        WebViewExtensionKt.executeJavascript$default(this.webView, "window." + key + " = " + jsonObject + ';', null, 2, null);
    }

    @Override // com.cloud.tmc.kernel.bridge.RenderBridge
    public SendToRenderCallback takeCallback(String id2) {
        return this.callbackMap.get(id2);
    }
}
