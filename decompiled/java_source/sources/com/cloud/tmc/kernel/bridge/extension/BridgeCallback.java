package com.cloud.tmc.kernel.bridge.extension;

import com.google.gson.JsonObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public interface BridgeCallback {
    void close();

    void close(JsonObject jsonObject);

    String getCallbackId();

    void sendBridgeResponse(BridgeResponse bridgeResponse);

    void sendFailMapResponse();

    void sendFailResponse();

    void sendFailResponse(JsonObject jsonObject);

    void sendFailResponse(HashMap<String, Object> map);

    void sendJSONResponse(JsonObject jsonObject);

    void sendJSONResponse(JsonObject jsonObject, boolean z10);

    void sendMapResponse(HashMap<String, Object> map);

    void sendSuccessMapResponse();

    void sendSuccessResponse();

    void sendSuccessResponse(JsonObject jsonObject);

    void sendSuccessResponse(HashMap<String, Object> map);
}
