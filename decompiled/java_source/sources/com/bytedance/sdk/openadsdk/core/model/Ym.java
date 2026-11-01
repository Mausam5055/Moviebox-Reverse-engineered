package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.Nullable;
import com.cloud.tmc.integration.params.TmcStartParams;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Ym {
    private String Sj;
    private int TKC;
    private String sP;

    @Nullable
    public JSONObject EjP() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TmcStartParams.KEY_URL_SHORT, this.Sj);
            jSONObject.put("ft", this.TKC);
            jSONObject.put("fu", this.sP);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.TKC = i11;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public int TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public void sP(String str) {
        this.sP = str;
    }
}
