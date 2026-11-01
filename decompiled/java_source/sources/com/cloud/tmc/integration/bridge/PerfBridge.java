package com.cloud.tmc.integration.bridge;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.MiniAppAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class PerfBridge implements BridgeExtension {
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

    @ActionFilter("")
    @ThreadType(ExecutorType.NETWORK)
    public void record(@BindingNode(App.class) App app, @BindingParam(name = {"module"}) String str, @BindingParam(name = {"enumType"}) String str2, @BindingParam(name = {NotificationCompat.CATEGORY_MESSAGE}) String str3) {
        try {
            if ("point".equals(str)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app == null ? null : app.getAppId(), (IPerformanceAnalyseType) Enum.valueOf(PointAnalyseType.class, str2), str3);
            }
        } catch (Exception e11) {
            TmcLogger.e("record error", e11);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void reportEvent(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingParam(name = {EventConstants.KEY_EVENT_NAME}) String str, @BindingParam(name = {"data"}) JsonObject jsonObject, @BindingCallback BridgeCallback bridgeCallback) {
        if (page == null || str == null || str.isEmpty()) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(app == null ? null : app.getAppId(), new MiniAppAnalyseType(str, page.getPagePath(), jsonObject), "");
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
            }
        }
    }
}
