package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private JSONObject Sj;

    public HiB(JSONObject jSONObject) {
        this.Sj = jSONObject;
    }

    public static void Sj(dNu dnu, JSONObject jSONObject) {
        dnu.Sj("getData", new HiB(jSONObject));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        return com.bytedance.sdk.openadsdk.core.Dq.Sj.sP.Sj(this.Sj, jSONObject);
    }
}
