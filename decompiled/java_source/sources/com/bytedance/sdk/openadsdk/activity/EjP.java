package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.sP.uA;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.sef;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Sj {
    int HiB;
    private boolean vS;

    public EjP(sP sPVar, sU sUVar, int i11) {
        super(sPVar, sUVar, i11);
    }

    private void HiB(int i11) {
        this.TKC.Mts.Sj(null, new SpannableStringBuilder(String.format(ib.Sj(dNu.Sj(), "tt_skip_ad_time_text"), Integer.valueOf(i11))));
    }

    private boolean Sj(sU sUVar) {
        return sUVar == null || sUVar.tY() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(int i11) {
        int iRiZ;
        sU sUVar;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null || (sUVar = sj2.sP) == null) {
            iRiZ = sj2 != null ? dNu.EjP().RiZ(String.valueOf(this.TKC.vS)) : 5;
        } else {
            iRiZ = sUVar.Sj();
        }
        if (!dNu.EjP().vS(String.valueOf(this.TKC.vS)) || (!sU.HiB(this.TKC.sP) && !this.TKC.TKC)) {
            if (i11 >= iRiZ) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
                if (!sj3.gY) {
                    sj3.Sj(true);
                }
                sP();
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
        if (!sj4.gY) {
            sj4.Sj(true);
        }
        if (i11 > iRiZ) {
            sP();
        } else {
            HiB(iRiZ - i11);
            this.TKC.Mts.HiB(false);
        }
    }

    private boolean sP(sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        return dNu.EjP().sU(String.valueOf(this.TKC.vS));
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    protected void Jcg() {
        Yf();
        if (this.Dq.EjP()) {
            this.TKC.wE.TEQ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(Bundle bundle) {
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0040  */
    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public boolean Sj(long j11, boolean z10) {
        if (!this.Dq.EjP()) {
            Jcg jcg = new Jcg();
            jcg.Sj(System.currentTimeMillis(), 1.0f);
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
            if (sPVar == null || !(sPVar instanceof uA)) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
                sj2.f20992ib.Sj(sj2.Wjd.vS(), jcg);
            } else {
                this.TKC.f20992ib.Sj(((uA) sPVar).Yf(), jcg);
            }
            b.InterfaceC0935b interfaceC0935b = new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.EjP.4
                boolean Sj;

                @Override // u5.b.InterfaceC0935b
                public void Sj() {
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    EjP.this.Fmk();
                    sP sPVarUP = EjP.this.uP();
                    EjP ejP = EjP.this;
                    sPVarUP.Sj(ejP, ejP.sP(6));
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j12, int i11) {
                    Fmk fmk;
                    if (this.Sj) {
                        return;
                    }
                    this.Sj = true;
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    EjP.this.Fmk();
                    EjP.this.TKC.f20992ib.Sj(j12, j12);
                    EjP.this.TKC.RiZ.set(true);
                    if (EjP.this.TKC.sP.oDQ()) {
                        EjP.this.TKC.sP.xD(1);
                        EjP.this.TKC.Wjd.dNu();
                    }
                    if (EjP.this.TKC.sP.dx() == 21 && !EjP.this.TKC.sP.Dq()) {
                        EjP.this.TKC.sP.sP(true);
                        EjP.this.TKC.Wjd.dNu();
                    }
                    EjP ejP = EjP.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = ejP.TKC;
                    if (sj3.gR) {
                        sP.HiB hiBSP = ejP.sP(5);
                        hiBSP.HiB = true;
                        EjP.this.uP().Sj(EjP.this, hiBSP);
                        return;
                    }
                    if (!sj3.TKC) {
                        if (sj3.sP.WM()) {
                            EjP.this.TKC.Mts.TKC();
                            return;
                        }
                        if (!sU.HiB(EjP.this.TKC.sP)) {
                            EjP.this.TKC.f20992ib.Sj("skip", true);
                        }
                        EjP.this.ley();
                        return;
                    }
                    if (sj3.sP.WM()) {
                        EjP.this.TKC.Mts.TKC();
                        return;
                    }
                    EjP.this.Sj(false, 5);
                    if (TzV.sP(EjP.this.TKC.sP) && (fmk = EjP.this.TKC.f20996xu) != null) {
                        fmk.Sj(0L);
                    }
                    if (sU.HiB(EjP.this.TKC.sP)) {
                        return;
                    }
                    EjP.this.TKC.f20992ib.Sj("skip", true);
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j12, long j13) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = EjP.this.TKC;
                    if (!sj3.qRN && sj3.f20992ib.sP()) {
                        EjP.this.TKC.f20992ib.uvD();
                    }
                    if (EjP.this.TKC.TEQ.get()) {
                        return;
                    }
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    if (j12 != EjP.this.TKC.f20992ib.Dq()) {
                        EjP.this.Fmk();
                    }
                    EjP.this.TKC.f20992ib.Sj(j12, j13);
                    EjP ejP = EjP.this;
                    long j14 = j12 / 1000;
                    ejP.HiB = (int) (ejP.TKC.f20992ib.Yf() - j14);
                    int i11 = (int) j14;
                    if ((EjP.this.TKC.sU.get() || EjP.this.TKC.Ym.get()) && EjP.this.TKC.f20992ib.sP()) {
                        EjP.this.TKC.f20992ib.uvD();
                    }
                    EjP.this.TKC(i11);
                    EjP.this.Sj((j12 * 1.0f) / j13);
                    EjP ejP2 = EjP.this;
                    int i12 = ejP2.HiB;
                    if (i12 >= 0) {
                        ejP2.TKC.Mts.Sj(String.valueOf(i12), null);
                    }
                }

                @Override // u5.b.InterfaceC0935b
                public void sP(long j12, int i11) {
                    ((Sj) EjP.this).Sj.removeMessages(300);
                    TzV tzV = EjP.this.TKC.Wjd.Zq;
                    if (tzV != null) {
                        tzV.TEQ();
                    }
                    if (EjP.this.TKC.f20992ib.sP()) {
                        EjP.this.HiB();
                        return;
                    }
                    EjP.this.TKC.f20992ib.sef();
                    sP sPVarUP = EjP.this.uP();
                    EjP ejP = EjP.this;
                    sPVarUP.Sj(ejP, ejP.sP(3));
                }
            };
            this.TKC.f20992ib.Sj(interfaceC0935b);
            TzV tzV = this.TKC.Wjd.Zq;
            if (tzV != null) {
                tzV.Sj(interfaceC0935b);
            }
            return this.TKC.f20992ib.Sj(j11, z10, null, this.sP);
        }
        Dq dq2 = this.TKC.wE;
        Jcg jcg2 = (dq2 == null || dq2.Sj() == null) ? new Jcg() : this.TKC.wE.Sj().getAdShowTime();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar2 = this.sP;
        if (sPVar2 == null || !(sPVar2 instanceof uA)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
            sj3.f20992ib.Sj(sj3.wE.sP(), jcg2);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
            if (sj4.dwU) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = this.TKC;
                sj5.f20992ib.Sj(sj5.wE.sP(), jcg2);
            } else {
                sj4.f20992ib.Sj(((uA) sPVar2).Yf(), jcg2);
            }
        }
        HashMap map = new HashMap();
        Dq dq3 = this.TKC.wE;
        if (dq3 != null) {
            map.put("dynamic_show_type", Integer.valueOf(dq3.uA()));
            JSONObject jSONObjectSj = this.TKC.wE.Sj((JSONObject) null);
            if (jSONObjectSj != null) {
                Iterator<String> itKeys = jSONObjectSj.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        map.put(next, jSONObjectSj.get(next));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        this.TKC.f20992ib.Sj(new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.EjP.3
            boolean Sj;

            @Override // u5.b.InterfaceC0935b
            public void Sj() {
                ((Sj) EjP.this).Sj.removeMessages(300);
                EjP.this.Fmk();
                sP sPVarUP = EjP.this.uP();
                EjP ejP = EjP.this;
                sPVarUP.Sj(ejP, ejP.sP(6));
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, int i11) {
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                ((Sj) EjP.this).Sj.removeMessages(300);
                EjP.this.Fmk();
                EjP.this.TKC.f20992ib.Sj(j12, j12);
                EjP.this.TKC.wE.sP(true);
                if (EjP.this.TKC.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = EjP.this.TKC;
                    if (sj6.TKC) {
                        sj6.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (EjP.this.TKC.sP.dx() == 21 && !EjP.this.TKC.sP.Dq()) {
                    EjP.this.TKC.sP.sP(true);
                    EjP.this.TKC.Wjd.dNu();
                }
                EjP ejP = EjP.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj7 = ejP.TKC;
                if (sj7.gR) {
                    sP.HiB hiBSP = ejP.sP(5);
                    hiBSP.HiB = true;
                    EjP.this.uP().Sj(EjP.this, hiBSP);
                    return;
                }
                if (sj7.TKC) {
                    if (sj7.sP.WM()) {
                        if (EjP.this.TKC.wE.uA() == 1) {
                            EjP.this.TKC.Mts.TKC();
                            return;
                        }
                        return;
                    } else {
                        EjP.this.Sj(false, 5);
                        if (sU.HiB(EjP.this.TKC.sP)) {
                            return;
                        }
                        EjP.this.TKC.f20992ib.Sj("skip", true);
                        return;
                    }
                }
                if (sU.HiB(sj7.sP)) {
                    EjP.this.ley();
                    return;
                }
                Dq dq4 = EjP.this.TKC.wE;
                if (dq4 == null || dq4.Sj() == null) {
                    return;
                }
                EjP.this.TKC.wE.Sj().setTime("0", 0, 0, false);
                if (EjP.this.TKC.wE.Dq()) {
                    EjP.this.TKC.Mts.Sj("0", "X");
                    EjP.this.TKC.Mts.HiB(true);
                    EjP.this.TKC.Mts.TKC();
                }
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, long j13) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = EjP.this.TKC;
                if (!sj6.qRN && sj6.f20992ib.sP()) {
                    EjP.this.TKC.f20992ib.uvD();
                }
                if (EjP.this.TKC.TEQ.get()) {
                    return;
                }
                ((Sj) EjP.this).Sj.removeMessages(300);
                if (j12 != EjP.this.TKC.f20992ib.Dq()) {
                    EjP.this.Fmk();
                }
                if (EjP.this.TKC.f20992ib.sP()) {
                    EjP.this.TKC.f20992ib.Sj(j12, j13);
                    EjP ejP = EjP.this;
                    long j14 = j12 / 1000;
                    ejP.HiB = (int) (ejP.TKC.f20992ib.Yf() - j14);
                    int i11 = (int) j14;
                    if ((EjP.this.TKC.sU.get() || EjP.this.TKC.Ym.get()) && EjP.this.TKC.f20992ib.sP()) {
                        EjP.this.TKC.f20992ib.uvD();
                    }
                    Dq dq4 = EjP.this.TKC.wE;
                    if (dq4 != null && dq4.Sj() != null) {
                        EjP.this.TKC.wE.Sj().setTime(String.valueOf(EjP.this.HiB), i11, 0, false);
                    }
                    EjP.this.Sj((j12 * 1.0f) / j13);
                    if (EjP.this.TKC.wE.Dq() || EjP.this.TKC.sP.Fqk()) {
                        EjP.this.TKC(i11);
                        EjP ejP2 = EjP.this;
                        if (ejP2.HiB >= 0) {
                            ejP2.TKC.Mts.EjP(true);
                            EjP ejP3 = EjP.this;
                            ejP3.TKC.Mts.Sj(String.valueOf(ejP3.HiB), null);
                        }
                    }
                }
            }

            @Override // u5.b.InterfaceC0935b
            public void sP(long j12, int i11) {
                ((Sj) EjP.this).Sj.removeMessages(300);
                TzV tzV2 = EjP.this.TKC.Wjd.Zq;
                if (tzV2 != null) {
                    tzV2.TEQ();
                }
                if (EjP.this.TKC.f20992ib.sP()) {
                    EjP.this.HiB();
                    return;
                }
                EjP.this.TKC.f20992ib.sef();
                EjP.this.TKC.wE.Sj(true);
                sP sPVarUP = EjP.this.uP();
                EjP ejP = EjP.this;
                sPVarUP.Sj(ejP, ejP.sP(3));
            }
        });
        return this.TKC.f20992ib.Sj(j11, z10, map, this.sP);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    protected void TKC() {
        final View viewTEQ = this.TKC.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.EjP.1
                /* JADX WARN: Code duplicated, block: B:28:0x00d4  */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean zHiB;
                    if (EjP.this.TKC.JcM.wE() && EjP.this.TKC.TEQ.get()) {
                        boolean zFmk = EjP.this.TKC.WMZ.Fmk();
                        EjP.this.TKC.JcM.vS(zFmk);
                        EjP.this.TKC.Wjd.HiB(8);
                        EjP.this.TKC.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!sU.TKC(EjP.this.TKC.sP)) {
                            return;
                        }
                        if (sU.TKC(EjP.this.TKC.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!EjP.this.TKC.sP.Snq()) {
                        zHiB = false;
                    } else if (EjP.this.TKC.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = EjP.this.TKC;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = EjP.this.TKC.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (EjP.this.TKC.sP.AE() != 0 || EjP.this.TKC.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        EjP.this.TKC.sP.xD(11);
                        if (EjP.this.TKC.JcM.EjP()) {
                            EjP.this.TKC.sP.xD(12);
                        }
                        try {
                            EjP.this.TKC.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    EjP.this.TKC.JcM.ley();
                    EjP.this.TKC.WMZ.Ym();
                    EjP.this.TKC.LqL.vS();
                    EjP.this.ley();
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.TKC.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() { // from class: com.bytedance.sdk.openadsdk.activity.EjP.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view) {
                if (uP.Dq(EjP.this.TKC.sP) && (uP.TzV(EjP.this.TKC.sP) || EjP.this.TKC.TEQ.get())) {
                    if (EjP.this.TKC.uP.Sj()) {
                        EjP.this.TKC.uP.Sj(5);
                        return;
                    } else {
                        EjP.this.TKC.JcM.Dq();
                        return;
                    }
                }
                if (uP.TzV(EjP.this.TKC.sP) || (TzV.Sj(EjP.this.TKC.sP) && !EjP.this.TKC.uvD.get())) {
                    if (!uP.Dq(EjP.this.TKC.sP) && EjP.this.TKC.uP.Sj()) {
                        EjP.this.TKC.uP.Sj(4);
                    }
                    EjP.this.ley();
                    return;
                }
                if (EjP.this.TKC.sP.yr()) {
                    if (EjP.this.TKC.Wjd.Ym() != null) {
                        EjP.this.TKC.sP.xD(2);
                        EjP.this.TKC.Wjd.dNu();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = EjP.this.TKC;
                if (!sj2.TKC && sj2.sP.Snq() && !EjP.this.TKC.sP.Ph()) {
                    EjP.this.TKC.sP.xD(13);
                    try {
                        EjP.this.TKC.Wjd.dNu();
                        return;
                    } catch (Exception unused) {
                    }
                }
                Zq.Sj sj3 = new Zq.Sj();
                sj3.Sj(EjP.this.TKC.f20992ib.Jcg());
                sj3.TKC(EjP.this.TKC.f20992ib.sU());
                sj3.sP(EjP.this.TKC.f20992ib.Ym());
                sj3.TKC(3);
                sj3.EjP(EjP.this.TKC.f20992ib.RiZ());
                com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(EjP.this.TKC.f20992ib.TKC(), sj3, EjP.this.TKC.f20992ib.Sj());
                com.bytedance.sdk.openadsdk.core.ib.TKC(EjP.this.TKC.vS);
                EjP.this.TKC.f20992ib.Sj("skip", false);
                EjP.this.TKC.Mts.EjP(false);
                EjP ejP = EjP.this;
                if (ejP.TKC.TKC) {
                    ejP.Sj(true, 4);
                } else {
                    ejP.ley();
                }
                sU sUVar = EjP.this.TKC.sP;
                if (sUVar != null && sUVar.GMp() != null) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = EjP.this.TKC;
                    if (sj4.f20992ib != null) {
                        sj4.sP.GMp().Sj().vS(EjP.this.TKC.f20992ib.Jcg());
                        EjP.this.TKC.sP.GMp().Sj().HiB(EjP.this.TKC.f20992ib.Jcg());
                    }
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(EjP.this.TKC.sP, 5);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view, String str) {
                EjP ejP = EjP.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = ejP.TKC;
                sj2.ndK = !sj2.ndK;
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = ejP.sP;
                if (sPVar != null && sPVar.EjP() != null) {
                    EjP.this.sP.EjP().Sj(EjP.this.TKC.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = EjP.this.TKC;
                sj3.f20992ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(EjP.this.TKC.sP) || EjP.this.TKC.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = EjP.this.TKC;
                    sj4.JcM.HiB(sj4.ndK);
                    sU sUVar = EjP.this.TKC.sP;
                    if (sUVar == null || sUVar.GMp() == null || EjP.this.TKC.sP.GMp().Sj() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = EjP.this.TKC;
                    if (sj5.f20992ib != null) {
                        if (sj5.ndK) {
                            sj5.sP.GMp().Sj().Dq(EjP.this.TKC.f20992ib.Jcg());
                        } else {
                            sj5.sP.GMp().Sj().uA(EjP.this.TKC.f20992ib.Jcg());
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void TKC(View view) {
                View view2 = viewTEQ;
                if (view2 != null) {
                    view2.performClick();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void sP(View view) {
                EjP ejP = EjP.this;
                ejP.TKC.LD.Sj(ejP.sP);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.activity.vS
    public void TKC(Activity activity) {
        super.TKC(activity);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null || !sP(sj2.sP) || Sj(this.TKC.sP)) {
            return;
        }
        if (this.vS) {
            this.vS = false;
            ley();
        } else if (this.TKC.JcM.WMZ()) {
            ley();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    protected boolean a_() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public String b_() {
        return "fullscreen_interstitial_ad";
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void c_() {
        if (this.TKC.sP.tY() != 100.0f) {
            this.vS = true;
        }
        LD();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    public void sP() {
        if (sU.HiB(this.TKC.sP)) {
            this.TKC.Mts.Sj(null, TTAdDislikeToast.getSkipText());
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            if (sj2.TKC) {
                this.TKC.Mts.Sj(null, TTAdDislikeToast.getSkipText());
            } else {
                sj2.Mts.Sj(null, "X");
            }
        }
        this.TKC.Mts.HiB(true);
    }
}
