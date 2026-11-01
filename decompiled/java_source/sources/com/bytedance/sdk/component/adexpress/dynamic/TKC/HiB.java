package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.zR;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends dNu<com.bytedance.sdk.component.adexpress.vS.Jcg> {
    public HiB(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        super(context, hiB, jcg);
        Sj(jcg);
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.Dq(this.sP);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        this.Sj.setLayoutParams(layoutParams);
        zR zRVar = this.Sj;
        if (zRVar instanceof com.bytedance.sdk.component.adexpress.vS.Dq) {
            ((com.bytedance.sdk.component.adexpress.vS.Dq) zRVar).setButtonText(this.EjP.sdp());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.dNu
    protected void EjP() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.dNu, com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.dNu, com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.sP();
    }
}
