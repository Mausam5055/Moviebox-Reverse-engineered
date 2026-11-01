package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J \u0010\b\u001a\u00020\u00042\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007J \u0010\r\u001a\u00020\u00042\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/integration/bridge/InnerWarmupBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "onFinalized", "", "onInitialized", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "warmupRender", "app", "Lcom/cloud/tmc/integration/structure/App;", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "warmupWorker", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InnerWarmupBridge implements BridgeExtension {
    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void warmupRender(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else if (((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).createRender(false)) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void warmupWorker(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
            }
        } else if (((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).createWorker(false)) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }
}
