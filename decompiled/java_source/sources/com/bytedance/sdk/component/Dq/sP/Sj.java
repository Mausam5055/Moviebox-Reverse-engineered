package com.bytedance.sdk.component.Dq.sP;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public int EjP;
    public int Sj;
    public int TKC;
    public int sP;

    public Sj(int i11, int i12, int i13, int i14) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = i13;
        this.EjP = i14;
    }

    public JSONObject Sj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_thread_num", this.Sj);
            jSONObject.put("sdk_max_thread_num", this.sP);
            jSONObject.put("app_thread_num", this.TKC);
            jSONObject.put("app_max_thread_num", this.EjP);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
