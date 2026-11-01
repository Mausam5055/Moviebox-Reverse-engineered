package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final Yf Sj;
    private final String sP;

    public Dq(Yf yf2, String str) {
        this.Sj = yf2;
        this.sP = str;
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj("endcardDynamicCreatives", new Dq(yf2, "endcardDynamicCreatives"));
        dnu.Sj("multiOpenCovert", new Dq(yf2, "multiOpenCovert"));
        dnu.Sj("skipToNextAd", new Dq(yf2, "skipToNextAd"));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        if ("endcardDynamicCreatives".equals(this.sP)) {
            return this.Sj.Jcg(jSONObject);
        }
        if ("multiOpenCovert".equals(this.sP)) {
            this.Sj.Dq(jSONObject);
            return null;
        }
        if (!"skipToNextAd".equals(this.sP)) {
            return null;
        }
        this.Sj.Sj(jSONObject, this.sP);
        return null;
    }
}
