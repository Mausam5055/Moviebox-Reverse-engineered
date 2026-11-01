package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class Zq {
    private volatile long Dq;
    private com.bytedance.adsdk.ugeno.sP.TKC Fmk;
    private volatile long Jcg;
    final sU Sj;
    private FrameLayout TKC;
    private boolean dNu;
    private final Sj sP;
    private com.bytedance.adsdk.ugeno.sP.TKC sef;
    private String uA;
    private volatile long vS;
    private final AtomicBoolean EjP = new AtomicBoolean(false);
    private final AtomicBoolean HiB = new AtomicBoolean(false);
    private final AtomicBoolean TEQ = new AtomicBoolean(false);
    private long Ym = 0;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f21004aa = 0;
    private String Zq = null;
    private boolean uvD = false;

    public Zq(Sj sj2) {
        this.sP = sj2;
        this.Sj = sj2.sP;
        this.uA = sj2.HiB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sef() {
        com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sjEfv;
        sU sUVar = this.Sj;
        if (sUVar == null || (sjEfv = sUVar.efv()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP sPVar = new com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP(this.sP.Fm, this.Sj, sjEfv, this.uA, new com.bytedance.sdk.openadsdk.core.TEQ.vS.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Zq.3
            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj(int i11, String str) {
                Zq.this.HiB.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void Sj(int i11, String str, String str2) {
                Zq.this.HiB.set(false);
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, true, zq2.uA, "fail", SystemClock.elapsedRealtime() - Zq.this.f21004aa, str2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, i11, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj(com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
                Zq.this.sef = tkc;
                Zq.this.HiB.set(true);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void Sj(String str) {
                Zq.this.f21004aa = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void sP(String str) {
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, true, zq2.uA, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, SystemClock.elapsedRealtime() - Zq.this.f21004aa, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, 0, null);
            }
        });
        sPVar.Sj(new com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Zq.4
            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj
            public String Sj() {
                return "overlay";
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj
            public void sP() {
                Zq.this.uvD = true;
                Zq.this.sP.Wjd.TEQ().performClick();
            }
        });
        sPVar.Sj();
        sPVar.Sj(this.sP.Wjd.TEQ());
    }

    public void Dq() {
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.sef;
        if (tkc != null) {
            this.TKC.addView(tkc.Ym(), new FrameLayout.LayoutParams(this.sef.Mts(), this.sef.FPG()));
        }
    }

    public boolean EjP() {
        return this.uvD;
    }

    public boolean Fmk() {
        return this.HiB.get();
    }

    public void HiB() {
        this.vS = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Sj, this.uA);
    }

    public void Jcg() {
        TEQ();
        uA();
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.Fmk;
        if (tkc != null) {
            this.TKC.addView(tkc.Ym(), new FrameLayout.LayoutParams(this.Fmk.Mts(), this.Fmk.FPG()));
        }
    }

    public void Sj() {
        if (this.dNu) {
            return;
        }
        this.dNu = true;
        sP();
    }

    public void Sj(int i11) {
        FPG.Sj((View) this.TKC, i11);
    }

    public void TEQ() {
        com.bytedance.sdk.openadsdk.EjP.TKC.TKC(this.Sj, this.uA);
    }

    public void TKC() {
        com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sjCF;
        sU sUVar = this.Sj;
        if (sUVar == null || (sjCF = sUVar.cF()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP sPVar = new com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP(this.sP.Fm, this.Sj, sjCF, this.uA, new com.bytedance.sdk.openadsdk.core.TEQ.vS.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Zq.1
            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj() {
                Zq.this.HiB();
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj(int i11, String str) {
                Zq.this.EjP.set(false);
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, zq2.uA, jElapsedRealtime - Zq.this.vS, i11, str, (String) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void Sj(int i11, String str, String str2) {
                Zq.this.Zq = str2;
                Zq.this.EjP.set(false);
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, false, zq2.uA, "fail", SystemClock.elapsedRealtime() - Zq.this.Ym, str2, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, i11, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.sP
            public void Sj(com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
                Zq.this.Fmk = tkc;
                Zq.this.EjP.set(true);
                Zq.this.Jcg = SystemClock.elapsedRealtime();
                if (Zq.this.sP.JcM.wE()) {
                    View viewTEQ = Zq.this.sP.Wjd.TEQ();
                    if (viewTEQ instanceof com.bytedance.sdk.openadsdk.core.HiB.EjP) {
                        ((com.bytedance.sdk.openadsdk.core.HiB.EjP) viewTEQ).setImageResource(ib.EjP(Zq.this.sP.Ei, "tt_skip_btn"));
                    }
                }
                Zq.this.sef();
                Zq.this.uA();
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, zq2.uA, Zq.this.Jcg - Zq.this.vS);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void Sj(String str) {
                Zq.this.Ym = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
            public void sP(String str) {
                Zq.this.Zq = str;
                Zq zq2 = Zq.this;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(zq2.Sj, false, zq2.uA, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, SystemClock.elapsedRealtime() - Zq.this.Ym, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, 0, null);
            }
        });
        if (this.Sj.efv() != null) {
            sPVar.Sj(new com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Zq.2
                @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj
                public String Sj() {
                    return "normal";
                }

                @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj
                public void sP() {
                }
            });
        }
        sPVar.Sj();
        sPVar.Sj(this.sP.Wjd.TEQ());
    }

    public void Ym() {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(SystemClock.elapsedRealtime() - this.Dq, this.Sj, this.uA);
    }

    public boolean aa() {
        return this.EjP.get();
    }

    void sP() {
        this.TKC = (FrameLayout) this.sP.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Zq);
    }

    public void uA() {
        if (this.Dq <= 0 || this.Jcg <= 0 || this.TEQ.getAndSet(true)) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Jcg - this.Dq, this.Sj, this.uA, this.Zq);
    }

    public void vS() {
        this.Dq = SystemClock.elapsedRealtime();
    }
}
