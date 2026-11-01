package com.cloud.tmc.kernel.bridge;

import com.google.gson.JsonObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public interface SendToNativeCallback {
    public static final String KEY_CODE = "error";
    public static final String KEY_MESSAGE = "errorMessage";

    void onCallback(JsonObject jsonObject, boolean z10, boolean z11);

    void onCallback(HashMap<String, Object> map, boolean z10, boolean z11);
}
