package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final WeakReference<Yf> Sj;

    public vS(Yf yf2) {
        this.Sj = new WeakReference<>(yf2);
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj("interactiveFinish", new vS(yf2));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<Yf> weakReference = this.Sj;
        if (weakReference != null && weakReference.get() != null) {
            Yf yf2 = this.Sj.get();
            sU sUVarEjP = yf2.EjP();
            try {
                boolean z10 = true;
                int i11 = 0;
                if (jSONObject.optInt("finish", 1) != 1) {
                    z10 = false;
                }
                int iOptInt = jSONObject.optInt("reduce_duration", -1);
                int iVb = sUVarEjP != null ? sUVarEjP.vb() : 0;
                if (iOptInt >= 0 && iVb >= 0) {
                    iOptInt = Math.min(iOptInt, iVb);
                } else if (iOptInt < 0) {
                    iOptInt = iVb >= 0 ? iVb : 0;
                }
                if (z10) {
                    yf2.TKC(iOptInt);
                } else {
                    i11 = -1;
                }
                jSONObject2.put("code", i11);
                jSONObject2.put("reduce_duration", iOptInt);
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("InteractiveFinishMethod", e11.getMessage());
            }
        }
        return jSONObject2;
    }
}
