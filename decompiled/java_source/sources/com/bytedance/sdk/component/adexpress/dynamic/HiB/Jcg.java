package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements Dq {
    private com.bytedance.sdk.component.adexpress.dynamic.vS.sP Sj;

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(Fmk fmk) {
        try {
            JSONObject jSONObjectTKC = fmk.TKC();
            JSONObject jSONObject = new JSONObject(jSONObjectTKC.optString("template_Plugin"));
            JSONObject jSONObjectOptJSONObject = jSONObjectTKC.optJSONObject("creative");
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqSj = new vS(jSONObject, jSONObjectOptJSONObject, jSONObjectTKC.optJSONObject("AdSize"), new JSONObject(jSONObjectTKC.optString("diff_template_Plugin"))).Sj(fmk.sP(), fmk.TEQ(), jSONObjectOptJSONObject.optDouble("score_exact_i18n"), jSONObjectOptJSONObject.optString("comment_num_i18n"), fmk);
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("dynamic_creative"));
                dqSj.Sj(jSONObject2.optString(TtmlNode.ATTR_TTS_COLOR));
                dqSj.Sj(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.Sj.Sj(dqSj);
        } catch (Exception unused2) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq
    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.vS.sP sPVar) {
        this.Sj = sPVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq
    public void Sj(final Fmk fmk) {
        if (fmk.aa() == 1) {
            sP(fmk);
        } else {
            com.bytedance.sdk.component.adexpress.EjP.EjP.Sj(new com.bytedance.sdk.component.Dq.Dq("dynamicparse") { // from class: com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg.1
                @Override // java.lang.Runnable
                public void run() {
                    Jcg.this.sP(fmk);
                }
            }, 5);
        }
    }
}
