package com.bytedance.sdk.openadsdk.Ym.Sj;

import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends com.bytedance.sdk.component.Sj.EjP<JSONObject, JSONObject> {
    private HashSet<Integer> EjP = new HashSet<>();
    private WeakReference<Yf> Sj;
    private long TKC;
    private sU sP;

    public Ym(Yf yf2, sU sUVar) {
        this.Sj = new WeakReference<>(yf2);
        this.sP = sUVar;
    }

    public static void Sj(dNu dnu, final Yf yf2, final sU sUVar) {
        dnu.Sj("requestDelayCallback", new com.bytedance.sdk.component.Sj.EjP.sP() { // from class: com.bytedance.sdk.openadsdk.Ym.Sj.Ym.1
            @Override // com.bytedance.sdk.component.Sj.EjP.sP
            public com.bytedance.sdk.component.Sj.EjP Sj() {
                return new Ym(yf2, sUVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.Sj.EjP
    public void Sj(JSONObject jSONObject, com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        Yf yf2 = this.Sj.get();
        if (yf2 == null || jSONObject == null) {
            TKC();
            return;
        }
        yf2.Sj(new com.bytedance.sdk.openadsdk.aa.sP() { // from class: com.bytedance.sdk.openadsdk.Ym.Sj.Ym.2
            @Override // com.bytedance.sdk.openadsdk.aa.sP
            public void Sj(int i11) {
                Ym.this.EjP.add(Integer.valueOf(i11));
                if (Ym.this.EjP.size() >= Ym.this.TKC) {
                    try {
                        Ym.this.Sj(new JSONObject());
                        Ym.this.EjP.clear();
                    } catch (Exception e11) {
                        e11.getMessage();
                    }
                }
            }
        });
        int iOptInt = jSONObject.optInt("delay", -1);
        if (iOptInt < 0) {
            return;
        }
        this.TKC = iOptInt / 1000;
    }
}
