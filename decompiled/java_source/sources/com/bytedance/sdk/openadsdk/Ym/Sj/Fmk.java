package com.bytedance.sdk.openadsdk.Ym.Sj;

import android.view.ViewGroup;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.LD;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private sU EjP;
    private com.bytedance.sdk.component.uA.vS Sj;
    private Yf TKC;
    private String sP;

    public Fmk(com.bytedance.sdk.component.uA.vS vSVar, String str, Yf yf2, sU sUVar) {
        this.Sj = vSVar;
        this.sP = str;
        this.TKC = yf2;
        this.EjP = sUVar;
    }

    public static void Sj(dNu dnu, com.bytedance.sdk.component.uA.vS vSVar, Yf yf2, sU sUVar) {
        dnu.Sj("closeWebview", new Fmk(vSVar, "closeWebview", yf2, sUVar));
        dnu.Sj("makeVisible", new Fmk(vSVar, "makeVisible", yf2, sUVar));
        dnu.Sj("getCurrentVisibleState", new Fmk(vSVar, "getCurrentVisibleState", yf2, sUVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.Sj.HiB
    public JSONObject Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.sP;
        str.hashCode();
        switch (str) {
            case "getCurrentVisibleState":
                sU sUVar = this.EjP;
                if (sUVar != null) {
                    jSONObject2.put("visibleState", !LD.Sj(this.Sj, 20, sUVar.DKj()) ? 1 : 0);
                }
                return jSONObject2;
            case "closeWebview":
                JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Ym.Sj.Fmk.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Fmk.this.Sj != null) {
                            Fmk.this.Sj.setVisibility(8);
                            ViewGroup viewGroup = (ViewGroup) Fmk.this.Sj.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(Fmk.this.Sj);
                            }
                        }
                    }
                });
                jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, true);
                return jSONObject2;
            case "makeVisible":
                if (this.Sj != null) {
                    jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, true);
                    JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Ym.Sj.Fmk.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Fmk.this.Sj != null) {
                                Fmk.this.Sj.setVisibility(0);
                            }
                        }
                    });
                } else {
                    jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false);
                }
                return jSONObject2;
            default:
                return jSONObject2;
        }
    }
}
