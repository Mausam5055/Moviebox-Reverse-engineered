package com.cloud.tmc.integration.bridge;

import android.content.ClipData;
import android.content.ClipboardManager;
import com.cloud.tmc.integration.structure.App;
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
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public class SetClipboardBridge implements BridgeExtension {
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
    @ThreadType(ExecutorType.UI)
    public void setClipboard(@BindingParam(name = {MimeTypes.BASE_TYPE_TEXT}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((ClipboardManager) app.getAppContext().getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, str));
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(new JsonObject());
            }
        }
    }
}
