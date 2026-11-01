package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.Zq;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends sP {
    public EjP(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    protected static com.bytedance.sdk.component.uA.vS Sj(Context context, sU sUVar) {
        com.bytedance.sdk.component.uA.vS vSVarSP = com.bytedance.sdk.openadsdk.Fmk.Sj.Sj().sP(sUVar);
        if (vSVarSP != null) {
            vSVarSP.setLpPreRender(true);
            ViewGroup viewGroup = (ViewGroup) vSVarSP.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(vSVarSP);
            }
        } else {
            vSVarSP = new com.bytedance.sdk.component.uA.vS(context, true);
            vSVarSP.setLayerType(2, null);
        }
        FPG.Sj((View) vSVarSP, 0);
        vSVarSP.setId(Zq.f21130dx);
        vSVarSP.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return vSVarSP;
    }

    static void Sj(FrameLayout frameLayout, sU sUVar) {
        Context context = frameLayout.getContext();
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(1);
        frameLayout.addView(hiB, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc.setId(Zq.WMZ);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        hiB.addView(tkc, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc2.setId(Zq.TEQ);
        tkc.addView(tkc2, new FrameLayout.LayoutParams(-1, -1));
        tkc2.addView(sP.Sj(context));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc3.setId(Zq.TzV);
        tkc3.setVisibility(8);
        tkc3.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        tkc2.addView(tkc3, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(Zq.RiZ);
        ejP.setScaleType(ImageView.ScaleType.FIT_CENTER);
        tkc3.addView(ejP, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc4 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc4.setId(Zq.sU);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.0f;
        hiB.addView(tkc4, layoutParams3);
        tkc4.addView(Sj(context, sUVar));
        LinearLayout linearLayoutSP = sP(context);
        linearLayoutSP.setBackgroundColor(Color.parseColor("#70161823"));
        tkc4.addView(linearLayoutSP);
        linearLayoutSP.addView(TKC(context));
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc4, sUVar);
    }

    public static void Sj(sU sUVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        if (TzV.sP(sUVar)) {
            Sj(frameLayout, sUVar);
        } else if (TzV.EjP(sUVar) || TzV.HiB(sUVar)) {
            sP(frameLayout, sUVar);
        } else {
            sP.Sj(frameLayout, sj2);
        }
    }

    public static boolean Sj(sU sUVar) {
        return TzV.sP(sUVar) || TzV.EjP(sUVar) || TzV.HiB(sUVar);
    }

    private static ImageView TKC(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setScaleType(ImageView.ScaleType.FIT_XY);
        ejP.setImageResource(ib.EjP(context, "tt_up_slide"));
        ejP.setId(Zq.f21132ib);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(FPG.sP(context, 18.0f), FPG.sP(context, 16.0f));
        layoutParams.gravity = 17;
        layoutParams.topMargin = FPG.sP(context, 45.0f);
        ejP.setLayoutParams(layoutParams);
        return ejP;
    }

    private static LinearLayout sP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setId(Zq.zR);
        hiB.setOrientation(1);
        hiB.setVisibility(8);
        hiB.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return hiB;
    }

    static void sP(FrameLayout frameLayout, sU sUVar) {
        Context context = frameLayout.getContext();
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc.setId(Zq.sU);
        frameLayout.addView(tkc, new FrameLayout.LayoutParams(-1, -1));
        tkc.addView(Sj(context, sUVar));
        LinearLayout linearLayoutSP = sP(context);
        linearLayoutSP.setBackgroundColor(Color.parseColor("#99161823"));
        tkc.addView(linearLayoutSP);
        linearLayoutSP.addView(TKC(context));
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc2.setId(Zq.WMZ);
        frameLayout.addView(tkc2, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc3 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc3.setId(Zq.TEQ);
        tkc2.addView(tkc3, new FrameLayout.LayoutParams(-1, -1));
        tkc3.addView(sP.Sj(context));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc4 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc4.setId(Zq.TzV);
        tkc4.setVisibility(8);
        tkc4.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        tkc3.addView(tkc4, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(Zq.RiZ);
        ejP.setScaleType(ImageView.ScaleType.FIT_CENTER);
        tkc4.addView(ejP, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.EjP.Sj(tkc2);
        View teq = new com.bytedance.sdk.openadsdk.core.widget.TEQ(context);
        teq.setId(Zq.Mts);
        teq.setClickable(true);
        teq.setFocusable(true);
        frameLayout.addView(teq, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public RFEndCardBackUpLayout Dq() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Fmk() {
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq;
        TzV tzV;
        if (TzV.sP(this.Sj.sP) && (teq = this.Sj.Wjd) != null && (tzV = teq.Zq) != null) {
            if (tzV.EjP()) {
                this.Sj.Wjd.sP(0);
                this.Sj.uvD.set(true);
            } else {
                this.Sj.dNu.set(true);
                Sj(true, false, true, 80);
            }
        }
        if (TzV.EjP(this.Sj.sP) || TzV.HiB(this.Sj.sP)) {
            Sj(true, false, true, 70);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean HiB() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Jcg() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        Fmk fmk;
        if (!TzV.EjP(this.Sj.sP) || (fmk = (sj2 = this.Sj).f20996xu) == null) {
            return;
        }
        fmk.Sj(sj2.sP.Fmk().sP() * 1000);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(com.bytedance.sdk.openadsdk.component.reward.view.Jcg jcg) {
        Sj(this.sP, jcg, this.Sj);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean vS() {
        if (TzV.sP(this.Sj.sP)) {
            return true;
        }
        return (TzV.EjP(this.Sj.sP) || TzV.HiB(this.Sj.sP)) ? false : true;
    }
}
