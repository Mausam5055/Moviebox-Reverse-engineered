package com.cloud.tmc.kernel.extension;

import android.text.TextUtils;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static void a(BridgeExtension bridgeExtension, BridgeCallback bridgeCallback, String str, Boolean bool) {
        if (bridgeCallback != null) {
            try {
                JsonObject jsonObject = new JsonObject();
                if (TextUtils.isEmpty(str)) {
                    str = "";
                }
                jsonObject.addProperty("failMsg", str);
                TmcLogger.e("BridgeAPI", bridgeExtension.getClass().getSimpleName() + ", call api fail:" + str);
                bridgeCallback.sendFailResponse(jsonObject);
                if (bool.booleanValue()) {
                    bridgeCallback.close();
                }
            } catch (Throwable th2) {
                TmcLogger.d("BridgeAPI", "callbackFail error:" + th2.getMessage());
            }
        }
    }
}
