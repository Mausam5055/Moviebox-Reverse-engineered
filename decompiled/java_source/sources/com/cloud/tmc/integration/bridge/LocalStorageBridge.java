package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.point.IIDEDispatcherPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class LocalStorageBridge implements BridgeExtension {
    private static final String TAG = "LocalStorageBridge";

    private JsonObject getJsonResponse(@NonNull String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("data", str);
        return jsonObject;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void clearStorage(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        IIDEDispatcherPoint iIDEDispatcherPoint;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(app.getAppContext().getContext(), app.getAppId() + "_web");
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
        if (app.getAppModel() != null && app.getAppModel().getDevMode() == 2 && (iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(app).create()) != null) {
            iIDEDispatcherPoint.sendMsg("DOMStorage.domStorageItemsCleared", new JsonObject());
        }
        FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getStorage(@BindingParam(name = {"key"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        if (appContext.getContext() == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(app.getAppContext().getContext(), app.getAppId() + "_web", str);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(getJsonResponse(string));
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getStorageInfo(@BindingParam(name = {"key"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
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
    public void removeStorage(@BindingParam(name = {"key"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        IIDEDispatcherPoint iIDEDispatcherPoint;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(app.getAppContext().getContext(), app.getAppId() + "_web", str);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
        if (app.getAppModel() != null && app.getAppModel().getDevMode() == 2 && (iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(app).create()) != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("key", str);
            iIDEDispatcherPoint.sendMsg("DOMStorage.domStorageItemRemoved", jsonObject);
        }
        FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void setStorage(@BindingParam(name = {"key"}) String str, @BindingParam(name = {"data"}) String str2, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        char c11;
        IIDEDispatcherPoint iIDEDispatcherPoint;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        FileUtil fileUtil = FileUtil.INSTANCE;
        if (fileUtil.getMiniAppFileStatus(app)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Data storage failed because of insufficient storage space: S001").build());
            }
            fileUtil.checkMiniAppFileSizeStatus(app);
            return;
        }
        String str3 = "DOMStorage.domStorageItemAdded";
        if (app.getAppModel() == null || app.getAppModel().getDevMode() != 2) {
            c11 = 0;
        } else {
            KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
            Context context = app.getAppContext().getContext();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(app.getAppId());
            sb2.append("_web");
            str3 = TextUtils.isEmpty(kVStorageProxy.getString(context, sb2.toString(), str)) ? "DOMStorage.domStorageItemAdded" : "DOMStorage.domStorageItemUpdated";
            c11 = 2;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(app.getAppContext().getContext(), app.getAppId() + "_web", str, str2);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
        if (c11 == 2 && (iIDEDispatcherPoint = (IIDEDispatcherPoint) ExtensionPoint.as(IIDEDispatcherPoint.class).node(app).create()) != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("key", str);
            jsonObject.addProperty(AppMeasurementSdk.ConditionalUserProperty.VALUE, str2);
            iIDEDispatcherPoint.sendMsg(str3, jsonObject);
        }
        fileUtil.checkMiniAppFileSizeStatus(app);
    }
}
