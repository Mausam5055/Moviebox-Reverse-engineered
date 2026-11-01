package com.cloud.tmc.integration.bridge;

import androidx.annotation.NonNull;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.PrivacyUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class FrameworkStorageBridge implements BridgeExtension {
    public static final String FRAMEWORK_STORAGE_KEY = "100000_web";
    private static final String TAG = "FrameworkStorageBridge";

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
    public void clearFrameworkStorage(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(app.getAppContext().getContext(), FRAMEWORK_STORAGE_KEY);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void getFrameworkStorage(@BindingParam(name = {"key"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
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
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(app.getAppContext().getContext(), FRAMEWORK_STORAGE_KEY, str);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(getJsonResponse(string));
        }
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
    public void removeFrameworkStorage(@BindingParam(name = {"key"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(app.getAppContext().getContext(), FRAMEWORK_STORAGE_KEY, str);
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void setFrameworkStorage(@BindingParam(name = {"key"}) String str, @BindingParam(name = {"data"}) String str2, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(app.getAppContext().getContext(), FRAMEWORK_STORAGE_KEY, str, str2);
        if (TmcConstants.KEY_FW_PACKAGE_PRIVACY_AGREEMENT.equals(str) && "true".equals(str2)) {
            PrivacyUtils.INSTANCE.tryUpdateNewUserToOldUser(app.getAppContext().getContext());
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
    }
}
