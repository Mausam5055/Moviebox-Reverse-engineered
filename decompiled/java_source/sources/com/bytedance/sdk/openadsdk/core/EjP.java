package com.bytedance.sdk.openadsdk.core;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, int i11, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, str, "convert_track", jSONObject);
    }
}
