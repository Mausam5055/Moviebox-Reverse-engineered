package com.bytedance.sdk.openadsdk.kF.sP;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private final int Sj;
    private final float TKC;
    private final int sP;

    public Sj(int i11, int i12, float f11) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = f11;
    }

    public static JSONObject Sj(Sj sj2) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", sj2.Sj);
        jSONObject.put("height", sj2.sP);
        jSONObject.put("alpha", sj2.TKC);
        return jSONObject;
    }
}
