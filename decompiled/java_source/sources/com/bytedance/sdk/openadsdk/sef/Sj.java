package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends TEQ {
    public Sj(Context context) {
        this(context, null);
    }

    public Sj(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Sj(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected void Sj(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        hiB.setOrientation(1);
        addView(hiB);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 337.0f;
        tkc.setLayoutParams(layoutParams);
        hiB.addView(tkc);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkcHiB = HiB(context);
        this.Sj = tkcHiB;
        tkcHiB.setId(com.bytedance.sdk.openadsdk.utils.Zq.zwV);
        this.Sj.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        tkc.addView(this.Sj);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejPVS = vS(context);
        this.sP = ejPVS;
        ejPVS.setId(com.bytedance.sdk.openadsdk.utils.Zq.dLt);
        this.sP.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        tkc.addView(this.sP);
        PAGLogoView pAGLogoViewDq = Dq(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 80;
        int iSP = FPG.sP(context, 10.0f);
        layoutParams2.leftMargin = iSP;
        layoutParams2.topMargin = iSP;
        layoutParams2.bottomMargin = iSP;
        pAGLogoViewDq.setLayoutParams(layoutParams2);
        tkc.addView(pAGLogoViewDq);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 263.0f;
        hiB2.setLayoutParams(layoutParams3);
        hiB2.setOrientation(1);
        int iSP2 = FPG.sP(context, 16.0f);
        hiB2.setPadding(iSP2, iSP2, iSP2, iSP2);
        hiB.addView(hiB2);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        hiB2.addView(jcg);
        uvD uvdJcg = Jcg(context);
        this.TKC = uvdJcg;
        uvdJcg.setId(com.bytedance.sdk.openadsdk.utils.Zq.QZ);
        int iSP3 = FPG.sP(context, 45.0f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iSP3, iSP3);
        layoutParams4.rightMargin = iSP;
        layoutParams4.setMarginEnd(iSP);
        this.TKC.setLayoutParams(layoutParams4);
        jcg.addView(this.TKC);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqSP = sP(context);
        this.EjP = dqSP;
        dqSP.setId(com.bytedance.sdk.openadsdk.utils.Zq.RrR);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(1, this.TKC.getId());
        layoutParams5.addRule(17, this.TKC.getId());
        this.EjP.setLayoutParams(layoutParams5);
        jcg.addView(this.EjP);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqTKC = TKC(context);
        this.HiB = dqTKC;
        dqTKC.setId(com.bytedance.sdk.openadsdk.utils.Zq.SP);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(3, this.EjP.getId());
        layoutParams6.addRule(1, this.TKC.getId());
        layoutParams6.addRule(17, this.TKC.getId());
        this.HiB.setLayoutParams(layoutParams6);
        jcg.addView(this.HiB);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqEjP = EjP(context);
        this.vS = dqEjP;
        dqEjP.setId(com.bytedance.sdk.openadsdk.utils.Zq.nP);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, FPG.sP(context, 32.0f));
        layoutParams7.topMargin = iSP2;
        this.vS.setLayoutParams(layoutParams7);
        hiB2.addView(this.vS);
    }
}
