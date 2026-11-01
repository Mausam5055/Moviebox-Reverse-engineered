package com.bytedance.sdk.openadsdk.core.settings;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends aa {
    public Sj() {
        super("tt_set_apm.prop", new aa.Sj() { // from class: com.bytedance.sdk.openadsdk.core.settings.Sj.1
            @Override // com.bytedance.sdk.openadsdk.core.settings.aa.Sj
            public void Sj() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.aa.Sj
            public void sP() {
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.HiB
    public void Sj(JSONObject jSONObject) {
        HiB.Sj Sj = Sj();
        if (jSONObject.has("apm_url")) {
            Sj.Sj("apm_url", jSONObject.optString("apm_url"));
        }
        if (jSONObject.has("perf_con")) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("perf_con");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("perf_con_apm")) {
                    Sj.Sj("perf_con_apm", jSONObjectOptJSONObject.optInt("perf_con_apm"));
                }
            } catch (Exception unused) {
            }
        }
        Sj.Sj();
        EjP();
    }
}
