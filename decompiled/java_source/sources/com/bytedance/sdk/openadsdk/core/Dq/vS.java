package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj {
    private final Runnable EjP;
    private final com.bytedance.sdk.component.adexpress.sP.Fmk Sj;
    private final com.bytedance.sdk.component.Dq.Dq TKC;
    private com.bytedance.sdk.component.adexpress.sP.Jcg sP;

    public vS(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq dq2, com.bytedance.sdk.component.adexpress.sP.Fmk fmk, com.bytedance.sdk.component.adexpress.dynamic.vS.Sj sj2) {
        super(context, themeStatusBroadcastReceiver, z10, dq2, fmk, sj2);
        this.TKC = new com.bytedance.sdk.component.Dq.Dq("dynamic_render_template") { // from class: com.bytedance.sdk.openadsdk.core.Dq.vS.1
            @Override // java.lang.Runnable
            public void run() {
                vS.this.Sj.TKC();
                com.bytedance.sdk.openadsdk.core.sef.TKC().post(vS.this.EjP);
            }
        };
        this.EjP = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.vS.2
            @Override // java.lang.Runnable
            public void run() {
                if (vS.this.sP != null) {
                    vS vSVar = vS.this;
                    vS.super.Sj(vSVar.sP);
                }
            }
        };
        this.Sj = fmk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj, com.bytedance.sdk.component.adexpress.sP.EjP
    public void Sj(com.bytedance.sdk.component.adexpress.sP.Jcg jcg) {
        this.sP = jcg;
        JcM.sP(this.TKC);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj
    public void sP() {
        super.sP();
        com.bytedance.sdk.openadsdk.core.sef.TKC().removeCallbacks(this.EjP);
    }
}
