package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements Jcg {
    private com.bytedance.sdk.component.adexpress.vS.sP Sj;

    public Sj(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        double dANB = jcg.aNB();
        dANB = dANB == 0.0d ? 1.0d : dANB;
        double dCX = jcg.cX();
        double d11 = dCX != 0.0d ? dCX : 1.0d;
        int dynamicWidth = (int) (((double) hiB.getDynamicWidth()) * 0.32d * dANB);
        int dynamicWidth2 = (int) (((double) hiB.getDynamicWidth()) * 0.32d * d11);
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.sP(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, jcg.Chv() - 7);
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, jcg.Bml() - 3);
        this.Sj.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public ViewGroup TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.sP();
    }
}
