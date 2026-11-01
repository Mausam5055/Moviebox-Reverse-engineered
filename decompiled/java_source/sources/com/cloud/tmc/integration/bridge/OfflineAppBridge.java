package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.proxy.OfflineAppProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/bridge/OfflineAppBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "getOfflineApps", "", "isCache", "", "timeout", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "onFinalized", "onInitialized", "permit", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OfflineAppBridge implements BridgeExtension {
    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getOfflineApps(@BindingParam({"isCache"}) Boolean isCache, @BindingParam({"timeout"}) Long timeout, @BindingNode(App.class) App app, @BindingCallback final BridgeCallback callback) {
        boolean zBooleanValue;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        if (isCache != null) {
            try {
                zBooleanValue = isCache.booleanValue();
            } catch (Throwable th2) {
                callbackFail(callback, String.valueOf(th2.getMessage()), Boolean.FALSE);
                return;
            }
        } else {
            zBooleanValue = false;
        }
        final JsonObject jsonObject = new JsonObject();
        ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).getOfflineAppsForBridgeApi(zBooleanValue, new OfflineAppProxy.Callback() { // from class: com.cloud.tmc.integration.bridge.OfflineAppBridge.getOfflineApps.1
            @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy.Callback
            public void onSuccess(String data) {
                Intrinsics.h(data, "data");
                jsonObject.addProperty("data", data);
                callback.sendSuccessResponse(jsonObject);
            }
        });
        new Timer().schedule(new TimerTask() { // from class: com.cloud.tmc.integration.bridge.OfflineAppBridge$getOfflineApps$timerTask$1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.this$0.callbackFail(callback, "timeout", Boolean.FALSE);
            }
        }, timeout != null ? timeout.longValue() : 1000L);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public /* bridge */ /* synthetic */ Permission permit() {
        return (Permission) m237permit();
    }

    /* JADX INFO: renamed from: permit, reason: collision with other method in class */
    public Void m237permit() {
        return null;
    }
}
