package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.component.reward.Sj.TzV;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.component.reward.Sj.sef;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    protected final sef Dq;
    protected int EjP;
    protected final dNu HiB;
    protected final TzV Jcg;
    protected com.bytedance.sdk.openadsdk.component.reward.Sj.Sj Sj;
    protected LqL TEQ;
    protected int TKC;
    protected sU sP;
    protected com.bytedance.sdk.openadsdk.core.aa.EjP.sP uA;
    protected final com.bytedance.sdk.openadsdk.component.reward.view.TEQ vS;

    public Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.Sj = sj2;
        this.sP = sj2.sP;
        this.TKC = sj2.IOh;
        this.EjP = sj2.pfr;
        this.HiB = sj2.f20992ib;
        this.vS = sj2.Wjd;
        this.Jcg = sj2.JcM;
        this.Dq = sj2.Mts;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, LqL lqL) {
        this.uA = sPVar;
        this.TEQ = lqL;
    }

    public void Sj(boolean z10) {
        if (this.Sj.TEQ.get()) {
            return;
        }
        sU sUVar = this.sP;
        if (sUVar != null && sUVar.Fqk()) {
            this.Dq.TKC(false);
            this.Dq.Sj(true);
            this.Sj.Wjd.sP(8);
            this.Sj.Wjd.TKC(8);
            return;
        }
        if (z10) {
            this.Dq.Sj(this.Sj.sP.RrR());
            if (uP.TzV(this.Sj.sP) || Sj()) {
                this.Dq.TKC(true);
            }
            if (Sj() || ((this instanceof Dq) && this.Sj.sP.EjP())) {
                this.Dq.EjP(true);
            } else {
                this.Dq.HiB();
                this.Sj.Wjd.HiB(0);
            }
        } else {
            this.Dq.TKC(false);
            this.Dq.Sj(false);
            this.Dq.EjP(false);
            this.Sj.Wjd.HiB(8);
        }
        if (!z10) {
            this.Sj.Wjd.sP(4);
            this.Sj.Wjd.TKC(8);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2.MuB != com.bytedance.sdk.openadsdk.component.reward.view.sP.Sj) {
            sj2.Wjd.sP(8);
            this.Sj.Wjd.TKC(8);
        } else {
            sj2.Wjd.sP(0);
            this.Sj.Wjd.TKC(0);
        }
    }

    public boolean Sj() {
        return this.Sj.sP.Ph() || this.Sj.sP.HcZ() == 15 || this.Sj.sP.HcZ() == 5 || this.Sj.sP.HcZ() == 50;
    }

    protected void TKC() {
        if (uP.sP(this.Sj.sP) && DeviceUtils.Jcg() == 0) {
            this.Sj.ndK = true;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        sj2.Mts.sP(sj2.ndK);
    }

    public boolean sP() {
        if (!com.bytedance.sdk.openadsdk.core.model.TzV.sP(this.Sj.sP) || !this.Sj.RiZ.get()) {
            return (this.Sj.TEQ.get() || this.Sj.Ym.get() || uP.TzV(this.Sj.sP)) ? false : true;
        }
        FrameLayout frameLayoutVS = this.Sj.Wjd.vS();
        frameLayoutVS.setVisibility(4);
        frameLayoutVS.setVisibility(0);
        return false;
    }
}
