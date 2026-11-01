package com.cloud.tmc.kernel.helper;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.bridge.SendToNativeCallback;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.KernelUtils;
import com.google.gson.JsonObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeResponseHelper {
    private String callbackId;
    private String mAction;

    @Nullable
    private SendToNativeCallback mSendToNativeCallback;
    private Extension mTargetExtension;

    public BridgeResponseHelper(@Nullable SendToNativeCallback sendToNativeCallback) {
        this.mSendToNativeCallback = sendToNativeCallback;
    }

    protected void executeSendBack(JsonObject jsonObject, boolean z10) {
        executeSendBack(jsonObject, z10, false);
    }

    protected void executeSendBack(JsonObject jsonObject, boolean z10, boolean z11) {
        Extension extension;
        if (this.mSendToNativeCallback != null) {
            if (KernelUtils.isDebug() && (extension = this.mTargetExtension) != null) {
                jsonObject.addProperty("ext", extension.getClass().getName());
            }
            this.mSendToNativeCallback.onCallback(jsonObject, z10, z11);
        }
    }

    protected void executeSendMapBack(HashMap<String, Object> map, boolean z10) {
        executeSendMapBack(map, z10, false);
    }

    protected void executeSendMapBack(HashMap<String, Object> map, boolean z10, boolean z11) {
        Extension extension;
        if (this.mSendToNativeCallback != null) {
            if (KernelUtils.isDebug() && (extension = this.mTargetExtension) != null) {
                map.put("ext", extension.getClass().getName());
            }
            this.mSendToNativeCallback.onCallback(map, z10, z11);
        }
    }

    public String getCallbackId() {
        return this.callbackId;
    }

    public SendToNativeCallback getInnerBridgeResponse() {
        return this.mSendToNativeCallback;
    }

    public void sendBridgeMapResult(HashMap<String, Object> map) {
        executeSendMapBack(map, false);
    }

    public void sendBridgeMapResultWithCallbackKept(HashMap<String, Object> map) {
        executeSendMapBack(map, true);
    }

    public void sendBridgeResult(JsonObject jsonObject) {
        executeSendBack(jsonObject, false);
    }

    public void sendBridgeResult(String str, JsonObject jsonObject) {
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add(str, jsonObject);
        executeSendBack(jsonObject2, false);
    }

    public void sendBridgeResultCloseKept(JsonObject jsonObject) {
        executeSendBack(jsonObject, false, true);
    }

    public void sendBridgeResultWithCallbackKept(JsonObject jsonObject) {
        executeSendBack(jsonObject, true);
    }

    public void sendBridgeResultWithCallbackKept(String str, JsonObject jsonObject) {
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add(str, jsonObject);
        executeSendBack(jsonObject2, true);
    }

    public void sendError(int i11, String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("message", str);
        jsonObject.addProperty("errMsg", str);
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, Integer.valueOf(i11));
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "false");
        executeSendBack(jsonObject, false);
    }

    public void sendNoRigHtToInvoke() {
        sendError(4, "无权调用");
    }

    public void sendNoRigHtToInvoke4NewJSAPIPermission() {
        sendError(4, "new jsapi permission deny");
    }

    public void sendNotFound() {
        sendError(1, "not implemented");
    }

    public void sendNotGrantPermission() {
        sendError(5, "获取授权失败");
    }

    public void sendSuccess() {
        sendBridgeResult(new JsonObject());
    }

    public void setCallbackId(String str) {
        this.callbackId = str;
    }

    public void setTargetExtension(Extension extension) {
        this.mTargetExtension = extension;
    }
}
