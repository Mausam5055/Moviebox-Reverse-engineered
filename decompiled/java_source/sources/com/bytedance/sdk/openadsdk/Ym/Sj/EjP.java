package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final Yf Sj;

    public EjP(Yf yf2) {
        this.Sj = yf2;
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj("expressAdViewStartZoom", new EjP(yf2));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        this.Sj.EjP(jSONObject);
        return null;
    }
}
