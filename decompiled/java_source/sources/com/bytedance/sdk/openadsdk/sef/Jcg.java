package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends TEQ {
    public Jcg(Context context) {
        this(context, null);
    }

    public Jcg(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Jcg(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected com.bytedance.sdk.openadsdk.core.HiB.Dq EjP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqEjP = super.EjP(context);
        dqEjP.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_download_corner_bg"));
        dqEjP.setTextSize(2, 14.0f);
        return dqEjP;
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected void Sj(Context context) {
        int iSP = FPG.sP(context, 10.0f);
        int iSP2 = FPG.sP(context, 5.0f);
        int iSP3 = FPG.sP(context, 16.0f);
        int iSP4 = FPG.sP(context, 15.0f);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        jcg.setLayoutParams(layoutParams);
        addView(jcg);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkcHiB = HiB(context);
        this.Sj = tkcHiB;
        tkcHiB.setId(com.bytedance.sdk.openadsdk.utils.Zq.zwV);
        this.Sj.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        jcg.addView(this.Sj);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejPVS = vS(context);
        this.sP = ejPVS;
        ejPVS.setId(com.bytedance.sdk.openadsdk.utils.Zq.dLt);
        this.sP.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        jcg.addView(this.sP);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg2 = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.eI;
        jcg2.setId(i11);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, FPG.sP(context, 60.0f));
        layoutParams2.addRule(12);
        jcg2.setBackgroundColor(Color.parseColor("#26000000"));
        jcg2.setLayoutParams(layoutParams2);
        jcg.addView(jcg2);
        uvD uvdJcg = Jcg(context);
        this.TKC = uvdJcg;
        int i12 = com.bytedance.sdk.openadsdk.utils.Zq.QZ;
        uvdJcg.setId(i12);
        int iSP5 = FPG.sP(context, 50.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iSP5, iSP5);
        layoutParams3.addRule(20);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        layoutParams3.leftMargin = iSP4;
        layoutParams3.setMarginStart(iSP4);
        this.TKC.setLayoutParams(layoutParams3);
        jcg2.addView(this.TKC);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqSP = sP(context);
        this.EjP = dqSP;
        dqSP.setId(com.bytedance.sdk.openadsdk.utils.Zq.RrR);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = iSP2;
        layoutParams4.setMarginStart(iSP2);
        layoutParams4.addRule(1, i12);
        layoutParams4.addRule(17, i12);
        this.EjP.setLayoutParams(layoutParams4);
        jcg2.addView(this.EjP);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqEjP = EjP(context);
        this.vS = dqEjP;
        dqEjP.setId(com.bytedance.sdk.openadsdk.utils.Zq.nP);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(FPG.sP(context, 70.0f), FPG.sP(context, 36.0f));
        layoutParams5.addRule(21);
        layoutParams5.addRule(11);
        layoutParams5.addRule(15);
        layoutParams5.rightMargin = iSP4;
        layoutParams5.setMarginEnd(iSP4);
        this.vS.setLayoutParams(layoutParams5);
        jcg2.addView(this.vS);
        View viewDq = Dq(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(2, i11);
        layoutParams6.leftMargin = iSP3;
        layoutParams6.bottomMargin = iSP;
        viewDq.setLayoutParams(layoutParams6);
        jcg.addView(viewDq);
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected com.bytedance.sdk.openadsdk.core.HiB.Dq sP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqSP = super.sP(context);
        dqSP.setGravity(16);
        dqSP.setMaxWidth(FPG.sP(context, 150.0f));
        dqSP.setTextColor(Color.parseColor("#B7B7B7"));
        dqSP.setTextSize(2, 15.0f);
        dqSP.setText("APP NAME");
        return dqSP;
    }
}
