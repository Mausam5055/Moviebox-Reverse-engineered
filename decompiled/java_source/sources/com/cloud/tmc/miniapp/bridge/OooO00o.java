package com.cloud.tmc.miniapp.bridge;

import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class OooO00o {
    public static void OooO00o(String str, String str2, BridgeCallback bridgeCallback) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(str, str2);
        bridgeCallback.sendFailResponse(jsonObject);
    }
}
