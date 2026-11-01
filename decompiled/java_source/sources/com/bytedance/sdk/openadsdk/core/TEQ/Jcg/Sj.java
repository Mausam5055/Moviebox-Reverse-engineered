package com.bytedance.sdk.openadsdk.core.TEQ.Jcg;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private String EjP;
    private String HiB;
    private String Sj;
    private String TKC;
    private String sP;

    public Sj EjP(String str) {
        this.EjP = str;
        return this;
    }

    public String EjP() {
        return this.EjP;
    }

    public Sj HiB(String str) {
        this.HiB = str;
        return this;
    }

    public String HiB() {
        return this.HiB;
    }

    public Sj Sj(String str) {
        this.Sj = str;
        return this;
    }

    public String Sj() {
        return this.Sj;
    }

    public JSONObject Sj(Sj sj2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.Sj);
            jSONObject.put("md5", this.sP);
            jSONObject.put("url", this.TKC);
            if (sj2 != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", sj2.Sj());
                jSONObject2.put("md5", sj2.sP());
                jSONObject2.put("url", sj2.TKC());
                jSONObject.put("overlay", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public Sj TKC(String str) {
        this.TKC = str;
        return this;
    }

    public String TKC() {
        return this.TKC;
    }

    public Sj sP(String str) {
        this.sP = str;
        return this;
    }

    public String sP() {
        return this.sP;
    }
}
