package com.bytedance.sdk.openadsdk.Zq.TKC;

import com.cloud.tmc.integration.net.UrlKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {

    public static class Sj {
        public final String Sj;
        public final JSONObject sP;

        public Sj(String str, JSONObject jSONObject) {
            this.Sj = str;
            this.sP = jSONObject;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("device_info");
            if (jSONObjectOptJSONObject != null) {
                try {
                    jSONObjectOptJSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
                    jSONObject.put("device_info", jSONObjectOptJSONObject);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static sP Sj() {
        return EjP.Sj();
    }
}
