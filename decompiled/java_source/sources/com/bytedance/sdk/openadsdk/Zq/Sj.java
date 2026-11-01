package com.bytedance.sdk.openadsdk.Zq;

import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.EjP.Sj.vS;
import com.bytedance.sdk.openadsdk.core.zR;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static void Sj() {
        if (JcM.vS()) {
            JcM.Sj(new Dq("DailyTaskHelper") { // from class: com.bytedance.sdk.openadsdk.Zq.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj.TKC();
                }
            });
        } else {
            TKC();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void TKC() {
        com.bytedance.sdk.openadsdk.EjP.Sj.Sj.sP();
        vS.Sj();
        zR.Sj();
    }
}
