package com.bytedance.sdk.openadsdk.EjP.sP;

import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements sP {
    sP Sj;

    @Override // com.bytedance.sdk.openadsdk.EjP.sP.sP
    public void Sj(JSONObject jSONObject, long j11) throws JSONException {
        sP sPVar = this.Sj;
        if (sPVar != null) {
            sPVar.Sj(jSONObject, j11);
        }
        if (j11 <= 0) {
            j11 = System.currentTimeMillis();
        }
        jSONObject.put(TrackingKey.EVENT_TS, j11);
    }
}
