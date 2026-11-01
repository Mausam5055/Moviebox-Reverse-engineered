package com.bytedance.adsdk.ugeno.core;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    private TEQ EjP;
    private TEQ HiB;
    private com.bytedance.adsdk.ugeno.sP.TKC Sj;
    private JSONObject TKC;
    private int sP;

    public TEQ EjP() {
        return this.EjP;
    }

    public com.bytedance.adsdk.ugeno.sP.TKC Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.sP = i11;
    }

    public void Sj(TEQ teq) {
        this.EjP = teq;
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.Sj = tkc;
    }

    public void Sj(JSONObject jSONObject) {
        this.TKC = jSONObject;
    }

    public JSONObject TKC() {
        return this.TKC;
    }

    public int sP() {
        return this.sP;
    }

    public void sP(TEQ teq) {
        this.HiB = teq;
    }

    public String toString() {
        return "UGenEvent{mWidget=" + this.Sj + ", mEventType=" + this.sP + ", mEvent=" + this.TKC + '}';
    }
}
