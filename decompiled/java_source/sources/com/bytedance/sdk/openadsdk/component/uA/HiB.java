package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class HiB extends TKC {
    Sj Fmk;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj(View view, int i11);
    }

    public HiB(Context context, sU sUVar) {
        super(context);
        Sj(context, sUVar);
    }

    private void Sj(Context context, sU sUVar) {
        com.bytedance.sdk.openadsdk.core.Dq.HiB hiB = new com.bytedance.sdk.openadsdk.core.Dq.HiB(context);
        com.bytedance.sdk.openadsdk.core.Dq.EjP.Sj().TKC(hiB);
        hiB.Sj(sUVar, new com.bytedance.sdk.openadsdk.core.Dq.HiB.sP() { // from class: com.bytedance.sdk.openadsdk.component.uA.HiB.1
            @Override // com.bytedance.sdk.openadsdk.core.Dq.HiB.sP
            public View Sj() {
                Jcg jcg = HiB.this.Dq;
                if (jcg != null) {
                    return jcg.getTopDislike();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.HiB.sP
            public void Sj(int i11, int i12) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.HiB.sP
            public void Sj(View view, int i11) {
                Sj sj2 = HiB.this.Fmk;
                if (sj2 != null) {
                    sj2.Sj(view, i11);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.HiB.sP
            public void e_() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.HiB.sP
            public View sP() {
                return HiB.this;
            }
        }, "open_ad");
        addView(hiB, new ViewGroup.LayoutParams(-1, -1));
        hiB.sU();
        int iSP = FPG.sP(context, 9.0f);
        int iSP2 = FPG.sP(context, 10.0f);
        this.EjP = PAGLogoView.createPAGLogoViewByMaterial(context, sUVar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams.leftMargin = iSP2;
        layoutParams.bottomMargin = iSP2;
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        addView(this.EjP, layoutParams);
        com.bytedance.sdk.openadsdk.core.widget.TKC tkc = new com.bytedance.sdk.openadsdk.core.widget.TKC(context);
        this.f21012aa = tkc;
        tkc.setPadding(iSP, 0, iSP, 0);
        this.f21012aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(FPG.sP(context, 32.0f), FPG.sP(context, 14.0f));
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(0, 0, iSP2, iSP2);
        addView(this.f21012aa, layoutParams2);
        View view = this.Dq;
        if (view != null) {
            addView(view);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.EjP getAdIconView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.Dq getAdTitleTextView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public Zq getScoreBar() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public View getUserInfo() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Fmk = null;
    }

    public void setRenderListener(Sj sj2) {
        this.Fmk = sj2;
    }
}
