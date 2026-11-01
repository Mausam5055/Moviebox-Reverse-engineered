package com.cloud.tmc.kernel.bridge;

import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface RenderBridge {
    void sendToRender(RenderCallContext renderCallContext, SendToRenderCallback sendToRenderCallback);

    void setGlobalObject(String str, JsonObject jsonObject);

    SendToRenderCallback takeCallback(String str);
}
