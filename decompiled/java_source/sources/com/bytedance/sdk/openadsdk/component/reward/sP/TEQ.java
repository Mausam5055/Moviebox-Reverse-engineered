package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ extends sP {
    public TEQ(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    public static boolean Sj(sU sUVar) {
        return uP.Jcg(sUVar) || uP.TzV(sUVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean HiB() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Jcg() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void RiZ() {
        if (this.Sj.uP.Dq(com.bytedance.sdk.openadsdk.component.reward.Sj.Dq.TKC) && uP.TzV(this.Sj.sP)) {
            this.Sj.uP.TKC("return_foreground");
            com.bytedance.sdk.openadsdk.core.widget.sP sPVar = this.Fmk;
            if ((sPVar == null || !sPVar.isShowing()) && this.Sj.uP.sP() >= 0.0f) {
                this.Sj.uP.HiB(0);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void Sj(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void dNu() {
        if (uP.Dq(this.sP) && this.Sj.JcM.xD() && !this.Sj.JcM.Ei()) {
            TzV();
        }
        if (uP.Jcg(this.Sj.sP)) {
            if (DeviceUtils.Jcg() == 0) {
                this.Sj.ndK = true;
            }
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.ndK) {
                sj2.Mts.sP(true);
                this.Sj.uP.HiB(true);
            }
        }
        this.Sj.f20996xu.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void dx() {
        super.dx();
        if (uP.TzV(this.Sj.sP)) {
            this.TEQ.removeMessages(600);
            this.Sj.uP.TKC("go_background");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public void sU() {
        super.sU();
        if (uP.TzV(this.Sj.sP)) {
            this.TEQ.removeMessages(600);
            this.Sj.uP.TKC("go_background");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.sP.sP
    public boolean vS() {
        return true;
    }
}
