package com.cloud.tmc.integration.bridge;

import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
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
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenBridge implements BridgeExtension {
    private JsonObject getJsonObject(@NonNull float f11) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("screenBrightness", Float.valueOf(f11));
        return jsonObject;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getScreenBrightness(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (page == null || page.getPageContext() == null || page.getPageContext().getActivity() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        float f11 = page.getPageContext().getActivity().getWindow().getAttributes().screenBrightness;
        if (f11 != -1.0f) {
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(getJsonObject(f11));
                return;
            }
            return;
        }
        try {
            float f12 = Settings.System.getInt(app.getAppContext().getContext().getContentResolver(), "screen_brightness") / 255.0f;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(getJsonObject(f12));
            }
        } catch (Exception unused) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
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
    @ThreadType(ExecutorType.UI)
    public void setScreenBrightness(@BindingParam(name = {"screenBrightness"}) float f11, @BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (page == null || page.getPageContext() == null || page.getPageContext().getActivity() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (f11 != -1.0f && (Math.min(0.0f, f11) != 0.0f || Math.max(1.0f, f11) != 1.0f)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            Window window = page.getPageContext().getActivity().getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.screenBrightness = f11;
            window.setAttributes(attributes);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Exception unused) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }
}
