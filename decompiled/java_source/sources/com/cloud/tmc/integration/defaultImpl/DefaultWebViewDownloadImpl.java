package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.WebViewStore;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.render.IWebViewDownloadProxy;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/DefaultWebViewDownloadImpl;", "Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;", "()V", "dispatchDownloadEvent", "", "node", "Lcom/cloud/tmc/kernel/node/Node;", "url", "", "userAgent", "contentDisposition", "mimetype", "contentLength", "", "dispatchDownloadFailEvent", "data", "Lcom/google/gson/JsonObject;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultWebViewDownloadImpl implements IWebViewDownloadProxy {
    private static final String TAG = "DefaultWebViewDownloadI";

    @Override // com.cloud.tmc.kernel.proxy.render.IWebViewDownloadProxy
    public void dispatchDownloadEvent(Node node, String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
        HashMap<String, BridgeCallback> onDownloads;
        BridgeCallback bridgeCallback;
        Intrinsics.h(node, "node");
        try {
            TmcLogger.d(TAG, "dispatchDownloadEvent: 准备发送url: " + url);
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            App app = pageNode != null ? pageNode.getApp() : null;
            WebViewStore webViewStore = app != null ? (WebViewStore) app.getData(WebViewStore.class) : null;
            if (webViewStore != null && (onDownloads = webViewStore.getOnDownloads()) != null && (bridgeCallback = onDownloads.get(app.getAppId())) != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("url", url);
                jsonObject.addProperty("userAgent", userAgent);
                jsonObject.addProperty("contentDisposition", contentDisposition);
                jsonObject.addProperty("mimetype", mimetype);
                jsonObject.addProperty("contentLength", Long.valueOf(contentLength));
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
            TmcLogger.d(TAG, "dispatchDownloadEvent: 分发 url 完成。 url: " + url);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to dispatch download event", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.render.IWebViewDownloadProxy
    public void dispatchDownloadFailEvent(Node node, JsonObject data) {
        HashMap<String, BridgeCallback> onDownloads;
        BridgeCallback bridgeCallback;
        Intrinsics.h(node, "node");
        Intrinsics.h(data, "data");
        try {
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            App app = pageNode != null ? pageNode.getApp() : null;
            WebViewStore webViewStore = app != null ? (WebViewStore) app.getData(WebViewStore.class) : null;
            if (webViewStore != null && (onDownloads = webViewStore.getOnDownloads()) != null && (bridgeCallback = onDownloads.get(app.getAppId())) != null) {
                bridgeCallback.sendFailResponse(data);
            }
            TmcLogger.d(TAG, "dispatchDownloadEvent: 分发 fail 完成。");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to dispatch download event", th2);
        }
    }
}
