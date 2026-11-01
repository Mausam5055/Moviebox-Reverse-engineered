package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class dNu {
    public static int Sj = 1;
    public static int sP = 2;
    private int TKC = 5;
    private int EjP = 30;
    private int HiB = 70;
    private int vS = 1;
    private int Jcg = Sj;
    private int Dq = 0;
    private int uA = 0;
    private int TEQ = 3;

    public int Dq() {
        return this.Jcg;
    }

    public void Dq(int i11) {
        this.Jcg = i11;
    }

    public int EjP() {
        return this.TKC;
    }

    public void EjP(int i11) {
        this.TKC = i11;
    }

    public int HiB() {
        return this.EjP;
    }

    public void HiB(int i11) {
        this.EjP = i11;
    }

    public int Jcg() {
        return this.vS;
    }

    public void Jcg(int i11) {
        this.vS = i11;
    }

    public int Sj() {
        return this.TEQ;
    }

    public JSONObject Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("ceiling_time", this.TKC);
            jSONObject.put("ceiling_ratio", this.EjP);
            jSONObject.put("expand_ratio", this.HiB);
            jSONObject.put("back_type", this.vS);
            jSONObject.put("boc_return_type", this.Jcg);
            jSONObject.put("pre_render_status", this.Dq);
            jSONObject.put("pre_render_use_gecko", this.uA);
            jSONObject.put("pre_render_add_type", this.TEQ);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("InteractionParams", th2.getMessage());
        }
        return jSONObject;
    }

    public void Sj(int i11) {
        this.TEQ = i11;
    }

    public boolean Sj(boolean z10) {
        if (z10) {
            int i11 = this.Dq;
            return i11 == 1 || i11 == 3;
        }
        int i12 = this.Dq;
        return i12 == 3 || i12 == 2;
    }

    public int TKC() {
        return this.Dq;
    }

    public void TKC(int i11) {
        this.Dq = i11;
    }

    public int sP() {
        return this.uA;
    }

    public void sP(int i11) {
        this.uA = i11;
    }

    public int vS() {
        return this.HiB;
    }

    public void vS(int i11) {
        this.HiB = i11;
    }
}
