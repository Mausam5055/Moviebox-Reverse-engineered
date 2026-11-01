package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class zR {
    private String Sj;
    private int TKC;
    private int sP;

    public static zR Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        zR zRVar = new zR();
        try {
            zRVar.Sj(jSONObject.optString("endcard_n_url", ""));
            zRVar.Sj(Math.max(jSONObject.optInt("endcard_show_time", 0), 0));
            zRVar.sP(jSONObject.optInt("multi_rv_skip_time", -1));
        } catch (Throwable unused) {
        }
        return zRVar;
    }

    public int Sj() {
        return this.sP;
    }

    public void Sj(int i11) {
        this.sP = i11;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public JSONObject TKC() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.Sj)) {
                jSONObject.put("endcard_n_url", this.Sj);
            }
            int i11 = this.sP;
            if (i11 != -1) {
                jSONObject.put("endcard_show_time", i11);
            }
            int i12 = this.TKC;
            if (i12 != -1) {
                jSONObject.put("multi_rv_skip_time", i12);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int sP() {
        return this.TKC;
    }

    public void sP(int i11) {
        this.TKC = i11;
    }
}
