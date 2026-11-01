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
public class EjP extends TEQ {
    public EjP(Context context) {
        this(context, null);
    }

    public EjP(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EjP(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected void Sj(Context context) {
        int iSP = FPG.sP(context, 10.0f);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        hiB.setLayoutParams(layoutParams);
        layoutParams.gravity = 17;
        hiB.setOrientation(1);
        hiB.setPadding(iSP, iSP, iSP, iSP);
        addView(hiB);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 3.0f;
        tkc.setLayoutParams(layoutParams2);
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
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 80;
        layoutParams3.leftMargin = iSP;
        layoutParams3.topMargin = iSP;
        layoutParams3.bottomMargin = iSP;
        pAGLogoViewDq.setLayoutParams(layoutParams3);
        tkc.addView(pAGLogoViewDq);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        jcg.setLayoutParams(layoutParams4);
        hiB.addView(jcg);
        uvD uvdJcg = Jcg(context);
        this.TKC = uvdJcg;
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.QZ;
        uvdJcg.setId(i11);
        int iSP2 = FPG.sP(context, 40.0f);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(iSP2, iSP2);
        layoutParams5.addRule(15);
        this.TKC.setLayoutParams(layoutParams5);
        jcg.addView(this.TKC);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqSP = sP(context);
        this.EjP = dqSP;
        dqSP.setId(com.bytedance.sdk.openadsdk.utils.Zq.RrR);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(15);
        layoutParams6.leftMargin = iSP;
        layoutParams6.setMarginStart(iSP);
        layoutParams6.addRule(1, i11);
        layoutParams6.addRule(17, i11);
        this.EjP.setLayoutParams(layoutParams6);
        jcg.addView(this.EjP);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqEjP = EjP(context);
        this.vS = dqEjP;
        dqEjP.setId(com.bytedance.sdk.openadsdk.utils.Zq.nP);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(FPG.sP(context, 100.0f), FPG.sP(context, 32.0f));
        layoutParams7.addRule(11);
        layoutParams7.addRule(21);
        layoutParams7.addRule(15);
        this.vS.setLayoutParams(layoutParams7);
        jcg.addView(this.vS);
    }
}
