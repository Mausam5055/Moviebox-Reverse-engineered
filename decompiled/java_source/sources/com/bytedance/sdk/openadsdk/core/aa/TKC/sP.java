package com.bytedance.sdk.openadsdk.core.aa.TKC;

import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static void Sj(sU sUVar) {
        if (uP.sP(sUVar)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_start", (JSONObject) null);
        }
    }

    public static void Sj(sU sUVar, int i11, String str) {
        if (sUVar != null) {
            if (uP.TKC(sUVar) || uP.sP(sUVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i11);
                    jSONObject.put("error_reason", str);
                } catch (JSONException e11) {
                    com.bytedance.sdk.component.utils.sU.Sj("PlayableEvent", "onFail json error", e11);
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_fail", jSONObject);
            }
        }
    }

    public static void Sj(sU sUVar, long j11, long j12) {
        if (sUVar != null) {
            if (uP.TKC(sUVar) || uP.sP(sUVar)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("loadzip_success_time", j11);
                    jSONObject.put("unzip_success_time", j12);
                } catch (JSONException e11) {
                    com.bytedance.sdk.component.utils.sU.Sj("PlayableEvent", "onSuccess json error", e11);
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, "playable_preload", "preload_success", jSONObject);
            }
        }
    }
}
