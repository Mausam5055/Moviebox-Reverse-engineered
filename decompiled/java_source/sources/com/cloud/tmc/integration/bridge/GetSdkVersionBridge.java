package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class GetSdkVersionBridge implements BridgeExtension {
    private static final String TAG = "GetSdkVersionBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getSdkVersion(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            AppLoadResult appLoadResult = (AppLoadResult) BundleUtils.getParcelable(app.getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("SDKVersion", appLoadResult.getVersion());
            bridgeCallback.sendSuccessResponse(jsonObject);
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
}
