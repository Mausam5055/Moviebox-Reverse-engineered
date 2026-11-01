package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends sP {
    public TKC(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    public static boolean Sj(sU sUVar) {
        TzV.TKC(sUVar);
        return TzV.TKC(sUVar);
    }

    private void sP(com.bytedance.sdk.openadsdk.component.reward.view.Jcg jcg) {
        if (jcg == null) {
            return;
        }
        Context context = jcg.getContext();
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(1);
        jcg.addView(hiB, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc.setId(Zq.WMZ);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 100.0f;
        hiB.addView(tkc, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc2.setId(Zq.TEQ);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        tkc.addView(tkc2, layoutParams2);
        tkc2.addView(sP.Sj(context));
        if (this.sP.HcZ() != 3 && this.sP.HcZ() != 5) {
            com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
            ejP.setId(Zq.XgY);
            ejP.setVisibility(8);
            ejP.setBackground(com.bytedance.sdk.openadsdk.core.widget.EjP.Sj());
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(FPG.sP(context, 28.0f), FPG.sP(context, 28.0f));
            layoutParams3.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
            layoutParams3.rightMargin = FPG.sP(context, 20.0f);
            layoutParams3.bottomMargin = FPG.sP(context, 10.0f);
            tkc.addView(ejP, layoutParams3);
        }
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc3.setId(Zq.sU);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 0.0f;
        hiB.addView(tkc3, layoutParams4);
        tkc3.addView(EjP.Sj(context, this.Sj.sP));
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc3, this.sP);
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean HiB() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Jcg() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(com.bytedance.sdk.openadsdk.component.reward.view.Jcg jcg) {
        sP(jcg);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean vS() {
        return true;
    }
}
