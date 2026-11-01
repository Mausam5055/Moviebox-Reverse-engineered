package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class TzV extends RiZ implements b.a, b.c {
    int EjP;
    boolean HiB;
    private long JcM;
    int Jcg;
    private Zq LD;
    private com.bytedance.sdk.openadsdk.Sj.sP.TKC Mts;
    int Sj;
    boolean TKC;
    private long WMZ;
    private com.bytedance.sdk.openadsdk.multipro.sP.Sj fF;
    boolean sP;
    boolean vS;

    public TzV(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, AdSlot adSlot, String str) {
        super(context, sUVar, adSlot, str, false, true);
        this.Sj = 1;
        this.sP = false;
        this.TKC = true;
        this.HiB = true;
        this.vS = true;
        this.Jcg = -1;
        Jcg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar, boolean z10) {
        int i11;
        double dVS = sefVar.vS();
        double dJcg = sefVar.Jcg();
        double dDq = sefVar.Dq();
        double dUA = sefVar.uA();
        if ((dDq == 0.0d || dUA == 0.0d) && (i11 = this.Jcg) != 7 && i11 != 10 && i11 != 9) {
            return false;
        }
        int iSP = FPG.sP(this.Dq, (float) dVS);
        int iSP2 = FPG.sP(this.Dq, (float) dJcg);
        int iSP3 = FPG.sP(this.Dq, (float) dDq);
        int iSP4 = FPG.sP(this.Dq, (float) dUA);
        float fMin = Math.min(Math.min(FPG.sP(this.Dq, sefVar.aa()), FPG.sP(this.Dq, sefVar.Fmk())), Math.min(FPG.sP(this.Dq, sefVar.sef()), FPG.sP(this.Dq, sefVar.Zq())));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f21014aa.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iSP3, iSP4);
        }
        layoutParams.width = iSP3;
        layoutParams.height = iSP4;
        layoutParams.topMargin = iSP2;
        layoutParams.leftMargin = iSP;
        layoutParams.setMarginStart(iSP);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        this.f21014aa.setLayoutParams(layoutParams);
        FPG.sP(this.f21014aa, fMin);
        Zq zq2 = this.LD;
        if (zq2 == null || !z10) {
            return true;
        }
        zq2.Sj(iSP3, iSP4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(@NonNull com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (Sj(sefVar, false)) {
            this.f21014aa.removeAllViews();
            if (this.LD != null) {
                int i11 = this.Jcg;
                if ((i11 == 7 || i11 == 10) && (sefVar instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP)) {
                    FrameLayout frameLayoutUvD = ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP) sefVar).uvD();
                    if (frameLayoutUvD != null) {
                        frameLayoutUvD.removeAllViews();
                        frameLayoutUvD.addView(this.LD, new FrameLayout.LayoutParams(-1, -1));
                    }
                } else if (sefVar.Sj() == null) {
                    this.f21014aa.addView(this.LD);
                } else if (this.vS) {
                    sefVar.Sj().setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.vS, 1);
                    ((FrameLayout) sefVar.Sj()).removeAllViews();
                    ((FrameLayout) sefVar.Sj()).addView(this.LD, new FrameLayout.LayoutParams(-1, -1));
                    this.vS = false;
                }
                this.LD.Sj(0L, true, false);
                EjP(this.EjP);
                if (!com.bytedance.sdk.component.utils.TzV.EjP(this.Dq) && !this.TKC && this.HiB) {
                    this.LD.HiB();
                }
                if (TextUtils.equals("embeded_ad", this.uA)) {
                    return;
                }
                setShowAdInteractionView(false);
            }
        }
    }

    private void dNu() {
        try {
            this.fF = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
            Zq zq2 = new Zq(this.Dq, this.Ym, this.uA, this.wE);
            this.LD = zq2;
            zq2.setShouldCheckNetChange(false);
            this.LD.setControllerStatusCallBack(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.TzV.2
                @Override // com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP
                public void Sj(boolean z10, long j11, long j12, long j13, boolean z11) {
                    TzV.this.fF.Sj = z10;
                    TzV.this.fF.HiB = j11;
                    TzV.this.fF.vS = j12;
                    TzV.this.fF.Jcg = j13;
                    TzV.this.fF.EjP = z11;
                }
            });
            this.LD.setVideoAdLoadListener(this);
            this.LD.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.uA)) {
                this.LD.setIsAutoPlay(this.sP ? this.TEQ.isAutoPlay() : this.TKC);
            } else if ("open_ad".equals(this.uA)) {
                this.LD.setIsAutoPlay(true);
            } else {
                this.LD.setIsAutoPlay(this.TKC);
            }
            if ("open_ad".equals(this.uA)) {
                this.LD.Sj(true, "initVideo");
            } else {
                boolean zTKC = com.bytedance.sdk.openadsdk.core.dNu.EjP().TKC(String.valueOf(this.EjP));
                this.f21017ib = zTKC;
                this.LD.Sj(zTKC, "initVideo");
            }
            this.LD.EjP();
        } catch (Exception unused) {
            this.LD = null;
        }
    }

    private void sP(long j11, long j12) {
        int iAbs = (int) Math.abs(((long) this.TzV) - j11);
        int i11 = this.TzV;
        if (i11 < 0 || iAbs > 500 || i11 > j12 || iAbs >= 500 || this.sU.contains(this.RiZ)) {
            return;
        }
        if (this.TzV > j11) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.TzV.4
                @Override // java.lang.Runnable
                public void run() {
                    TzV.this.LD.setCanInterruptVideoPlay(true);
                    TzV.this.LD.performClick();
                    TzV tzV = TzV.this;
                    tzV.sP(tzV.TzV, tzV.RiZ);
                }
            }, iAbs);
        } else {
            this.LD.setCanInterruptVideoPlay(true);
            this.LD.performClick();
            sP(this.TzV, this.RiZ);
        }
        this.sU.add(this.RiZ);
    }

    private void sP(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (sefVar == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.TzV.3
            @Override // java.lang.Runnable
            public void run() {
                TzV.this.TKC(sefVar);
            }
        });
    }

    private void setShowAdInteractionView(boolean z10) {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            zq2.setShowAdInteractionView(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public int EjP() {
        Zq zq2;
        if (this.Sj == 3 && (zq2 = this.LD) != null) {
            zq2.EjP();
        }
        Zq zq3 = this.LD;
        if (zq3 == null || !zq3.getNativeVideoController().uvD()) {
            return this.Sj;
        }
        return 1;
    }

    void EjP(int i11) {
        int iSP = com.bytedance.sdk.openadsdk.core.dNu.EjP().sP(i11);
        if (3 == iSP) {
            this.sP = false;
            this.TKC = false;
        } else if (4 == iSP) {
            this.sP = true;
        } else {
            int iTKC = com.bytedance.sdk.component.utils.TzV.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            if (1 == iSP) {
                this.sP = false;
                this.TKC = Mts.EjP(iTKC);
            } else if (2 == iSP) {
                if (Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC)) {
                    this.sP = false;
                    this.TKC = true;
                }
            } else if (5 == iSP && (Mts.EjP(iTKC) || Mts.vS(iTKC))) {
                this.sP = false;
                this.TKC = true;
            }
        }
        if (this.TKC) {
            return;
        }
        this.Sj = 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void HiB() {
    }

    protected void Jcg() {
        this.f21014aa = new FrameLayout(this.Dq);
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
        int iIf = sUVar != null ? sUVar.If() : 0;
        this.EjP = iIf;
        EjP(iIf);
        dNu();
        addView(this.f21014aa, new FrameLayout.LayoutParams(-1, -1));
        if (getWebView() != null) {
            getWebView().setBackgroundColor(0);
        }
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.aa.Jcg() { // from class: com.bytedance.sdk.openadsdk.core.Dq.TzV.1
            @Override // com.bytedance.sdk.openadsdk.aa.Jcg
            public void Sj(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
                JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.TzV.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TzV.this.Sj(sefVar, true);
                    }
                });
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11) {
        Zq zq2 = this.LD;
        if (zq2 == null) {
            return;
        }
        if (i11 == 1) {
            zq2.Sj(0L, true, false);
            return;
        }
        if (i11 == 2 || i11 == 3) {
            zq2.setCanInterruptVideoPlay(true);
            this.LD.performClick();
        } else if (i11 == 4) {
            zq2.getNativeVideoController().EjP();
        } else {
            if (i11 != 5) {
                return;
            }
            zq2.Sj(0L, true, false);
        }
    }

    @Override // u5.b.a
    public void Sj(int i11, int i12) {
        this.JcM = this.WMZ;
        this.Sj = 4;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.Sj(i11, i12);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11, String str) {
        this.TzV = i11;
        this.RiZ = str;
    }

    @Override // u5.b.c
    public void Sj(long j11, long j12) {
        this.HiB = false;
        int i11 = this.Sj;
        if (i11 != 5 && i11 != 3 && j11 > this.JcM) {
            this.Sj = 2;
        }
        this.JcM = j11;
        this.WMZ = j12;
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().setTimeUpdate(((int) (j12 - j11)) / 1000);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).setTimeUpdate(((int) (j12 - j11)) / 1000);
        }
        sP(j11, j12);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.component.adexpress.sP.Dq
    public void Sj(View view, int i11, com.bytedance.sdk.component.adexpress.TKC tkc) {
        if (i11 == -1 || tkc == null) {
            return;
        }
        if (i11 != 11) {
            super.Sj(view, i11, tkc);
            return;
        }
        try {
            Zq zq2 = this.LD;
            if (zq2 != null) {
                zq2.setCanInterruptVideoPlay(true);
                this.LD.performClick();
                if (this.Fmk) {
                    this.LD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21137vb).setVisibility(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.component.adexpress.sP.Zq
    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        this.Yf = ejP;
        this.Jcg = ejP.TKC();
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP2 = this.Yf;
        if ((ejP2 instanceof ib) && ((ib) ejP2).uvD() != null) {
            ((ib) this.Yf).uvD().Sj((sef) this);
        }
        if (sefVar != null && sefVar.TKC()) {
            sP(sefVar);
        }
        super.Sj(ejP, sefVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(boolean z10, String str) {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            zq2.Sj(z10, str);
            setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public long TKC() {
        return this.JcM;
    }

    @Override // u5.b.c
    public void d_() {
        this.HiB = false;
        this.Sj = 2;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.Sj(null);
        }
    }

    @Override // u5.b.c
    public void g_() {
        this.HiB = false;
        this.Fmk = true;
        this.Sj = 3;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.sP(null);
        }
    }

    protected Zq getExpressVideoView() {
        return this.LD;
    }

    public com.bytedance.sdk.openadsdk.Sj.sP.TKC getVideoAdListener() {
        return this.Mts;
    }

    @Nullable
    public b getVideoController() {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            return zq2.getNativeVideoController();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.multipro.sP.Sj getVideoModel() {
        return this.fF;
    }

    @Override // u5.b.c
    public void h_() {
        this.HiB = false;
        this.Fmk = false;
        this.Sj = 2;
    }

    @Override // u5.b.c
    public void i_() {
        this.HiB = false;
        this.Sj = 5;
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().onvideoComplate();
        }
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.TKC(null);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).onvideoComplate();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void sP() {
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc) {
        this.Mts = tkc;
    }
}
