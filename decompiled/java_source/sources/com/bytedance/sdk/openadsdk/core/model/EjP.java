package com.bytedance.sdk.openadsdk.core.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private int Jcg;
    private String Sj = "";
    private String sP = "";
    private String TKC = "";
    private String EjP = "";
    private double HiB = -1.0d;
    private int vS = -1;

    public JSONObject Dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", sP());
            jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, vS());
            jSONObject.put("comment_num", HiB());
            jSONObject.put("download_url", Sj());
            jSONObject.put("package_name", TKC());
            jSONObject.put("score", EjP());
            jSONObject.put("app_category", Jcg());
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP(e11.toString(), new Object[0]);
        }
        return jSONObject;
    }

    public double EjP() {
        return this.HiB;
    }

    public void EjP(String str) {
        this.EjP = str;
    }

    public int HiB() {
        return this.vS;
    }

    public String Jcg() {
        return this.EjP;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(double d11) {
        if (d11 < 1.0d || d11 > 5.0d) {
            this.HiB = -1.0d;
        } else {
            this.HiB = d11;
        }
    }

    public void Sj(int i11) {
        if (i11 <= 0) {
            this.vS = -1;
        } else {
            this.vS = i11;
        }
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public String TKC() {
        return this.TKC;
    }

    public void TKC(String str) {
        this.TKC = str;
    }

    public String sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.Jcg = i11;
    }

    public void sP(String str) {
        this.sP = str;
    }

    public int vS() {
        return this.Jcg;
    }
}
