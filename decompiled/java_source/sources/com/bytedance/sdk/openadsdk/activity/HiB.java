package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.ib;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.sef;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends Sj {
    private static String Fmk;
    private static String Zq;
    private static String dNu;
    private static String sef;
    private static String uvD;
    protected int HiB;
    int Jcg;
    private String RiZ;
    private String TzV;
    private int sU;
    protected int vS;

    public HiB(sP sPVar, sU sUVar, int i11) {
        super(sPVar, sUVar, i11);
        this.sU = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0078  */
    public void JcM() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(this.TKC.f20992ib.Jcg());
        sj2.TKC(this.TKC.f20992ib.sU());
        sj2.sP(this.TKC.f20992ib.Ym());
        sj2.TKC(3);
        sj2.EjP(this.TKC.f20992ib.RiZ());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.TKC.f20992ib.TKC(), sj2, this.TKC.f20992ib.Sj());
        ib.TKC(this.TKC.vS);
        this.TKC.f20992ib.Sj("skip", false);
        if (this.TKC.TKC) {
            Sj(true, 4);
            if (TzV.Sj(this.TKC.sP) && !this.TKC.uvD.get()) {
                ley();
            }
        } else {
            ley();
        }
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.TKC.sP.GMp();
        if (sjGMp != null) {
            com.bytedance.sdk.openadsdk.core.Ym.EjP ejPSj = sjGMp.Sj();
            long jJcg = this.TKC.f20992ib.Jcg();
            ejPSj.vS(jJcg);
            ejPSj.HiB(jJcg);
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.TKC.sP, 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(final boolean z10, boolean z11, final Runnable runnable) {
        if (!z11 && uP().Ym().getBoolean("user_has_give_up_reward", false) && (uP.Dq(this.TKC.sP) || runnable != null)) {
            if (runnable == null) {
                JcM();
            }
            return false;
        }
        if (!dNu.EjP().Dq(String.valueOf(this.TKC.vS))) {
            if (runnable == null) {
                if (z10) {
                    ley();
                    return false;
                }
                JcM();
            }
            return false;
        }
        if (uP().Ym().getBoolean("reward_verify", false)) {
            if (runnable == null) {
                if (uP.Dq(this.TKC.sP)) {
                    JcM();
                    return false;
                }
                if (z10) {
                    ley();
                    return false;
                }
                JcM();
            }
            return false;
        }
        this.TKC.sU.set(true);
        this.TKC.f20992ib.uvD();
        if (z10) {
            this.TKC.uP.sef();
        }
        final com.bytedance.sdk.openadsdk.core.widget.sP sPVar = new com.bytedance.sdk.openadsdk.core.widget.sP(wE());
        this.sP.Fmk = sPVar;
        if (z10) {
            sPVar.Sj(Fmk).sP(sef).TKC(Zq);
        } else {
            sPVar.Sj(uvD).sP(dNu).TKC(Zq);
        }
        this.sP.Fmk.Sj(new com.bytedance.sdk.openadsdk.core.widget.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.5
            @Override // com.bytedance.sdk.openadsdk.core.widget.sP.Sj
            public void Sj() {
                HiB.this.TKC.f20992ib.Zq();
                if (z10) {
                    HiB.this.TKC.uP.HiB(1000);
                }
                sPVar.dismiss();
                HiB.this.TKC.sU.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.sP.Sj
            public void sP() {
                sPVar.dismiss();
                HiB.this.uP().Ym().putBoolean("user_has_give_up_reward", true);
                HiB.this.TKC.sU.set(false);
                HiB.this.TKC.uP.vS(Integer.MAX_VALUE);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                    return;
                }
                if (!z10) {
                    HiB.this.JcM();
                    return;
                }
                if (uP.Dq(HiB.this.TKC.sP)) {
                    if (HiB.this.TKC.uP.Sj()) {
                        HiB.this.TKC.uP.Sj(5);
                        return;
                    } else {
                        HiB.this.JcM();
                        return;
                    }
                }
                HiB.this.TKC.LqL.vS();
                if (HiB.this.TKC.uP.Sj()) {
                    HiB.this.TKC.uP.Sj(4);
                }
                HiB.this.ley();
            }
        }).show();
        return true;
    }

    private JSONObject fF() {
        JSONObject jSONObject = new JSONObject();
        int iDx = (int) this.TKC.f20992ib.dx();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, this.TKC.sP.uP());
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, this.TKC.sP.wE());
            jSONObject.put("network", com.bytedance.sdk.component.utils.TzV.TKC(this.TKC.Ei));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int iHpB = this.TKC.sP.HpB();
            String strTKC = "unKnow";
            if (iHpB == 2) {
                strTKC = Mts.sP();
            } else if (iHpB == 1) {
                strTKC = Mts.TKC();
            }
            jSONObject.put("user_agent", strTKC);
            JSONObject jSONObjectDhB = this.TKC.sP.DhB();
            jSONObjectDhB.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            jSONObject.put("extra", jSONObjectDhB);
            jSONObject.put("media_extra", this.RiZ);
            jSONObject.put("video_duration", this.TKC.sP.UHs().K());
            jSONObject.put("play_start_ts", this.vS);
            jSONObject.put("play_end_ts", this.HiB);
            jSONObject.put("duration", iDx);
            jSONObject.put("user_id", this.TzV);
            jSONObject.put("trans_id", com.bytedance.sdk.openadsdk.utils.ib.Sj().replace("-", ""));
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.RewardAdScene", "", th2);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    protected void Jcg() {
        Yf();
        if (this.Dq.EjP()) {
            this.TKC.wE.TEQ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(int i11) {
        if (i11 == 10000) {
            ib();
        }
    }

    public void Sj(long j11, long j12) {
        if (this.TKC.gR) {
            return;
        }
        sU sUVar = this.Dq;
        if (sUVar != null && sUVar.LqL() >= 0 && this.Dq.sP() >= 0) {
            sP(j11, this.Dq.sP());
            return;
        }
        if (j12 <= 0) {
            return;
        }
        long j13 = j11 + (((long) this.TKC.UHs) * 1000);
        if (this.sU == -1) {
            this.sU = dNu.EjP().ley(String.valueOf(this.TKC.vS)).vS;
        }
        if (j12 >= 30000 && j13 >= 27000) {
            ib();
        } else if ((j13 * 100) / j12 >= this.sU) {
            ib();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(Activity activity, sP.HiB hiB) {
        super.Sj(activity, hiB);
        if (activity.isFinishing()) {
            return;
        }
        Intent intent = activity.getIntent();
        this.RiZ = intent.getStringExtra("media_extra");
        this.TzV = intent.getStringExtra("user_id");
        try {
            if (uvD == null) {
                uvD = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_reward_msg");
                Fmk = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_msgPlayable");
                Zq = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_negtiveBtnBtnText");
                dNu = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_postiveBtnText");
                sef = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.RewardAdScene", th2.getMessage());
        }
        sP sPVarUP = uP();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null || sPVarUP == null) {
            return;
        }
        sj2.f20995tz = sPVarUP.sP;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(final String str, final JSONObject jSONObject) {
        if ("skipToNextAd".equals(str) && this.TKC.HS != null && uP().Jcg() == null && Sj(uP.TKC(this.TKC.sP), false, new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.7
            @Override // java.lang.Runnable
            public void run() {
                HiB.super.Sj(str, jSONObject);
            }
        })) {
            return;
        }
        super.Sj(str, jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public boolean Sj(long j11, boolean z10) {
        if (!this.Dq.EjP()) {
            Jcg jcg = new Jcg();
            jcg.Sj(System.currentTimeMillis(), 1.0f);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            sj2.f20992ib.Sj(sj2.Wjd.vS(), jcg);
            b.InterfaceC0935b interfaceC0935b = new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.4
                boolean Sj;

                @Override // u5.b.InterfaceC0935b
                public void Sj() {
                    ((Sj) HiB.this).Sj.removeMessages(300);
                    HiB.this.Fmk();
                    HiB.this.ib();
                    sP sPVarUP = HiB.this.uP();
                    HiB hiB = HiB.this;
                    sPVarUP.Sj(hiB, hiB.sP(6));
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j12, int i11) {
                    Fmk fmk;
                    if (this.Sj) {
                        return;
                    }
                    this.Sj = true;
                    ((Sj) HiB.this).Sj.removeMessages(300);
                    HiB.this.Fmk();
                    HiB hiB = HiB.this;
                    if (!hiB.TKC.gR) {
                        hiB.ib();
                    }
                    HiB.this.TKC.f20992ib.Sj(j12, j12);
                    HiB.this.TKC.RiZ.set(true);
                    if (HiB.this.TKC.sP.oDQ()) {
                        HiB.this.TKC.sP.xD(1);
                        HiB.this.TKC.Wjd.dNu();
                    }
                    if (HiB.this.TKC.sP.dx() == 21 && !HiB.this.TKC.sP.Dq()) {
                        HiB.this.TKC.sP.sP(true);
                        HiB.this.TKC.Wjd.dNu();
                    }
                    HiB.this.HiB = (int) (System.currentTimeMillis() / 1000);
                    HiB hiB2 = HiB.this;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = hiB2.TKC;
                    if (sj3.gR) {
                        sP.HiB hiBSP = hiB2.sP(5);
                        hiBSP.HiB = true;
                        HiB.this.uP().Sj(HiB.this, hiBSP);
                        return;
                    }
                    if (TzV.EjP(sj3.sP) || TzV.sP(HiB.this.TKC.sP) || TzV.HiB(HiB.this.TKC.sP)) {
                        HiB.this.Sj(false, 5);
                        if (!TzV.sP(HiB.this.TKC.sP) || (fmk = HiB.this.TKC.f20996xu) == null) {
                            return;
                        }
                        fmk.Sj(0L);
                        return;
                    }
                    if (TzV.Sj(HiB.this.TKC.sP) && !HiB.this.TKC.uvD.get()) {
                        HiB.this.TKC.Sj(true);
                        HiB.this.TKC.Mts.HiB(true);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = HiB.this.TKC;
                    if (!sj4.TKC) {
                        if (sj4.sP.WM()) {
                            HiB.this.TKC.Mts.TKC();
                            return;
                        }
                        if (!sU.HiB(HiB.this.TKC.sP)) {
                            HiB.this.TKC.f20992ib.Sj("skip", true);
                        }
                        HiB.this.ley();
                        return;
                    }
                    if (sj4.sP.WM()) {
                        HiB.this.TKC.Mts.TKC();
                        return;
                    }
                    HiB.this.Sj(false, 5);
                    if (sU.HiB(HiB.this.TKC.sP)) {
                        return;
                    }
                    HiB.this.TKC.f20992ib.Sj("skip", true);
                }

                @Override // u5.b.InterfaceC0935b
                public void Sj(long j12, long j13) {
                    int iTEQ;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = HiB.this.TKC;
                    if (!sj3.qRN && sj3.f20992ib.sP()) {
                        HiB.this.TKC.f20992ib.uvD();
                    }
                    if (HiB.this.TKC.TEQ.get()) {
                        return;
                    }
                    ((Sj) HiB.this).Sj.removeMessages(300);
                    if (j12 != HiB.this.TKC.f20992ib.Dq()) {
                        HiB.this.Fmk();
                    }
                    HiB.this.TKC.f20992ib.Sj(j12, j13);
                    HiB hiB = HiB.this;
                    long j14 = j12 / 1000;
                    double d11 = j14;
                    hiB.Jcg = (int) (hiB.TKC.f20992ib.Yf() - d11);
                    HiB hiB2 = HiB.this;
                    int i11 = hiB2.Jcg;
                    if (i11 >= 0) {
                        hiB2.TKC.Mts.Sj(String.valueOf(i11), null);
                    }
                    HiB hiB3 = HiB.this;
                    hiB3.Jcg = (int) (hiB3.TKC.f20992ib.Yf() - d11);
                    int i12 = (int) j14;
                    sU sUVar = HiB.this.Dq;
                    if (sUVar == null || sUVar.sP() < 0) {
                        iTEQ = HiB.this.TKC != null ? dNu.EjP().TEQ(String.valueOf(HiB.this.TKC.vS)) : 30;
                    } else {
                        iTEQ = HiB.this.Dq.sP();
                    }
                    boolean z11 = iTEQ >= 0;
                    if ((HiB.this.TKC.sU.get() || HiB.this.TKC.Ym.get()) && HiB.this.TKC.f20992ib.sP()) {
                        HiB.this.TKC.f20992ib.uvD();
                    }
                    HiB.this.TKC.Wjd.EjP(i12);
                    HiB.this.Sj(j12, j13);
                    HiB.this.Sj((j12 * 1.0f) / j13);
                    HiB hiB4 = HiB.this;
                    if (hiB4.Jcg > 0) {
                        hiB4.TKC.Mts.EjP(true);
                        if (!z11 || i12 < iTEQ) {
                            HiB hiB5 = HiB.this;
                            hiB5.TKC.Mts.Sj(String.valueOf(hiB5.Jcg), null);
                        } else {
                            HiB.this.TKC.Sj(true);
                            HiB hiB6 = HiB.this;
                            hiB6.TKC.Mts.Sj(String.valueOf(hiB6.Jcg), TTAdDislikeToast.getSkipText());
                            HiB.this.TKC.Mts.HiB(true);
                        }
                    }
                }

                @Override // u5.b.InterfaceC0935b
                public void sP(long j12, int i11) {
                    ((Sj) HiB.this).Sj.removeMessages(300);
                    TzV tzV = HiB.this.TKC.Wjd.Zq;
                    if (tzV != null) {
                        tzV.TEQ();
                    }
                    if (HiB.this.TKC.f20992ib.sP()) {
                        HiB.this.HiB();
                        return;
                    }
                    HiB.this.TKC.f20992ib.sef();
                    HiB.this.ib();
                    sP sPVarUP = HiB.this.uP();
                    HiB hiB = HiB.this;
                    sPVarUP.Sj(hiB, hiB.sP(3));
                }
            };
            this.TKC.f20992ib.Sj(interfaceC0935b);
            TzV tzV = this.TKC.Wjd.Zq;
            if (tzV != null) {
                tzV.Sj(interfaceC0935b);
            }
            boolean zSj = this.TKC.f20992ib.Sj(j11, z10, null, this.sP);
            if (zSj && !z10) {
                this.vS = (int) (System.currentTimeMillis() / 1000);
            }
            return zSj;
        }
        Dq dq2 = this.TKC.wE;
        Jcg jcg2 = (dq2 == null || dq2.Sj() == null) ? new Jcg() : this.TKC.wE.Sj().getAdShowTime();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
        sj3.f20992ib.Sj(sj3.wE.sP(), jcg2);
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
        this.TKC.f20992ib.Sj(new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.3
            boolean Sj;

            @Override // u5.b.InterfaceC0935b
            public void Sj() {
                ((Sj) HiB.this).Sj.removeMessages(300);
                HiB.this.Fmk();
                HiB.this.ib();
                sP sPVarUP = HiB.this.uP();
                HiB hiB = HiB.this;
                sPVarUP.Sj(hiB, hiB.sP(6));
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, int i11) {
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                ((Sj) HiB.this).Sj.removeMessages(300);
                HiB.this.Fmk();
                HiB.this.TKC.f20992ib.Sj(j12, j12);
                HiB.this.TKC.wE.sP(true);
                if (HiB.this.TKC.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = HiB.this.TKC;
                    if (sj4.TKC) {
                        sj4.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (HiB.this.TKC.sP.dx() == 21 && !HiB.this.TKC.sP.Dq()) {
                    HiB.this.TKC.sP.sP(true);
                    HiB.this.TKC.Wjd.dNu();
                }
                HiB hiB = HiB.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = hiB.TKC;
                if (sj5.gR) {
                    sP sPVarUP = hiB.uP();
                    HiB hiB2 = HiB.this;
                    sPVarUP.Sj(hiB2, hiB2.sP(5));
                } else if (sj5.TKC) {
                    if (!sj5.sP.WM()) {
                        HiB.this.Sj(false, 5);
                        if (!sU.HiB(HiB.this.TKC.sP)) {
                            HiB.this.TKC.f20992ib.Sj("skip", true);
                        }
                    } else if (HiB.this.TKC.wE.uA() == 1) {
                        HiB.this.TKC.Mts.TKC();
                    }
                } else if (!sj5.sP.WM()) {
                    if (!sU.HiB(HiB.this.TKC.sP)) {
                        HiB.this.TKC.f20992ib.Sj("skip", true);
                    }
                    HiB.this.ley();
                } else if (HiB.this.TKC.wE.uA() == 1) {
                    HiB.this.TKC.Mts.TKC();
                }
                HiB.this.HiB = (int) (System.currentTimeMillis() / 1000);
                HiB hiB3 = HiB.this;
                if (hiB3.TKC.gR) {
                    return;
                }
                hiB3.ib();
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, long j13) {
                int iTEQ;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = HiB.this.TKC;
                if (!sj4.qRN && sj4.f20992ib.sP()) {
                    HiB.this.TKC.f20992ib.uvD();
                }
                if (HiB.this.TKC.TEQ.get()) {
                    return;
                }
                ((Sj) HiB.this).Sj.removeMessages(300);
                if (j12 != HiB.this.TKC.f20992ib.Dq()) {
                    HiB.this.Fmk();
                }
                if (HiB.this.TKC.f20992ib.sP()) {
                    HiB.this.TKC.f20992ib.Sj(j12, j13);
                    sU sUVar = HiB.this.Dq;
                    if (sUVar == null || sUVar.sP() < 0) {
                        iTEQ = HiB.this.TKC != null ? dNu.EjP().TEQ(String.valueOf(HiB.this.TKC.vS)) : 30;
                    } else {
                        iTEQ = HiB.this.Dq.sP();
                    }
                    boolean z11 = HiB.this.TKC.wE.Dq() && iTEQ != -1 && iTEQ >= 0;
                    HiB hiB = HiB.this;
                    long j14 = j12 / 1000;
                    hiB.Jcg = (int) (hiB.TKC.f20992ib.Yf() - j14);
                    int i11 = (int) j14;
                    if ((HiB.this.TKC.sU.get() || HiB.this.TKC.Ym.get()) && HiB.this.TKC.f20992ib.sP()) {
                        HiB.this.TKC.f20992ib.uvD();
                    }
                    HiB hiB2 = HiB.this;
                    int i12 = hiB2.Jcg;
                    if (i12 >= 0) {
                        hiB2.TKC.Mts.Sj(String.valueOf(i12), null);
                    }
                    HiB.this.TKC.Wjd.EjP(i11);
                    HiB.this.Sj(j12, j13);
                    Dq dq4 = HiB.this.TKC.wE;
                    if (dq4 != null && dq4.Sj() != null) {
                        HiB.this.TKC.wE.Sj().setTime(String.valueOf(HiB.this.Jcg), i11, 0, false);
                    }
                    HiB.this.Sj((j12 * 1.0f) / j13);
                    HiB hiB3 = HiB.this;
                    if (hiB3.Jcg > 0) {
                        if (!z11 || i11 < iTEQ || hiB3.TKC.sP.dx() == 5) {
                            HiB hiB4 = HiB.this;
                            hiB4.TKC.Mts.Sj(String.valueOf(hiB4.Jcg), null);
                        } else {
                            HiB.this.TKC.Sj(true);
                            HiB hiB5 = HiB.this;
                            hiB5.TKC.Mts.Sj(String.valueOf(hiB5.Jcg), TTAdDislikeToast.getSkipText());
                            HiB.this.TKC.Mts.HiB(true);
                        }
                    }
                }
            }

            @Override // u5.b.InterfaceC0935b
            public void sP(long j12, int i11) {
                ((Sj) HiB.this).Sj.removeMessages(300);
                TzV tzV2 = HiB.this.TKC.Wjd.Zq;
                if (tzV2 != null) {
                    tzV2.TEQ();
                }
                if (HiB.this.TKC.f20992ib.sP()) {
                    HiB.this.HiB();
                    return;
                }
                HiB.this.ib();
                HiB.this.TKC.f20992ib.sef();
                HiB.this.TKC.wE.Sj(true);
                sP sPVarUP = HiB.this.uP();
                HiB hiB = HiB.this;
                sPVarUP.Sj(hiB, hiB.sP(3));
            }
        });
        boolean zSj2 = this.TKC.f20992ib.Sj(j11, z10, map, this.sP);
        if (zSj2 && !z10) {
            this.vS = (int) (System.currentTimeMillis() / 1000);
        }
        return zSj2;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    protected void TKC() {
        final View viewTEQ = this.TKC.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.1
                /* JADX WARN: Code duplicated, block: B:28:0x00d5  */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean zHiB;
                    if (HiB.this.TKC.JcM.wE() && HiB.this.TKC.TEQ.get()) {
                        boolean zFmk = HiB.this.TKC.WMZ.Fmk();
                        HiB.this.TKC.JcM.vS(zFmk);
                        HiB.this.TKC.Wjd.HiB(8);
                        HiB.this.TKC.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!sU.TKC(HiB.this.TKC.sP)) {
                            return;
                        }
                        if (sU.TKC(HiB.this.TKC.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!HiB.this.TKC.sP.Snq()) {
                        zHiB = false;
                    } else if (HiB.this.TKC.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = HiB.this.TKC;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = HiB.this.TKC.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (HiB.this.TKC.sP.AE() != 0 || HiB.this.TKC.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        HiB.this.TKC.sP.xD(11);
                        if (HiB.this.TKC.JcM.EjP()) {
                            HiB.this.TKC.sP.xD(12);
                        }
                        try {
                            HiB.this.TKC.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    HiB.this.TKC.JcM.ley();
                    HiB.this.TKC.WMZ.Ym();
                    HiB.this.TKC.LqL.vS();
                    if (uP.EjP(HiB.this.TKC.sP)) {
                        HiB.this.Sj(true, true, (Runnable) null);
                    } else {
                        HiB.this.ley();
                    }
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.TKC.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view) {
                if (HiB.this.TKC.sP.yr()) {
                    if (HiB.this.TKC.Wjd.Ym() != null) {
                        HiB.this.TKC.sP.xD(2);
                        HiB.this.TKC.Wjd.dNu();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = HiB.this.TKC;
                if (!sj2.TKC && sj2.sP.Snq() && !HiB.this.TKC.sP.Ph()) {
                    HiB.this.TKC.sP.xD(13);
                    try {
                        HiB.this.TKC.Wjd.dNu();
                        return;
                    } catch (Exception unused) {
                    }
                }
                HiB hiB = HiB.this;
                hiB.Sj(uP.TKC(hiB.TKC.sP), false, (Runnable) null);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view, String str) {
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = HiB.this.sP;
                if (sPVar != null && sPVar.EjP() != null) {
                    HiB.this.sP.EjP().Sj(HiB.this.TKC.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = HiB.this.TKC;
                sj2.ndK = !sj2.ndK;
                StringBuilder sb2 = new StringBuilder("will set is Mute ");
                sb2.append(HiB.this.TKC.ndK);
                sb2.append(" mLastVolume=");
                sb2.append(HiB.this.TKC.fF.Sj());
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = HiB.this.TKC;
                sj3.f20992ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(HiB.this.TKC.sP) || HiB.this.TKC.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = HiB.this.TKC;
                    sj4.JcM.HiB(sj4.ndK);
                    sU sUVar = HiB.this.TKC.sP;
                    if (sUVar == null || sUVar.GMp() == null || HiB.this.TKC.sP.GMp().Sj() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = HiB.this.TKC;
                    if (sj5.f20992ib != null) {
                        if (sj5.ndK) {
                            sj5.sP.GMp().Sj().Dq(HiB.this.TKC.f20992ib.Jcg());
                        } else {
                            sj5.sP.GMp().Sj().uA(HiB.this.TKC.f20992ib.Jcg());
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
                HiB hiB = HiB.this;
                hiB.TKC.LD.Sj(hiB.sP);
            }
        });
    }

    public void TKC(final int i11) {
        if (uP().Ym().getBoolean("reward_verify", false) || uP().Zq() || uP().Ym().getBoolean("user_has_give_up_reward", false)) {
            return;
        }
        uP().Ym().putBoolean("reward_verify", true);
        if (dNu.EjP().uvD(String.valueOf(this.TKC.vS))) {
            Sj(true, this.TKC.sP.wE(), this.TKC.sP.uP(), 0, "", i11);
        } else {
            dNu.TKC().Sj(fF(), new RiZ.sP() { // from class: com.bytedance.sdk.openadsdk.activity.HiB.6
                @Override // com.bytedance.sdk.openadsdk.core.RiZ.sP
                public void Sj(int i12, String str) {
                    HiB.this.Sj(false, 0, "", i12, str, i11);
                }

                @Override // com.bytedance.sdk.openadsdk.core.RiZ.sP
                public void Sj(com.bytedance.sdk.openadsdk.core.sU.sP sPVar) {
                    boolean z10 = sPVar.sP;
                    HiB.this.Sj(sPVar.sP, sPVar.TKC.Sj(), sPVar.TKC.sP(), 0, "", i11);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    protected boolean a_() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void aa() {
        ib();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public String b_() {
        return "rewarded_video";
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void c_() {
        LD();
    }

    public void ib() {
        TKC(0);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Sj
    protected void sP() {
        this.TKC.Mts.Sj(null, TTAdDislikeToast.getSkipText());
        this.TKC.Mts.HiB(true);
    }

    protected void sP(long j11, long j12) {
        if (j12 <= 0) {
            return;
        }
        if (this.sU == -1) {
            this.sU = Math.min(100, this.Dq.LqL());
        }
        if (((j11 / 1000.0f) / j12) * 100.0f >= this.sU) {
            ib();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003e  */
    @Override // com.bytedance.sdk.openadsdk.activity.Sj, com.bytedance.sdk.openadsdk.activity.vS, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void sef() {
        if (this.Dq.TT()) {
            int i11 = dNu.EjP().ley(String.valueOf(this.TKC.vS)).vS;
            boolean z10 = false;
            if (uP.RiZ(this.TKC.sP)) {
                if ((1.0d - (((double) this.Jcg) / this.TKC.f20992ib.Yf())) * 100.0d >= i11) {
                    z10 = true;
                }
            } else {
                boolean z11 = (1.0f - (this.TKC.uP.sP() / ((float) this.TKC.sP.oWa()))) * 100.0f >= ((float) i11);
                int iSj = dNu.EjP().Sj(String.valueOf(this.TKC.vS));
                if (iSj == 0) {
                    boolean zVS = this.TKC.JcM.aa().vS();
                    if (this.TKC.uP.TKC()) {
                        zVS = true;
                    }
                    if (z11 && zVS) {
                        z10 = true;
                    }
                } else if (iSj == 1) {
                    z10 = z11;
                }
            }
            if (z10) {
                ib();
            }
        }
    }
}
