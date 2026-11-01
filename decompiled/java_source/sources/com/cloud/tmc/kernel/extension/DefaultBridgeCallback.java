package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.BridgeResponse;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultBridgeCallback implements BridgeCallback {
    private static final String TAG = "TmcEngine:DefaultBridgeCallback";
    private final boolean isSticky;
    private final BridgeResponseHelper responseHelper;

    public DefaultBridgeCallback(BridgeResponseHelper bridgeResponseHelper) {
        this(bridgeResponseHelper, false);
    }

    public DefaultBridgeCallback(BridgeResponseHelper bridgeResponseHelper, boolean z10) {
        this.isSticky = z10;
        this.responseHelper = bridgeResponseHelper;
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void close() {
        close(new JsonObject());
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void close(JsonObject jsonObject) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultCloseKept(jsonObject);
        }
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public String getCallbackId() {
        return this.responseHelper.getCallbackId();
    }

    public BridgeResponseHelper getResponseHelper() {
        return this.responseHelper;
    }

    public boolean isSticky() {
        return this.isSticky;
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendBridgeResponse(BridgeResponse bridgeResponse) {
        if (bridgeResponse == null) {
            bridgeResponse = BridgeResponse.SUCCESS;
        }
        if (bridgeResponse instanceof BridgeResponse.Error) {
            BridgeResponse.Error error = (BridgeResponse.Error) bridgeResponse;
            this.responseHelper.sendError(error.getErrorCode(), error.getErrorMessage());
            return;
        }
        JsonObject jsonObject = bridgeResponse.get();
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendFailMapResponse() {
        sendFailResponse(new HashMap<>());
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendFailResponse() {
        sendFailResponse(new JsonObject());
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendFailResponse(JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "false");
        sendJSONResponse(jsonObject);
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendFailResponse(HashMap<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "false");
        sendMapResponse(map);
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendJSONResponse(JsonObject jsonObject) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendJSONResponse(JsonObject jsonObject, boolean z10) {
        if (z10) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendMapResponse(HashMap<String, Object> map) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeMapResultWithCallbackKept(map);
        } else {
            this.responseHelper.sendBridgeMapResult(map);
        }
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendSuccessMapResponse() {
        sendSuccessResponse(new HashMap<>());
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendSuccessResponse() {
        sendSuccessResponse(new JsonObject());
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendSuccessResponse(JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "true");
        sendJSONResponse(jsonObject);
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.BridgeCallback
    public void sendSuccessResponse(HashMap<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "true");
        sendMapResponse(map);
    }
}
