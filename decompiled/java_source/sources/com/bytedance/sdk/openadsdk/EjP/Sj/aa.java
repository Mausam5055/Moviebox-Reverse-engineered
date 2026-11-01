package com.bytedance.sdk.openadsdk.EjP.Sj;

import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.ib;

/* JADX INFO: loaded from: classes2.dex */
class aa implements com.bytedance.sdk.openadsdk.Zq.TKC.sP {
    public static final aa Sj = new aa();

    private aa() {
    }

    private void Sj(com.bytedance.sdk.component.Dq.Dq dq2) {
        if (dq2 == null) {
            return;
        }
        if (JcM.Jcg()) {
            dq2.run();
        } else {
            JcM.sP(dq2, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.sP
    public void Sj(com.bytedance.sdk.openadsdk.Zq.sP sPVar) {
        Sj(sPVar, false);
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.sP
    public void Sj(final com.bytedance.sdk.openadsdk.Zq.sP sPVar, final boolean z10) {
        Sj(new com.bytedance.sdk.component.Dq.Dq("uploadLogEvent") { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.aa.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.Zq.Sj.TKC logStats = sPVar.getLogStats();
                    if (logStats == null) {
                        return;
                    }
                    com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj sj2 = new com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj(ib.Sj(), logStats.Sj());
                    sj2.TKC((byte) 0);
                    sj2.sP(z10 ? (byte) 2 : (byte) 3);
                    sj2.Sj((byte) 1);
                    if (com.bytedance.sdk.component.vS.Sj.sP.sP()) {
                        EjP.Sj(dNu.Sj(), com.bytedance.sdk.openadsdk.multipro.sP.TKC());
                    }
                    com.bytedance.sdk.component.vS.Sj.sP.Sj(sj2);
                } catch (Throwable unused) {
                }
            }
        });
    }
}
