package com.bytedance.sdk.openadsdk.Zq.sP;

import com.bytedance.sdk.component.Dq.TKC;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.Zq.sP;
import com.bytedance.sdk.openadsdk.core.dNu;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements TKC {
    @Override // com.bytedance.sdk.component.Dq.TKC
    public void Sj(final com.bytedance.sdk.component.Dq.sP.Sj sj2) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("stats_sdk_thread_num", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.sP.Sj.1
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                com.bytedance.sdk.component.Dq.sP.Sj sj3;
                if (!dNu.EjP().qRN() || (sj3 = sj2) == null || sj3.Sj() == null) {
                    return null;
                }
                return EjP.sP().Sj("stats_sdk_thread_num").sP(sj2.Sj().toString());
            }
        });
    }
}
