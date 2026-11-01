package com.bytedance.sdk.openadsdk.kF.sP;

import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    public static void Sj(final sU sUVar, final Sj sj2, final HiB.Sj sj3) {
        sUVar.Ov();
        JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("mrc_report") { // from class: com.bytedance.sdk.openadsdk.kF.sP.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                if (sUVar.Aw()) {
                    if (sUVar.Fqk()) {
                        com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(sUVar.cX(), new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("show_urls", sUVar));
                    } else {
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar);
                    }
                }
                String strSj = Mts.Sj(sUVar);
                JSONObject jSONObject = new JSONObject();
                Sj sj4 = sj2;
                if (sj4 != null) {
                    try {
                        jSONObject.put("root_view", Sj.Sj(sj4));
                        HiB.Sj sj5 = sj3;
                        if (sj5 != null) {
                            int i11 = sj5.Sj;
                            if (i11 != -1) {
                                jSONObject.put("dynamic_show_type", i11);
                            }
                            int i12 = sj3.sP;
                            if (i12 != -1) {
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(i12 + 1, jSONObject);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, strSj, "mrc_show", jSONObject);
            }
        });
    }
}
