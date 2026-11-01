package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.component.reward.Sj.Ym;
import com.bytedance.sdk.openadsdk.component.reward.sP.Jcg;
import com.bytedance.sdk.openadsdk.component.reward.view.Dq;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ib;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends vS implements LqL.Sj, com.bytedance.sdk.openadsdk.core.aa.EjP.sP {
    private static String EjP;
    private static String Fmk;
    private static String HiB;
    private static String Jcg;
    private static String vS;
    private String RiZ;
    protected final LqL Sj;
    protected com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TKC;
    private boolean TzV;
    private int Zq;
    private boolean dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private boolean f20951dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private JSONObject f20952ib;
    private int kF;

    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.sP.sP sP;
    private String sU;
    private Bundle sef;
    private boolean uP;
    private sP.HiB uvD;
    private long zR;

    public TKC(sP sPVar, sU sUVar, int i11) {
        super(sPVar, sUVar, i11);
        this.Sj = new LqL(Looper.getMainLooper(), this);
        this.Zq = 0;
        this.uP = true;
        this.f20951dx = sPVar.Sj();
        Sj(sUVar, this.sef);
        if (this.f20951dx) {
            return;
        }
        try {
            TzV();
        } catch (Throwable unused) {
            ley();
        }
    }

    private boolean JcM() {
        if (this.TKC.TEQ.get() && this.TKC.Jcg) {
            return false;
        }
        if (this.Dq.EjP()) {
            return this.TKC.TEQ.get();
        }
        return true;
    }

    private JSONObject Mts() {
        JSONObject jSONObject = new JSONObject();
        int iDx = (int) this.TKC.f20992ib.dx();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, this.TKC.sP.uP());
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, this.TKC.sP.wE());
            jSONObject.put("network", TzV.TKC(this.TKC.Ei));
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
            jSONObject.put("media_extra", this.sU);
            jSONObject.put("video_duration", this.TKC.sP.UHs().K());
            jSONObject.put("play_start_ts", 0);
            jSONObject.put("play_end_ts", 0);
            jSONObject.put("duration", iDx);
            jSONObject.put("user_id", this.RiZ);
            jSONObject.put("trans_id", ib.Sj().replace("-", ""));
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.EndCardScene", "", th2);
            return null;
        }
    }

    private void Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2, com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3) {
        if (!this.f20951dx || kF() || sj2 == null || sj3 == null) {
            return;
        }
        try {
            this.zR = sj3.f20992ib.Dq();
            if (this.Dq.WM()) {
                this.zR = sj3.TKC();
            }
            this.kF = sj3.f20992ib.TzV();
            this.f20952ib = Mts.Sj(this.Dq, sj3.f20992ib.Ym(), sj3.f20992ib.aa());
        } catch (Throwable unused) {
        }
    }

    private void Sj(sU sUVar, Bundle bundle) {
        Activity activityWE = wE();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.component.reward.Sj.Sj(activityWE, this.Sj, sUVar, this, 2);
        this.TKC = sj2;
        sj2.gR = uP().sP();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
        boolean z10 = this.f20951dx;
        sj3.Ir = z10;
        if (z10) {
            sj3.aZ = uP().uA();
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
        sj4.HS = this;
        sj4.fF = uP().RiZ();
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(this.TKC, activityWE.getIntent(), bundle);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVarSj = Jcg.Sj(this.TKC);
        this.sP = sPVarSj;
        this.TKC.f20994kb = sPVarSj;
        Objects.toString(this.sP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(final boolean z10, boolean z11, final Runnable runnable) {
        if (!this.TKC.EjP || uP().Ym().getBoolean("reward_verify", false) || uP().Zq()) {
            return false;
        }
        if (!z11 && uP().Ym().getBoolean("user_has_give_up_reward", false)) {
            return false;
        }
        if (!dNu.EjP().Dq(String.valueOf(this.TKC.vS))) {
            if (!z11) {
                return false;
            }
            if (runnable == null && z10) {
                ley();
                return true;
            }
        }
        this.TKC.sU.set(true);
        if (z10) {
            this.TKC.uP.sef();
        }
        final com.bytedance.sdk.openadsdk.core.widget.sP sPVar = new com.bytedance.sdk.openadsdk.core.widget.sP(this.TKC.Fm);
        this.sP.Fmk = sPVar;
        if (z10) {
            sPVar.Sj(EjP).sP(HiB).TKC(vS);
        } else {
            sPVar.Sj(Jcg).sP(Fmk).TKC(vS);
        }
        this.sP.Fmk.Sj(new com.bytedance.sdk.openadsdk.core.widget.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.sP.Sj
            public void Sj() {
                if (z10) {
                    TKC.this.TKC.uP.HiB(1000);
                }
                sPVar.dismiss();
                TKC.this.TKC.sU.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.sP.Sj
            public void sP() {
                sPVar.dismiss();
                TKC.this.uP().Ym().putBoolean("user_has_give_up_reward", true);
                TKC.this.TKC.sU.set(false);
                TKC.this.TKC.uP.vS(Integer.MAX_VALUE);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                    return;
                }
                if (!z10) {
                    TKC.this.fF();
                    return;
                }
                if (!uP.Dq(TKC.this.TKC.sP)) {
                    TKC.this.TKC.LqL.vS();
                    if (TKC.this.TKC.uP.Sj()) {
                        TKC.this.TKC.uP.Sj(4);
                    }
                    TKC.this.ley();
                    return;
                }
                if (TKC.this.TKC.uP.Sj()) {
                    TKC.this.TKC.uP.Sj(5);
                } else {
                    TKC.this.TKC.JcM.Dq();
                    TKC.this.fF();
                }
            }
        }).show();
        return true;
    }

    private void TzV() {
        if (this.TzV) {
            return;
        }
        this.TzV = true;
        if (this.f20951dx && !kF()) {
            this.TKC.aZ = uP().uA();
        }
        this.TKC.xD.Sj(this.sP);
        this.sP.Sj(this, this.Sj);
        this.sP.Ym();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WMZ() {
        sP.HiB hiB = new sP.HiB(7, this.TKC);
        hiB.EjP = this.TKC.ndK;
        uP().sP(this, hiB);
    }

    private void dx() {
        if (this.dNu) {
            return;
        }
        this.dNu = true;
        if (uP.Jcg(this.TKC.sP) || com.bytedance.sdk.openadsdk.dx.Sj.Sj("ivrv_new_arch_endcard_view_add_at_first", 0) == 1) {
            if (this.f20951dx) {
                uP().Sj(Sj(), kF());
            } else {
                uP().Sj(Sj());
            }
        }
        this.sP.Sj(this.f20980aa);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean fF() {
        if (!this.f20951dx || kF()) {
            return false;
        }
        try {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.Dq, this.TKC.HiB, "skip", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.3
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("duration", TKC.this.zR);
                        jSONObject.put("percent", TKC.this.kF);
                        if (TKC.this.f20952ib != null) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("scene_type", TKC.this.TKC.Sj);
                            TKC.this.f20952ib.put("pag_json_data", jSONObject2.toString());
                            jSONObject.put("ad_extra_data", TKC.this.f20952ib);
                        }
                    } catch (Throwable unused) {
                    }
                    return jSONObject;
                }
            });
        } catch (Throwable unused) {
        }
        uP().Sj(this, true, false, false, 4);
        return true;
    }

    private void ib() {
        final View viewTEQ = this.TKC.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.1
                /* JADX WARN: Code duplicated, block: B:29:0x00e0  */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean zHiB;
                    if (TKC.this.TKC.JcM.wE()) {
                        boolean zFmk = TKC.this.TKC.WMZ.Fmk();
                        TKC.this.TKC.JcM.vS(zFmk);
                        TKC.this.TKC.Wjd.HiB(8);
                        View view2 = viewTEQ;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.HiB.EjP) {
                            ((com.bytedance.sdk.openadsdk.core.HiB.EjP) view2).setImageResource(com.bytedance.sdk.component.utils.ib.EjP(TKC.this.TKC.Ei, "tt_close_btn"));
                        }
                        TKC.this.TKC.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!sU.TKC(TKC.this.TKC.sP)) {
                            return;
                        }
                        if (sU.TKC(TKC.this.TKC.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!TKC.this.TKC.sP.Snq()) {
                        zHiB = false;
                    } else if (TKC.this.TKC.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TKC.this.TKC;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = TKC.this.TKC.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (TKC.this.TKC.sP.AE() != 0 || TKC.this.TKC.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        TKC.this.TKC.sP.xD(11);
                        if (TKC.this.TKC.JcM.EjP()) {
                            TKC.this.TKC.sP.xD(12);
                        }
                        try {
                            TKC.this.TKC.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    TKC.this.TKC.JcM.ley();
                    TKC.this.TKC.WMZ.Ym();
                    TKC.this.TKC.LqL.vS();
                    if (uP.EjP(TKC.this.TKC.sP) && TKC.this.Sj(true, true, (Runnable) null)) {
                        return;
                    }
                    TKC.this.ley();
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.TKC.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view) {
                TKC tkc = TKC.this;
                if (tkc.Sj(uP.TKC(tkc.TKC.sP), false, (Runnable) null) || TKC.this.fF()) {
                    return;
                }
                if (uP.HiB(TKC.this.TKC.sP)) {
                    if (uP.TEQ(TKC.this.TKC.sP)) {
                        TKC.this.TKC.uP.dNu();
                        return;
                    }
                    View view2 = viewTEQ;
                    if (view2 != null) {
                        view2.performClick();
                        return;
                    } else {
                        TKC.this.ley();
                        return;
                    }
                }
                if (uP.Dq(TKC.this.TKC.sP)) {
                    if (TKC.this.TKC.uP.Sj()) {
                        TKC.this.TKC.uP.Sj(5);
                        return;
                    } else {
                        TKC.this.TKC.JcM.Dq();
                        return;
                    }
                }
                if (!uP.TzV(TKC.this.TKC.sP) && (!com.bytedance.sdk.openadsdk.core.model.TzV.Sj(TKC.this.TKC.sP) || TKC.this.TKC.uvD.get())) {
                    TKC.this.ley();
                    return;
                }
                if (!uP.Dq(TKC.this.TKC.sP) && TKC.this.TKC.uP.Sj()) {
                    TKC.this.TKC.uP.Sj(4);
                }
                TKC.this.ley();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view, String str) {
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = TKC.this.sP;
                if (sPVar != null && sPVar.EjP() != null) {
                    TKC.this.sP.EjP().Sj(TKC.this.TKC.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TKC.this.TKC;
                sj2.ndK = !sj2.ndK;
                StringBuilder sb2 = new StringBuilder("will set is Mute ");
                sb2.append(TKC.this.TKC.ndK);
                sb2.append(" mLastVolume=");
                sb2.append(TKC.this.TKC.fF.Sj());
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TKC.this.TKC;
                sj3.f20992ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(TKC.this.TKC.sP) || TKC.this.TKC.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TKC.this.TKC;
                    sj4.JcM.HiB(sj4.ndK);
                    sU sUVar = TKC.this.TKC.sP;
                    if (sUVar != null && sUVar.GMp() != null && TKC.this.TKC.sP.GMp().Sj() != null) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TKC.this.TKC;
                        if (sj5.f20992ib != null) {
                            if (sj5.ndK) {
                                sj5.sP.GMp().Sj().Dq(TKC.this.TKC.f20992ib.Jcg());
                            } else {
                                sj5.sP.GMp().Sj().uA(TKC.this.TKC.f20992ib.Jcg());
                            }
                        }
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = TKC.this.TKC;
                    sj6.uP.vS(sj6.ndK);
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
                TKC tkc = TKC.this;
                tkc.TKC.LD.Sj(tkc.sP);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void Dq() {
        if (uP() == null) {
            return;
        }
        this.TKC.FPG.Sj(this.uvD.Sj.getBoolean("isSkip", false), this.uvD.Sj.getBoolean("force", false), this.uvD.Sj.getBoolean("isFromLandingPage", false), this.sP, this.uvD.sP);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void EjP() {
        LD();
        this.TKC.sP.jU();
        this.TKC.sP.Sj(true);
        if (sU.HiB(this.TKC.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            sU sUVar = sj2.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, sj2.HiB, sUVar.SPg());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void EjP(Activity activity) {
        super.EjP(activity);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 == null) {
            return;
        }
        sj2.JcM.JcM();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(activity, this.TKC.sP);
    }

    public void HiB() {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.ley();
        this.TKC.FPG.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void HiB(Activity activity) {
        super.HiB(activity);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.sU();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public boolean RiZ() {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        return sj2 != null && sj2.f20992ib.uP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final View Sj() {
        return this.TKC.xD;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(int i11) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void Sj(Activity activity, Bundle bundle) {
        this.sef = bundle;
        super.Sj(activity, bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(Activity activity, sP.HiB hiB) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        super.Sj(activity, hiB);
        this.uvD = hiB;
        Intent intent = activity.getIntent();
        this.sU = intent.getStringExtra("media_extra");
        this.RiZ = intent.getStringExtra("user_id");
        try {
            if (Jcg == null) {
                Jcg = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_reward_msg");
                EjP = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_msgPlayable");
                vS = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_negtiveBtnBtnText");
                Fmk = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_postiveBtnText");
                HiB = com.bytedance.sdk.component.utils.ib.Sj(this.TKC.Ei, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.EndCardScene", th2.getMessage());
        }
        if (hiB != null && (sj2 = hiB.TKC) != null) {
            this.TKC.Fmk.set(sj2.Fmk.get());
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
            sj3.Bml = sj2.Bml;
            sj3.ndK = sj2.ndK;
            if (this.f20951dx && !kF()) {
                this.TKC.f20989aa.set(sj2.f20989aa.get());
            }
            this.TKC.sef.set(sj2.sef.get());
            this.TKC.f20992ib.Sj(sj2.f20992ib.Sj());
            Sj(this.TKC, sj2);
        }
        if (this.f20951dx) {
            try {
                TzV();
            } catch (Throwable unused) {
                ley();
            }
        }
        sP sPVarUP = uP();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.TKC;
        if (sj4 != null && sPVarUP != null) {
            sj4.f20995tz = sPVarUP.sP;
        }
        dx();
        ib();
        Dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public final void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.Sj(message);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Sj(vS vSVar, vS vSVar2, sP.HiB hiB) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2;
        super.Sj(vSVar, vSVar2, hiB);
        if (!this.f20951dx) {
            if (vSVar != null || vSVar2 == this) {
                return;
            }
            dx();
            return;
        }
        if (vSVar2 instanceof Sj) {
            if (this.uA == vSVar2.uA + 1 || (vSVar == null && kF())) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = ((Sj) vSVar2).TKC;
                if (sj3 != null && (sj2 = this.TKC) != null) {
                    sj2.ndK = sj3.ndK;
                }
                try {
                    TzV();
                } catch (Throwable unused) {
                    ley();
                }
                dx();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(String str, JSONObject jSONObject) {
        if (str == null || !"skipToNextAd".equals(str) || uP() == null || kF()) {
            return;
        }
        if (uP().Jcg() == null && Sj(uP.TKC(this.TKC.sP), false, new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.4
            @Override // java.lang.Runnable
            public void run() {
                TKC.this.WMZ();
            }
        })) {
            return;
        }
        WMZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(boolean z10) {
        if (z10) {
            TKC();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public boolean Sj(long j11, boolean z10) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final View TEQ() {
        return null;
    }

    public void TKC() {
        sP(0);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void TKC(Activity activity) {
        super.TKC(activity);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.dx();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void Ym() {
        if (!this.TKC.sef.getAndSet(true) || uP.TzV(this.TKC.sP)) {
            this.TKC.LqL.Sj();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void Zq() {
        super.Zq();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar == null) {
            return;
        }
        sPVar.zR();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    protected boolean a_() {
        return this.TKC.EjP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void aa() {
        TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public String b_() {
        return this.TKC.HiB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void c_() {
        LD();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void dNu() {
        super.dNu();
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.ib();
        }
    }

    public void sP(final int i11) {
        if (uP().Ym().getBoolean("reward_verify", false) || uP().Zq() || uP().Ym().getBoolean("user_has_give_up_reward", false)) {
            return;
        }
        uP().Ym().putBoolean("reward_verify", true);
        if (dNu.EjP().uvD(String.valueOf(this.TKC.vS))) {
            Sj(true, this.TKC.sP.wE(), this.TKC.sP.uP(), 0, "", i11);
        } else {
            dNu.TKC().Sj(Mts(), new RiZ.sP() { // from class: com.bytedance.sdk.openadsdk.activity.TKC.5
                @Override // com.bytedance.sdk.openadsdk.core.RiZ.sP
                public void Sj(int i12, String str) {
                    TKC.this.Sj(false, 0, "", i12, str, i11);
                }

                @Override // com.bytedance.sdk.openadsdk.core.RiZ.sP
                public void Sj(com.bytedance.sdk.openadsdk.core.sU.sP sPVar) {
                    TKC.this.Sj(sPVar.sP, sPVar.TKC.Sj(), sPVar.TKC.sP(), 0, "", i11);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public final void sP(Activity activity) {
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar;
        super.sP(activity);
        if (this.TKC == null || (sPVar = this.sP) == null) {
            return;
        }
        sPVar.dNu();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        sj2.qRN = true;
        sj2.ley.sP(this.Sj);
        if (JcM()) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
            sj3.Mts.Sj(sj3.sP.RrR());
        }
        this.TKC.Wjd.Zq();
        this.TKC.JcM.zR();
        this.TKC.uP.Fmk();
        if (this.sP.sP()) {
            this.TKC.f20992ib.Sj(this.sP);
            this.TKC.f20992ib.Sj(false, this, this.Zq != 0);
        }
        this.Zq++;
        Dq dq2 = this.TKC.wE;
        if (dq2 != null) {
            dq2.Jcg();
        }
        this.TKC.ley.Sj(this.Sj);
        this.sP.RiZ();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public void sP(boolean z10) {
        Ym ym2;
        long j11 = this.uP ? this.TKC.Bml : 0L;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        if (sj2 != null && (ym2 = sj2.LqL) != null) {
            ym2.sP(z10);
            this.TKC.LqL.TKC(z10);
            if (z10 && j11 > 0) {
                this.TKC.Bml = j11;
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.TKC;
        if (sj3 != null) {
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = sj3.f20994kb;
            if (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.vS) {
                ((com.bytedance.sdk.openadsdk.component.reward.sP.vS) sPVar).sP(z10);
            }
        }
        if (z10) {
            this.uP = false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    protected String sU() {
        return this.TKC.f20990db;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void sef() {
        boolean z10 = false;
        boolean z11 = (1.0f - (this.TKC.uP.sP() / ((float) this.TKC.sP.oWa()))) * 100.0f >= ((float) dNu.EjP().ley(String.valueOf(this.TKC.vS)).vS);
        int iSj = dNu.EjP().Sj(String.valueOf(this.TKC.vS));
        if (iSj == 0) {
            boolean zVS = this.TKC.JcM.aa().vS();
            if (this.TKC.uP.TKC()) {
                zVS = true;
            }
            z10 = z11 && zVS;
        } else if (iSj == 1) {
            z10 = z11;
        }
        if (z10) {
            TKC();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void uA() {
    }

    public void uvD() {
        if (kF()) {
            return;
        }
        sP.HiB hiB = new sP.HiB(8, this.TKC);
        hiB.EjP = this.TKC.ndK;
        if (uP() != null) {
            uP().Sj(this, hiB);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public final void vS() {
        Yf();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.vS
    public com.bytedance.sdk.openadsdk.component.reward.Sj.Sj zR() {
        return this.TKC;
    }
}
