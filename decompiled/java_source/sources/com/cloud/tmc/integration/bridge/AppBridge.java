package com.cloud.tmc.integration.bridge;

import android.content.Context;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001c\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/bridge/AppBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "getAppInfo", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "appId", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getMiniAppInfo", "onFinalized", "onInitialized", "permit", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppBridge implements BridgeExtension {
    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getAppInfo(@BindingNode(App.class) App app, @BindingParam({"appId"}) String appId, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Context context;
        Intrinsics.h(app, "app");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(callback, "callback");
        try {
            JsonObject jsonObject = new JsonObject();
            AppContext appContext = app.getAppContext();
            if (appContext == null || (context = appContext.getContext()) == null) {
                unit = null;
            } else {
                if (appId.length() == 0) {
                    String appId2 = app.getAppId();
                    if (appId2 == null) {
                        appId2 = "";
                    } else {
                        Intrinsics.g(appId2, "app.appId ?: \"\"");
                    }
                    appId = appId2;
                }
                jsonObject.addProperty(TmcConstants.EXTRA_APPINFO, ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, appId, appId + "_used"));
                callback.sendSuccessResponse(jsonObject);
                unit = Unit.f67061a;
            }
            if (unit == null) {
                callback.sendFailMapResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e("getAppInfo error", th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public final void getMiniAppInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        String name;
        Integer popupStyle;
        Intrinsics.h(app, "app");
        Intrinsics.h(callback, "callback");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("appId", app.getAppId());
        jsonObject.addProperty(TmcStartParams.KEY_APP_VERSION, app.getAppVersion());
        AppModel appModel = app.getAppModel();
        if (appModel == null || (name = appModel.getName()) == null) {
            name = "";
        }
        jsonObject.addProperty(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, name);
        AppModel appModel2 = app.getAppModel();
        jsonObject.addProperty("popupStyle", Integer.valueOf((appModel2 == null || (popupStyle = appModel2.getPopupStyle()) == null) ? 0 : popupStyle.intValue()));
        AppModel appModel3 = app.getAppModel();
        jsonObject.addProperty("appCategoryType", String.valueOf(appModel3 != null ? Integer.valueOf(appModel3.getAppinfoCategoryType()) : null));
        callback.sendSuccessResponse(jsonObject);
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public /* bridge */ /* synthetic */ Permission permit() {
        return (Permission) m235permit();
    }

    /* JADX INFO: renamed from: permit, reason: collision with other method in class */
    public Void m235permit() {
        return null;
    }
}
