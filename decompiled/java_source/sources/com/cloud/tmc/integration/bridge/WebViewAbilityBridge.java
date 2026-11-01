package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.WebViewStore;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u001e\u0010\u000b\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0016¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/bridge/WebViewAbilityBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "offWebViewDownloadUrl", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "onFinalized", "onInitialized", "onWebViewDownloadUrl", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebViewAbilityBridge implements BridgeExtension {
    private static final String ERROR_MSG_W10001 = "Parameter error: W10001";
    private static final String TAG = "WebViewAbilityBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void offWebViewDownloadUrl(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        HashMap<String, BridgeCallback> onDownloads;
        BridgeCallback bridgeCallbackRemove;
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_W10001);
            callback.sendFailResponse(jsonObject);
        } else {
            WebViewStore webViewStore = (WebViewStore) app.getData(WebViewStore.class);
            if (webViewStore != null && (onDownloads = webViewStore.getOnDownloads()) != null && (bridgeCallbackRemove = onDownloads.remove(app.getAppId())) != null) {
                bridgeCallbackRemove.close();
            }
            callback.sendSuccessResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void onWebViewDownloadUrl(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app == null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_W10001);
            callback.sendFailResponse(jsonObject);
            return;
        }
        WebViewStore webViewStore = (WebViewStore) app.getData(WebViewStore.class, true);
        BridgeCallback bridgeCallback = webViewStore.getOnDownloads().get(app.getAppId());
        if (bridgeCallback != null) {
            bridgeCallback.close();
        }
        HashMap<String, BridgeCallback> onDownloads = webViewStore.getOnDownloads();
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        onDownloads.put(appId, callback);
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }
}
