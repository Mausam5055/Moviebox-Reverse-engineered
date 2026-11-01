package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class uA extends sP {
    private com.bytedance.sdk.openadsdk.component.reward.view.Sj Zq;

    public uA(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    private boolean LD() {
        return sU.HiB(this.sP);
    }

    public static boolean Sj(sU sUVar) {
        return (sUVar.TT() || sUVar.tY() == 100.0f) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public sP.Sj EjP() {
        return new sP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.sP.uA.1
            @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP.Sj
            public void Sj(boolean z10) {
                if (uA.this.Zq != null) {
                    uA.this.Zq.setIsMute(z10);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean HiB() {
        return LD();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Jcg() {
        this.vS.TKC(8);
        this.vS.sP(8);
        if (this.sP.ley() == 2) {
            this.Dq.Sj(false);
            this.Dq.TKC(false);
            this.Dq.EjP(false);
            this.vS.HiB(8);
            return;
        }
        this.Dq.Sj(this.sP.RrR());
        this.Dq.TKC(LD());
        this.Dq.EjP(LD());
        if (LD()) {
            this.vS.HiB(8);
        } else {
            this.Dq.HiB();
            this.vS.HiB(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.reward.view.Sj sj2 = new com.bytedance.sdk.openadsdk.component.reward.view.Sj(this.Sj.Fm, this.Ym);
        this.Zq = sj2;
        sj2.setDownloadListener(this.f21009aa);
        com.bytedance.sdk.openadsdk.component.reward.view.Sj sj3 = this.Zq;
        sU sUVar = this.sP;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        sj3.Sj(sUVar, sj4.MuB, sj4.sdp, this.TKC, this.EjP);
        frameLayout.addView(this.Zq.getInteractionStyleRootView());
    }

    public FrameLayout Yf() {
        com.bytedance.sdk.openadsdk.component.reward.view.Sj sj2 = this.Zq;
        if (sj2 != null) {
            return sj2.getVideoContainer();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean vS() {
        return LD();
    }
}
