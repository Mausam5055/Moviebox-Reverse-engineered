package com.bytedance.sdk.openadsdk.component.Dq;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.core.model.sU;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj {
    private sP EjP;
    private boolean HiB = false;
    private Context Sj;
    private sU TKC;
    private FrameLayout sP;

    public TKC(Context context) {
        this.Sj = context.getApplicationContext();
    }

    public void Dq() {
        try {
            if (HiB()) {
                TEQ();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenVideoManager", "onContinue throw Exception :" + th2.getMessage());
        }
    }

    public boolean EjP() {
        sP sPVar = this.EjP;
        return (sPVar == null || sPVar.aa() == null || !this.EjP.aa().vS()) ? false : true;
    }

    public long Fmk() {
        sP sPVar = this.EjP;
        if (sPVar != null) {
            return sPVar.vS();
        }
        return 0L;
    }

    public boolean HiB() {
        sP sPVar = this.EjP;
        return (sPVar == null || sPVar.aa() == null || !this.EjP.aa().Jcg()) ? false : true;
    }

    public void Jcg() {
        try {
            if (EjP()) {
                this.EjP.Sj();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenVideoManager", "open_ad", "AppOpenVideoManager onPause throw Exception :" + th2.getMessage());
        }
    }

    public void Sj(int i11) {
        if (this.EjP != null) {
            Zq.Sj sj2 = new Zq.Sj();
            sj2.Sj(aa());
            sj2.TKC(sef());
            sj2.sP(Fmk());
            sj2.TKC(i11);
            sj2.EjP(this.EjP.Jcg());
            this.EjP.Sj(sj2);
        }
    }

    public void Sj(FrameLayout frameLayout, sU sUVar) {
        this.sP = frameLayout;
        this.TKC = sUVar;
        this.EjP = new sP(this.Sj, frameLayout, sUVar);
    }

    public void Sj(b.InterfaceC0935b interfaceC0935b) {
        sP sPVar = this.EjP;
        if (sPVar != null) {
            sPVar.Sj(interfaceC0935b);
        }
    }

    public void Sj(boolean z10) {
        this.HiB = z10;
    }

    public boolean Sj() {
        com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(0).sP(), this.TKC);
        sPVarSj.sP(this.TKC.aZ());
        sPVarSj.Sj(this.sP.getWidth());
        sPVarSj.sP(this.sP.getHeight());
        sPVarSj.TKC(this.TKC.mZN());
        sPVarSj.Sj(0L);
        sPVarSj.Sj(true);
        return this.EjP.Sj(sPVarSj);
    }

    public boolean Sj(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.Sj sj2, sU sUVar) {
        Sj(frameLayout, sUVar);
        Sj(sj2);
        try {
            return Sj();
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenVideoManager", "open_ad", "ttAppOpenAd playVideo error: " + th2.getMessage());
            return false;
        }
    }

    public void TEQ() {
        sP sPVar = this.EjP;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    public boolean TKC() {
        sP sPVar = this.EjP;
        return (sPVar == null || sPVar.aa() == null || !this.EjP.aa().sP()) ? false : true;
    }

    public void Ym() {
        sP sPVar = this.EjP;
        if (sPVar == null) {
            return;
        }
        this.Sj = null;
        sPVar.TKC();
        this.EjP = null;
    }

    public long aa() {
        sP sPVar = this.EjP;
        if (sPVar != null) {
            return sPVar.HiB();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj
    public long getVideoProgress() {
        return aa();
    }

    public boolean sP() {
        return this.HiB;
    }

    public long sef() {
        sP sPVar = this.EjP;
        if (sPVar != null) {
            return sPVar.Dq() + this.EjP.vS();
        }
        return 0L;
    }

    public void uA() {
        sP sPVar = this.EjP;
        if (sPVar == null) {
            return;
        }
        sPVar.TKC();
        this.EjP = null;
    }

    public boolean vS() {
        sP sPVar = this.EjP;
        return sPVar != null && sPVar.uvD();
    }
}
