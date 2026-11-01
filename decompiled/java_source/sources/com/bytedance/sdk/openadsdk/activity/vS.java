package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.component.reward.Ym;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;

/* JADX INFO: loaded from: classes2.dex */
public abstract class vS {
    protected final sU Dq;
    private final sP Sj;
    public boolean TEQ;
    protected IListenerManager Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.aa.vS f20980aa = new com.bytedance.sdk.openadsdk.aa.vS() { // from class: com.bytedance.sdk.openadsdk.activity.vS.1
        @Override // com.bytedance.sdk.openadsdk.aa.vS
        public void Sj() {
            vS.this.sef();
        }
    };
    public int uA;

    public vS(sP sPVar, sU sUVar, int i11) {
        this.Sj = sPVar;
        this.Dq = sUVar;
        this.uA = i11;
    }

    private void Sj(final String str, final boolean z10, final int i11, final String str2, final int i12, final String str3) {
        JcM.TKC(new Dq("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.vS.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    vS.this.EjP(0).executeRewardVideoCallback(vS.this.sU(), str, z10, i11, str2, i12, str3);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("Scene", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    private void sP(final String str) {
        JcM.TKC(new Dq("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.vS.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    vS.this.EjP(1).executeFullVideoCallback(vS.this.sU(), str);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("Scene", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    protected final IListenerManager EjP(int i11) {
        if (this.Ym == null) {
            this.Ym = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(i11));
        }
        return this.Ym;
    }

    public void EjP(Activity activity) {
    }

    public void HiB(Activity activity) {
    }

    protected final void LD() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdVideoBarClick");
        } else {
            this.Sj.aa();
        }
    }

    public void LqL() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdClose");
        } else {
            this.Sj.Fmk();
        }
    }

    public abstract boolean RiZ();

    public abstract View Sj();

    public void Sj(Activity activity) {
    }

    public void Sj(Activity activity, Bundle bundle) {
    }

    public void Sj(Activity activity, sP.HiB hiB) {
    }

    public void Sj(vS vSVar, vS vSVar2, sP.HiB hiB) {
    }

    protected void Sj(String str) {
        if (a_()) {
            Sj(str, false, 0, "", 0, "");
        } else {
            sP(str);
        }
    }

    protected final void Sj(boolean z10, int i11, String str, int i12, String str2, int i13) {
        if (this.Sj.Zq()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onRewardVerify", z10, i11, str, i12, str2);
        } else {
            this.Sj.Sj(this, z10, i11, str, i12, str2);
        }
        Ym.Sj(this.Dq, z10, i13);
    }

    protected void Sj(boolean z10, boolean z11, boolean z12, int i11) {
        this.Sj.Sj(this, z10, z11, z12, i11);
    }

    public void TKC(Activity activity) {
    }

    protected void Yf() {
        if (this.Sj.dNu()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdShow");
        } else {
            this.Sj.sef();
        }
        this.Sj.TzV();
    }

    public void Zq() {
    }

    protected abstract boolean a_();

    public abstract String b_();

    public void dNu() {
    }

    public boolean kF() {
        sP sPVar = this.Sj;
        return sPVar != null && sPVar.sP(this.uA);
    }

    protected void ley() {
        if (this.Dq != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.Dq);
        }
        this.Sj.sP(this);
    }

    public void sP(Activity activity) {
    }

    public abstract void sP(boolean z10);

    protected abstract String sU();

    public void sef() {
    }

    public sP uP() {
        return this.Sj;
    }

    public Activity wE() {
        return this.Sj.EjP();
    }

    public abstract com.bytedance.sdk.openadsdk.component.reward.Sj.Sj zR();
}
