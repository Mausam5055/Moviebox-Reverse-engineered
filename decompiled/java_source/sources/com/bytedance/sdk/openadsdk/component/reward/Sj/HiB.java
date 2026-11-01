package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.dx;
import com.google.logging.type.LogSeverity;
import java.util.HashMap;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class HiB {
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj Sj;
    private Sj TKC;
    private final com.bytedance.sdk.openadsdk.component.reward.view.vS sP;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj(boolean z10, boolean z11, boolean z12, com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar, int i11);

        void uvD();
    }

    public HiB(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.Sj = sj2;
        this.sP = new com.bytedance.sdk.openadsdk.component.reward.view.vS(sj2);
    }

    private int Dq() {
        int iGq = this.Sj.sP.gq();
        if (iGq <= 5000 && iGq >= 0) {
            if (iGq < 1000) {
                iGq += 1000;
            }
            int iSj = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(this.Sj.sP.If());
            if (iSj <= 5000 && iSj >= 0) {
                if (iSj < 1000) {
                    iSj += 1000;
                }
                return Math.min(iGq, iSj);
            }
        }
        return -1;
    }

    private boolean sP(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj;
        if (!com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Sj.sP) || (sPVarSj = this.Sj.wE.Sj()) == null || sPVarSj.EjP != 0 || z10) {
            return true;
        }
        this.Sj.Mts.TKC(false);
        return false;
    }

    private void uA() {
        if (uP.RiZ(this.Sj.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.ndK) {
                sj2.Mts.sP(true);
                this.Sj.uP.HiB(true);
            }
        }
    }

    public void EjP() {
        Sj(true);
    }

    public boolean HiB() {
        com.bytedance.sdk.openadsdk.component.reward.view.vS vSVar = this.sP;
        if (vSVar != null) {
            return vSVar.HiB();
        }
        return false;
    }

    public boolean Jcg() {
        return this.sP.vS();
    }

    public void Sj() {
        this.sP.Sj();
    }

    public void Sj(Sj sj2) {
        this.TKC = sj2;
    }

    void Sj(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        this.Sj.JcM.Sj(0.0f);
        this.Sj.Wjd.Sj(0.0f);
        if (sU.TKC(this.Sj.sP)) {
            this.Sj.JcM.Sj(8);
            this.Sj.WMZ.Sj(0);
            this.Sj.WMZ.Jcg();
        } else {
            this.Sj.WMZ.Sj(8);
            this.Sj.JcM.Sj(0);
            this.Sj.JcM.jb();
        }
        if (this.Sj.Jcg) {
            FPG.Sj((View) sPVar.sef, 0);
            this.Sj.Wjd.HiB(8);
        }
        this.Sj.Wjd.TKC(8);
        this.Sj.Wjd.Jcg();
        if (sU.TKC(this.Sj.sP)) {
            this.Sj.HpB.sendEmptyMessageDelayed(LogSeverity.EMERGENCY_VALUE, 100L);
            return;
        }
        this.Sj.HpB.sendEmptyMessageDelayed(500, 100L);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        sj2.JcM.Sj(sj2.ndK, true);
        this.Sj.JcM.TKC(true);
        this.Sj.JcM.sP(true);
        Yf yfAa = this.Sj.JcM.aa();
        if (yfAa != null) {
            yfAa.Sj("prerender_page_show", (JSONObject) null);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        this.sP.Sj(hiB);
    }

    public void Sj(boolean z10) {
        if (!sU.EjP(this.Sj.sP)) {
            this.Sj.JcM.Sj(false, TTAdConstant.DOWNLOAD_URL_CODE, "end_card_timeout");
        }
        this.Sj.JcM.fF();
        this.Sj.JcM.Sj(8);
        this.Sj.WMZ.Sj(8);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        if (sj2.Jcg) {
            FPG.Sj((View) sj2.f20994kb.sef, 8);
            this.Sj.Wjd.HiB(0);
        }
        this.Sj.Wjd.TKC(8);
        if (!this.Sj.sP.Ph()) {
            com.bytedance.sdk.openadsdk.activity.vS vSVar = this.Sj.HS;
            if (vSVar != null) {
                this.sP.Sj(vSVar.uP().Dq());
            }
            this.sP.sP();
        } else if (!this.sP.Sj(this.Sj.f20992ib)) {
            this.Sj.Fm.finish();
        }
        this.Sj.Wjd.Jcg();
        if (z10) {
            TKC(this.Sj.f20994kb);
        }
        this.Sj.Mts.TKC(false);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        sj3.LqL.Sj(sj3.sP.TT());
    }

    public void Sj(boolean z10, com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        Zq zq2;
        if (uP.TzV(this.Sj.sP)) {
            return;
        }
        this.Sj.TzV.set(z10);
        sPVar.sef();
        if (this.Sj.sP.Ph()) {
            this.Sj.Mts.EjP(false);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            sj2.Mts.EjP(uP.TzV(sj2.sP));
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        sj3.Mts.TKC(uP.Jcg(sj3.sP));
        if (this.Sj.sP.EjP() && uP.Jcg(this.Sj.sP) && z10) {
            this.Sj.Mts.EjP(true);
        }
        this.Sj.JcM.Yf();
        com.bytedance.sdk.openadsdk.core.model.TzV tzV = this.Sj.Wjd.Zq;
        if (tzV != null) {
            tzV.HiB();
        }
        this.Sj.Wjd.TKC();
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2 = this.Sj.wE;
        if (dq2 != null) {
            dq2.vS();
        }
        Dq dq3 = this.Sj.uP;
        if (dq3 != null) {
            dq3.Jcg(Dq.sP);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        if (!TextUtils.isEmpty(sU.Sj(sj4.Ei, sj4.sP))) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.Sj;
            dx.Sj(sj5.Fm, uP.Fmk(sj5.sP), this.Sj.sP, com.bytedance.sdk.openadsdk.EjP.sP.Sj.TKC);
            return;
        }
        if (sU.TKC(this.Sj.sP) && (zq2 = this.Sj.WMZ) != null) {
            zq2.vS();
        }
        if (!sU.Sj(this.Sj.sP) && (sU.TKC(this.Sj.sP) || !this.Sj.JcM.Fm())) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = this.Sj;
            if (sU.Sj(sj6.sP, sj6.JcM.TzV(), this.Sj.JcM.HpB(), this.Sj.WMZ.aa(), this.Sj.JcM.LD()) || uP.Jcg(this.Sj.sP)) {
                if (!sU.EjP(this.Sj.sP) && !uP.Jcg(this.Sj.sP) && !sU.TKC(this.Sj.sP)) {
                    this.Sj.JcM.Sj(true, 0, (String) null);
                }
                if (!uP.Jcg(this.Sj.sP)) {
                    TKC(sPVar);
                } else {
                    if (uP.ib(this.Sj.sP) && !this.Sj.JcM.Wjd()) {
                        if (!this.Sj.JcM.TzV()) {
                            if (this.Sj.uP.EjP() != null) {
                                this.Sj.uP.EjP().Sj(2);
                            }
                            this.Sj.uP.HiB();
                            return;
                        } else {
                            if (this.Sj.uP.EjP() != null) {
                                this.Sj.uP.EjP().Sj(-1);
                            }
                            this.Sj.uP.vS();
                            this.Sj.Mts.EjP(false);
                            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj7 = this.Sj;
                            sj7.uP.Sj(sj7.LqL.HiB());
                            return;
                        }
                    }
                    if (this.Sj.JcM.Wjd() && this.Sj.uP.EjP() != null) {
                        this.Sj.uP.EjP().Sj(1);
                    }
                    sP(sPVar);
                }
                Sj(sPVar);
                return;
            }
        }
        EjP();
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0126  */
    public void Sj(boolean z10, boolean z11, boolean z12, com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar, int i11) {
        int i12;
        if (this.Sj != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.Sj.sP);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.Sj.sP);
        }
        Objects.toString(sPVar);
        if (this.Sj.Fm.isFinishing() || sPVar == null) {
            return;
        }
        this.Sj.Wjd.aa();
        if (z11) {
            this.Sj.Zq.set(true);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        boolean z13 = false;
        if (sj2.Uc && !sj2.uvD.get() && !com.bytedance.sdk.openadsdk.core.model.TzV.uA(this.Sj.sP) && (!com.bytedance.sdk.openadsdk.core.model.TzV.sP(this.Sj.sP) || !this.Sj.Zq.get() || !this.Sj.dNu.get())) {
            if ((com.bytedance.sdk.openadsdk.core.model.TzV.sP(this.Sj.sP) && z12) || !sP(z11)) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.model.TzV.sP(this.Sj.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.EjP(this.Sj.sP) || com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.Sj.sP)) {
                this.Sj.Mts.TKC(false);
                sPVar.Zq();
                return;
            }
        }
        if (this.Sj.Fm.isDestroyed() || this.Sj.Fm.isFinishing()) {
            return;
        }
        if (this.Sj.sP.Fqk()) {
            com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2 = this.Sj.wE;
            com.bytedance.sdk.openadsdk.core.Dq.TKC brandBannerController = (dq2 == null || dq2.Sj() == null) ? null : dq2.Sj().getBrandBannerController();
            if (brandBannerController != null) {
                brandBannerController.sP();
            }
            this.Sj.Fm.finish();
            return;
        }
        Sj sj3 = this.TKC;
        if (sj3 != null) {
            sj3.Sj(z10, z11, z12, sPVar, i11);
            return;
        }
        this.Sj.f20992ib.sef();
        this.Sj.JcM.LqL();
        this.Sj.Ym.set(false);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
        if (sj4.Ir) {
            com.bytedance.sdk.openadsdk.activity.vS vSVar = sj4.HS;
            if (!(vSVar instanceof com.bytedance.sdk.openadsdk.activity.TKC) || vSVar.kF()) {
                this.Sj.f20989aa.set(false);
            }
        } else {
            this.Sj.f20989aa.set(false);
        }
        this.Sj.LD.Sj();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.Sj;
        sef sefVar = sj5.Mts;
        if (!sj5.Jcg && sj5.sP.RrR()) {
            z13 = true;
        }
        sefVar.Sj(z13);
        if (this.Sj.TEQ.getAndSet(true)) {
            return;
        }
        if (uP.sP(this.Sj.sP)) {
            HashMap map = new HashMap();
            if (this.Sj.JcM.Wjd()) {
                i12 = 1;
            } else {
                i12 = !this.Sj.JcM.RiZ() ? -1 : 2;
            }
            map.put("webview_state", Integer.valueOf(i12));
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = this.Sj;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sj6.sP, sj6.HiB, z10, z11, z12, sj6.Fm.isFinishing(), i11, map);
        }
        if (this.Sj.sP.EjP() && uP.Jcg(this.Sj.sP) && z10) {
            this.Sj.Mts.EjP(true);
        }
        if (uP.Jcg(this.Sj.sP)) {
            this.Sj.Mts.TKC(true);
        }
        uA();
        if (!uP.HiB(this.Sj.sP)) {
            Sj(z10, sPVar);
            return;
        }
        this.Sj.Wjd.TKC(8);
        this.Sj.Mts.TKC(true);
        this.Sj.Wjd.TKC();
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq3 = this.Sj.wE;
        if (dq3 != null) {
            dq3.vS();
        }
        this.Sj.uP.TzV();
    }

    public void TKC() {
        this.sP.EjP();
    }

    public boolean TKC(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        boolean z10;
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        this.Sj.Dq = Dq();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
        int i11 = sj2.Dq;
        if (sj2.sP.uA()) {
            return false;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.Sj;
        int i12 = sj3.Dq;
        if (i12 == -1) {
            if (uP.Dq(sj3.sP) && this.Sj.JcM.TzV()) {
                sPVar.kF();
            } else if (uP.TEQ(this.Sj.sP) && this.Sj.JcM.TzV()) {
                sPVar.kF();
            } else {
                sPVar.Zq();
                z10 = true;
            }
            z10 = false;
        } else {
            if (i12 >= 0) {
                sj3.f20991dx.set(false);
                Message messageObtain = Message.obtain();
                messageObtain.what = LogSeverity.ALERT_VALUE;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.Sj;
                messageObtain.arg1 = sj4.Dq;
                sj4.HpB.sendMessage(messageObtain);
                if (!uP.uA(this.Sj.sP)) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        if (this.Sj.JcM.wE() ? false : z10) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.Sj;
            if (sj5.f20996xu == null || !(!sj5.Ir || (vSVar = sj5.HS) == null || vSVar.kF())) {
                return true;
            }
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = this.Sj;
            sj6.f20996xu.Sj(sj6.Dq);
        }
        return true;
    }

    public void sP() {
        this.sP.TKC();
    }

    public void sP(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        int iMj = this.Sj.sP.mj();
        if (uP.TzV(this.Sj.sP)) {
            iMj = (this.Sj.sP.oWa() + 1) * 1000;
        }
        if (iMj == -1) {
            if (uP.Dq(this.Sj.sP)) {
                if (uP.ib(this.Sj.sP) && this.Sj.uP.Jcg()) {
                    sPVar.Zq();
                    return;
                } else {
                    sPVar.kF();
                    return;
                }
            }
            sPVar.Zq();
        } else {
            if (iMj < 0) {
                return;
            }
            this.Sj.Mts.EjP(false);
            if (!uP.Dq(this.Sj.sP)) {
                this.Sj.HpB.sendEmptyMessageDelayed(600, iMj);
            } else {
                if (!uP.ib(this.Sj.sP) || !this.Sj.uP.Jcg()) {
                    this.Sj.HpB.sendEmptyMessageDelayed(1, iMj);
                    return;
                }
                this.Sj.HpB.sendEmptyMessageDelayed(600, iMj);
            }
        }
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = this.Sj.f20996xu;
        if (fmk != null) {
            fmk.Sj(iMj);
        }
    }

    public Sj vS() {
        return this.TKC;
    }
}
