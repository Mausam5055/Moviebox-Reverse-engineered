package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class LqL {
    private String EjP;
    private JSONObject HiB;
    private String Sj;
    private String TKC;
    private String sP;

    public static LqL Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        LqL lqL = new LqL();
        lqL.Sj = jSONObject.optString("id");
        lqL.EjP = jSONObject.optString("data");
        lqL.TKC = jSONObject.optString("url");
        lqL.sP = jSONObject.optString("md5");
        lqL.HiB = jSONObject.optJSONObject("custom_components");
        return lqL;
    }

    public String EjP() {
        return this.EjP;
    }

    public JSONObject HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.Sj;
    }

    public String TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public JSONObject vS() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.Sj);
            jSONObject.put("md5", this.sP);
            jSONObject.put("url", this.TKC);
            jSONObject.put("data", this.EjP);
            jSONObject.put("custom_components", this.HiB);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
