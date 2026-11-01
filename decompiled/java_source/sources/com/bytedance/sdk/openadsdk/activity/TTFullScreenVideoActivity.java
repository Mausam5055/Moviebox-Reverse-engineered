package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.sP.uA;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Fmk;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.sef;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes2.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static com.bytedance.sdk.openadsdk.Sj.TKC.sP f20957aa;
    private boolean Fmk;
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP Ym;

    private void EjP(int i11) {
        this.sP.Mts.Sj(null, String.format(ib.Sj(dNu.Sj(), "tt_skip_ad_time_text"), Integer.valueOf(i11)));
    }

    private void Sj(final String str) {
        JcM.TKC(new Dq("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.sP(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.sP.f20990db, str);
                } catch (Throwable th2) {
                    sU.sP("TTAD.FSVA", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    private boolean Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return sUVar == null || sUVar.tY() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dx() {
        sU.Sj("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.Ym;
        if (sPVar != null) {
            sPVar.onAdClicked();
        }
    }

    private boolean sP(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        return dNu.EjP().sU(String.valueOf(this.sP.vS));
    }

    private void zR() {
        if (this.Dq) {
            return;
        }
        this.Dq = true;
        sU.Sj("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdClose");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.Ym;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void EjP() {
        dx();
        this.sP.sP.jU();
        this.sP.sP.Sj(true);
        if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.sP.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = sj2.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, sj2.HiB, sUVar.SPg());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Jcg() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar = this.Ym;
            if (sPVar != null) {
                sPVar.Sj();
            }
        }
        if (sU()) {
            this.sP.wE.TEQ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean RiZ() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(int i11) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Sj(@NonNull Intent intent) {
        super.Sj(intent);
        this.sP.Chv = intent.getBooleanExtra("is_verity_playable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            this.Ym = kF.Sj().EjP();
        }
        if (this.Ym != null || bundle == null) {
            return;
        }
        this.Ym = f20957aa;
        f20957aa = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(String str, JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void Sj(boolean z10) {
    }

    public boolean Sj(long j11, boolean z10) {
        Jcg jcg = new Jcg();
        jcg.Sj(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC;
        if (sPVar == null || !(sPVar instanceof uA)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            sj2.f20992ib.Sj(sj2.Wjd.vS(), jcg);
        } else {
            this.sP.f20992ib.Sj(((uA) sPVar).Yf(), jcg);
        }
        b.InterfaceC0935b interfaceC0935b = new b.InterfaceC0935b() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.5
            boolean Sj;

            @Override // u5.b.InterfaceC0935b
            public void Sj() {
                TTFullScreenVideoActivity.this.EjP.removeMessages(300);
                TTFullScreenVideoActivity.this.dNu();
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.sP.TKC) {
                    tTFullScreenVideoActivity.Sj(false, true, 6);
                } else {
                    tTFullScreenVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.dNu dnu = TTFullScreenVideoActivity.this.sP.f20992ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, 1 ^ (TTFullScreenVideoActivity.this.sP.f20992ib.LqL() ? 1 : 0));
                TTFullScreenVideoActivity.this.sP.f20992ib.sef();
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, int i11) {
                Fmk fmk;
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                TTFullScreenVideoActivity.this.EjP.removeMessages(300);
                TTFullScreenVideoActivity.this.dNu();
                TTFullScreenVideoActivity.this.sP.f20992ib.Sj(j12, j12);
                TTFullScreenVideoActivity.this.sP.RiZ.set(true);
                if (TTFullScreenVideoActivity.this.sP.sP.dx() == 36) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTFullScreenVideoActivity.this.sP;
                    if (sj3.TKC) {
                        sj3.kF.TKC().EjP();
                        sef.sP();
                    }
                }
                if (TTFullScreenVideoActivity.this.sP.sP.oDQ()) {
                    TTFullScreenVideoActivity.this.sP.sP.xD(1);
                    TTFullScreenVideoActivity.this.sP.Wjd.dNu();
                }
                if (TTFullScreenVideoActivity.this.sP.sP.dx() == 21 && !TTFullScreenVideoActivity.this.sP.sP.Dq()) {
                    TTFullScreenVideoActivity.this.sP.sP.sP(true);
                    TTFullScreenVideoActivity.this.sP.Wjd.dNu();
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTFullScreenVideoActivity.this.sP;
                if (!sj4.TKC) {
                    if (sj4.sP.WM()) {
                        TTFullScreenVideoActivity.this.sP.Mts.TKC();
                        return;
                    }
                    if (!com.bytedance.sdk.openadsdk.core.model.sU.HiB(TTFullScreenVideoActivity.this.sP.sP)) {
                        TTFullScreenVideoActivity.this.sP.f20992ib.Sj("skip", true);
                    }
                    TTFullScreenVideoActivity.this.finish();
                    return;
                }
                if (sj4.sP.WM()) {
                    TTFullScreenVideoActivity.this.sP.Mts.TKC();
                    return;
                }
                TTFullScreenVideoActivity.this.Sj(false, 5);
                if (TzV.sP(TTFullScreenVideoActivity.this.sP.sP) && (fmk = TTFullScreenVideoActivity.this.sP.f20996xu) != null) {
                    fmk.Sj(0L);
                }
                if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(TTFullScreenVideoActivity.this.sP.sP)) {
                    return;
                }
                TTFullScreenVideoActivity.this.sP.f20992ib.Sj("skip", true);
            }

            @Override // u5.b.InterfaceC0935b
            public void Sj(long j12, long j13) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTFullScreenVideoActivity.this.sP;
                if (!sj3.qRN && sj3.f20992ib.sP()) {
                    TTFullScreenVideoActivity.this.sP.f20992ib.uvD();
                }
                if (TTFullScreenVideoActivity.this.sP.TEQ.get()) {
                    return;
                }
                TTFullScreenVideoActivity.this.EjP.removeMessages(300);
                if (j12 != TTFullScreenVideoActivity.this.sP.f20992ib.Dq()) {
                    TTFullScreenVideoActivity.this.dNu();
                }
                TTFullScreenVideoActivity.this.sP.f20992ib.Sj(j12, j13);
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                long j14 = j12 / 1000;
                tTFullScreenVideoActivity.vS = (int) (tTFullScreenVideoActivity.sP.f20992ib.Yf() - j14);
                int i11 = (int) j14;
                if ((TTFullScreenVideoActivity.this.sP.sU.get() || TTFullScreenVideoActivity.this.sP.Ym.get()) && TTFullScreenVideoActivity.this.sP.f20992ib.sP()) {
                    TTFullScreenVideoActivity.this.sP.f20992ib.uvD();
                }
                TTFullScreenVideoActivity.this.TKC(i11);
                TTFullScreenVideoActivity tTFullScreenVideoActivity2 = TTFullScreenVideoActivity.this;
                int i12 = tTFullScreenVideoActivity2.vS;
                if (i12 >= 0) {
                    tTFullScreenVideoActivity2.sP.Mts.Sj(String.valueOf(i12), null);
                }
            }

            @Override // u5.b.InterfaceC0935b
            public void sP(long j12, int i11) {
                TTFullScreenVideoActivity.this.EjP.removeMessages(300);
                TzV tzV = TTFullScreenVideoActivity.this.sP.Wjd.Zq;
                if (tzV != null) {
                    tzV.TEQ();
                }
                if (TTFullScreenVideoActivity.this.sP.f20992ib.sP()) {
                    TTFullScreenVideoActivity.this.uvD();
                    return;
                }
                TTFullScreenVideoActivity.this.sP.f20992ib.sef();
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (!tTFullScreenVideoActivity.sP.TKC) {
                    tTFullScreenVideoActivity.finish();
                    return;
                }
                tTFullScreenVideoActivity.Sj(false, true, 3);
                com.bytedance.sdk.openadsdk.component.reward.Sj.dNu dnu = TTFullScreenVideoActivity.this.sP.f20992ib;
                dnu.Sj(!dnu.LqL() ? 1 : 0, 2);
            }
        };
        this.sP.f20992ib.Sj(interfaceC0935b);
        TzV tzV = this.sP.Wjd.Zq;
        if (tzV != null) {
            tzV.Sj(interfaceC0935b);
        }
        return this.sP.f20992ib.Sj(j11, z10, null, this.TKC);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void TKC() {
        if (com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.sP.sP)) {
            this.sP.Mts.Sj(null, TTAdDislikeToast.getSkipText());
        } else {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            if (sj2.TKC) {
                this.sP.Mts.Sj(null, TTAdDislikeToast.getSkipText());
            } else {
                sj2.Mts.Sj(null, "X");
            }
        }
        this.sP.Mts.HiB(true);
    }

    protected void TKC(int i11) {
        int iRiZ;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (sUVar = sj2.sP) == null) {
            iRiZ = sj2 != null ? dNu.EjP().RiZ(String.valueOf(this.sP.vS)) : 5;
        } else {
            iRiZ = sUVar.Sj();
        }
        if (!dNu.EjP().vS(String.valueOf(this.sP.vS)) || (!com.bytedance.sdk.openadsdk.core.model.sU.HiB(this.sP.sP) && !this.sP.TKC)) {
            if (i11 >= iRiZ) {
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.sP;
                if (!sj3.gY) {
                    sj3.Sj(true);
                }
                TKC();
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = this.sP;
        if (!sj4.gY) {
            sj4.Sj(true);
        }
        if (i11 > iRiZ) {
            TKC();
        } else {
            EjP(iRiZ - i11);
            this.sP.Mts.HiB(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void TzV() {
        final View viewTEQ = this.sP.Wjd.TEQ();
        if (viewTEQ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
                /* JADX WARN: Code duplicated, block: B:31:0x00eb  */
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean zHiB;
                    if (TTFullScreenVideoActivity.this.sP.JcM.wE() && TTFullScreenVideoActivity.this.sP.TEQ.get()) {
                        boolean zFmk = TTFullScreenVideoActivity.this.sP.WMZ.Fmk();
                        TTFullScreenVideoActivity.this.sP.JcM.vS(zFmk);
                        TTFullScreenVideoActivity.this.sP.Wjd.HiB(8);
                        View view2 = viewTEQ;
                        if (view2 instanceof com.bytedance.sdk.openadsdk.core.HiB.EjP) {
                            ((com.bytedance.sdk.openadsdk.core.HiB.EjP) view2).setImageResource(ib.EjP(TTFullScreenVideoActivity.this.sP.Ei, "tt_close_btn"));
                        }
                        TTFullScreenVideoActivity.this.sP.HpB.sendEmptyMessageDelayed(600, 5000L);
                        if (!com.bytedance.sdk.openadsdk.core.model.sU.TKC(TTFullScreenVideoActivity.this.sP.sP)) {
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.core.model.sU.TKC(TTFullScreenVideoActivity.this.sP.sP) && zFmk) {
                            return;
                        }
                    }
                    if (!TTFullScreenVideoActivity.this.sP.sP.Snq()) {
                        zHiB = false;
                    } else if (TTFullScreenVideoActivity.this.sP.sP.Ph()) {
                        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TTFullScreenVideoActivity.this.sP;
                        if (sj2.FPG != null) {
                            sj2.sP.xD(2);
                            zHiB = TTFullScreenVideoActivity.this.sP.FPG.HiB();
                        } else {
                            zHiB = false;
                        }
                    } else if (TTFullScreenVideoActivity.this.sP.sP.AE() != 0 || TTFullScreenVideoActivity.this.sP.JcM.dNu()) {
                        zHiB = false;
                    } else {
                        TTFullScreenVideoActivity.this.sP.sP.xD(11);
                        if (TTFullScreenVideoActivity.this.sP.JcM.EjP()) {
                            TTFullScreenVideoActivity.this.sP.sP.xD(12);
                        }
                        try {
                            TTFullScreenVideoActivity.this.sP.Wjd.dNu();
                            zHiB = true;
                        } catch (Exception unused) {
                            zHiB = false;
                        }
                    }
                    if (zHiB) {
                        return;
                    }
                    TTFullScreenVideoActivity.this.sP.JcM.ley();
                    TTFullScreenVideoActivity.this.sP.WMZ.Ym();
                    TTFullScreenVideoActivity.this.sP.LqL.vS();
                    TTFullScreenVideoActivity.this.finish();
                }
            };
            viewTEQ.setOnClickListener(onClickListener);
            viewTEQ.setTag(viewTEQ.getId(), onClickListener);
        }
        this.sP.Mts.Sj(new com.bytedance.sdk.openadsdk.component.reward.top.sP() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view) {
                com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj;
                if (uP.vS(TTFullScreenVideoActivity.this.sP.sP) || (uP.HiB(TTFullScreenVideoActivity.this.sP.sP) && TTFullScreenVideoActivity.this.sP.uP.Dq(com.bytedance.sdk.openadsdk.component.reward.Sj.Dq.sP))) {
                    if (uP.TEQ(TTFullScreenVideoActivity.this.sP.sP)) {
                        TTFullScreenVideoActivity.this.sP.uP.dNu();
                        return;
                    }
                    View view2 = viewTEQ;
                    if (view2 != null) {
                        view2.performClick();
                        return;
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                        return;
                    }
                }
                if (uP.Dq(TTFullScreenVideoActivity.this.sP.sP) && (uP.TzV(TTFullScreenVideoActivity.this.sP.sP) || TTFullScreenVideoActivity.this.sP.TEQ.get())) {
                    if (TTFullScreenVideoActivity.this.sP.uP.Sj()) {
                        TTFullScreenVideoActivity.this.sP.uP.Sj(5);
                        return;
                    } else {
                        TTFullScreenVideoActivity.this.sP.JcM.Dq();
                        return;
                    }
                }
                if (uP.TzV(TTFullScreenVideoActivity.this.sP.sP) || (TzV.Sj(TTFullScreenVideoActivity.this.sP.sP) && !TTFullScreenVideoActivity.this.sP.uvD.get())) {
                    if (!uP.Dq(TTFullScreenVideoActivity.this.sP.sP) && TTFullScreenVideoActivity.this.sP.uP.Sj()) {
                        TTFullScreenVideoActivity.this.sP.uP.Sj(4);
                    }
                    TTFullScreenVideoActivity.this.finish();
                    return;
                }
                if (TTFullScreenVideoActivity.this.sP.sP.yr()) {
                    if (TTFullScreenVideoActivity.this.sP.Wjd.Ym() != null) {
                        TTFullScreenVideoActivity.this.sP.sP.xD(2);
                        TTFullScreenVideoActivity.this.sP.Wjd.dNu();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = TTFullScreenVideoActivity.this.sP;
                if (!sj2.TKC && sj2.sP.Snq() && !TTFullScreenVideoActivity.this.sP.sP.Ph()) {
                    TTFullScreenVideoActivity.this.sP.sP.xD(13);
                    try {
                        TTFullScreenVideoActivity.this.sP.Wjd.dNu();
                        return;
                    } catch (Exception unused) {
                    }
                }
                Zq.Sj sj3 = new Zq.Sj();
                sj3.Sj(TTFullScreenVideoActivity.this.sP.f20992ib.Jcg());
                sj3.TKC(TTFullScreenVideoActivity.this.sP.f20992ib.sU());
                sj3.sP(TTFullScreenVideoActivity.this.sP.f20992ib.Ym());
                sj3.TKC(3);
                sj3.EjP(TTFullScreenVideoActivity.this.sP.f20992ib.RiZ());
                com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(TTFullScreenVideoActivity.this.sP.f20992ib.TKC(), sj3, TTFullScreenVideoActivity.this.sP.f20992ib.Sj());
                com.bytedance.sdk.openadsdk.core.ib.TKC(TTFullScreenVideoActivity.this.sP.vS);
                TTFullScreenVideoActivity.this.sP.f20992ib.Sj("skip", false);
                TTFullScreenVideoActivity.this.sP.Mts.EjP(false);
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTFullScreenVideoActivity.this.sP;
                if (!sj4.TKC || (TzV.TKC(sj4.sP) && (sPVarSj = TTFullScreenVideoActivity.this.sP.wE.Sj()) != null && sPVarSj.EjP == 0)) {
                    TTFullScreenVideoActivity.this.finish();
                } else {
                    TTFullScreenVideoActivity.this.Sj(true, 4);
                }
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = TTFullScreenVideoActivity.this.sP.sP;
                if (sUVar != null && sUVar.GMp() != null) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TTFullScreenVideoActivity.this.sP;
                    if (sj5.f20992ib != null) {
                        sj5.sP.GMp().Sj().vS(TTFullScreenVideoActivity.this.sP.f20992ib.Jcg());
                        TTFullScreenVideoActivity.this.sP.sP.GMp().Sj().HiB(TTFullScreenVideoActivity.this.sP.f20992ib.Jcg());
                    }
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(TTFullScreenVideoActivity.this.sP.sP, 5);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.sP
            public void Sj(View view, String str) {
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = tTFullScreenVideoActivity.sP;
                sj2.ndK = !sj2.ndK;
                com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = tTFullScreenVideoActivity.TKC;
                if (sPVar != null && sPVar.EjP() != null) {
                    TTFullScreenVideoActivity.this.TKC.EjP().Sj(TTFullScreenVideoActivity.this.sP.ndK);
                }
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = TTFullScreenVideoActivity.this.sP;
                sj3.f20992ib.Sj(sj3.ndK, str);
                if (!uP.RiZ(TTFullScreenVideoActivity.this.sP.sP) || TTFullScreenVideoActivity.this.sP.TEQ.get()) {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj4 = TTFullScreenVideoActivity.this.sP;
                    sj4.JcM.HiB(sj4.ndK);
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj5 = TTFullScreenVideoActivity.this.sP;
                    sj5.uP.vS(sj5.ndK);
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar = TTFullScreenVideoActivity.this.sP.sP;
                    if (sUVar == null || sUVar.GMp() == null || TTFullScreenVideoActivity.this.sP.sP.GMp().Sj() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj6 = TTFullScreenVideoActivity.this.sP;
                    if (sj6.f20992ib != null) {
                        if (sj6.ndK) {
                            sj6.sP.GMp().Sj().Dq(TTFullScreenVideoActivity.this.sP.f20992ib.Jcg());
                        } else {
                            sj6.sP.GMp().Sj().uA(TTFullScreenVideoActivity.this.sP.f20992ib.Jcg());
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
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                tTFullScreenVideoActivity.sP.LD.Sj(tTFullScreenVideoActivity.TKC);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Zq() {
        com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj;
        super.Zq();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || (sPVarSj = sj2.wE.Sj()) == null) {
            return;
        }
        sPVarSj.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.HiB() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.HiB
            public void Sj() {
                TTFullScreenVideoActivity.this.dx();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void c_() {
        if (this.sP.sP.tY() != 100.0f) {
            this.Fmk = true;
        }
        dx();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        f20957aa = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        if (this.sP != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.sP.sP);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
            sj2.uP.Sj(sj2.Chv);
        }
        try {
            zR();
        } catch (Exception unused) {
        }
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || com.bytedance.sdk.openadsdk.core.model.sU.HiB(sj2.sP)) {
            return;
        }
        y5.b bVarUHs = this.sP.sP.UHs();
        if (bVarUHs == null) {
            y5.b bVar = new y5.b();
            bVar.n(10.0d);
            this.sP.sP.Sj(bVar);
        } else if (bVarUHs.K() <= 0.0d) {
            bVarUHs.n(10.0d);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        zR();
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("recycleRes");
        }
        this.Ym = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        f20957aa = this.Ym;
        super.onSaveInstanceState(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.sP;
        if (sj2 == null || !sP(sj2.sP) || Sj(this.sP.sP)) {
            return;
        }
        if (this.Fmk) {
            this.Fmk = false;
            finish();
        } else if (this.sP.JcM.WMZ()) {
            finish();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.sP
    public void sef() {
    }
}
