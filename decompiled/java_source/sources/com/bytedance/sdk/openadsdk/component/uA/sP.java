package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.ib;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends RiZ {
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj EjP;
    private com.bytedance.sdk.openadsdk.component.Dq.TKC HiB;
    private FrameLayout Jcg;
    private b.InterfaceC0935b LD;
    boolean Sj;
    private final com.bytedance.sdk.openadsdk.component.vS.sP TKC;
    private final com.bytedance.sdk.openadsdk.component.Sj sP;
    private com.bytedance.sdk.openadsdk.component.vS.Sj vS;

    public sP(@NonNull Context context, sU sUVar, AdSlot adSlot, String str, com.bytedance.sdk.openadsdk.component.Sj sj2, com.bytedance.sdk.openadsdk.component.vS.sP sPVar, com.bytedance.sdk.openadsdk.component.Dq.Sj sj3) {
        super(context, sUVar, adSlot, str, true, true);
        this.Sj = true;
        this.sP = sj2;
        this.TKC = sPVar;
        this.EjP = sj3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(sef sefVar) {
        if (sefVar == null) {
            return;
        }
        if (sefVar.Sj() != null) {
            if (this.Sj) {
                sefVar.Sj().setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.vS, 1);
                ((FrameLayout) sefVar.Sj()).removeAllViews();
                FrameLayout frameLayout = (FrameLayout) sefVar.Sj();
                this.Jcg = frameLayout;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).gravity = 17;
                this.Sj = false;
                return;
            }
            return;
        }
        double dVS = sefVar.vS();
        double dJcg = sefVar.Jcg();
        double dDq = sefVar.Dq();
        double dUA = sefVar.uA();
        int iSP = FPG.sP(this.Dq, (float) dVS);
        int iSP2 = FPG.sP(this.Dq, (float) dJcg);
        int iSP3 = FPG.sP(this.Dq, (float) dDq);
        int iSP4 = FPG.sP(this.Dq, (float) dUA);
        if ((dUA != 0.0d && dDq != 0.0d) || this.Yf.TKC() == 7 || this.Yf.TKC() == 10) {
            if ((this.Yf.TKC() == 7 || this.Yf.TKC() == 10) && (sefVar instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP)) {
                FrameLayout frameLayoutUvD = ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP) sefVar).uvD();
                if (frameLayoutUvD != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams.gravity = 17;
                    frameLayoutUvD.addView(this.Jcg, layoutParams);
                    return;
                }
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.Jcg.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(iSP3, iSP4);
            }
            layoutParams2.width = iSP3;
            layoutParams2.height = iSP4;
            layoutParams2.topMargin = iSP2;
            layoutParams2.leftMargin = iSP;
            layoutParams2.setMarginStart(iSP);
            layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            this.Jcg.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public int EjP() {
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc = this.HiB;
        if (tkc != null && tkc.vS()) {
            return 1;
        }
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc2 = this.HiB;
        if (tkc2 != null && tkc2.HiB()) {
            return 3;
        }
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc3 = this.HiB;
        if (tkc3 != null && tkc3.EjP()) {
            return 2;
        }
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc4 = this.HiB;
        if (tkc4 != null && tkc4.sP()) {
            return 4;
        }
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc5 = this.HiB;
        return (tkc5 == null || !tkc5.TKC()) ? 3 : 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void HiB() {
        com.bytedance.sdk.openadsdk.component.vS.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.sP(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj() {
        com.bytedance.sdk.openadsdk.component.vS.Sj sj2 = this.vS;
        if (sj2 != null) {
            sj2.Sj(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11) {
        com.bytedance.sdk.openadsdk.component.Dq.TKC tkc = this.HiB;
        if (tkc == null) {
            return;
        }
        if (i11 != 1) {
            if (i11 == 2) {
                tkc.Jcg();
                this.TKC.EjP();
                return;
            } else if (i11 == 3) {
                tkc.Dq();
                this.TKC.TKC();
                return;
            } else if (i11 == 4) {
                tkc.uA();
                return;
            } else if (i11 != 5) {
                return;
            }
        }
        if (tkc.EjP() || this.HiB.HiB()) {
            return;
        }
        this.HiB.Sj(getVideoFrameLayout(), this.sP, this.Ym);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11, String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.component.adexpress.sP.Dq
    public void Sj(View view, int i11, com.bytedance.sdk.component.adexpress.TKC tkc) {
        if (i11 == -1 || tkc == null || i11 != 3) {
            super.Sj(view, i11, tkc);
        } else {
            HiB();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.component.adexpress.sP.Zq
    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP, sef sefVar) {
        this.Yf = ejP;
        if (ejP instanceof ib) {
            ib ibVar = (ib) ejP;
            if (ibVar.uvD() != null) {
                ibVar.uvD().Sj((com.bytedance.sdk.openadsdk.core.Dq.sef) this);
            }
        }
        if (sefVar != null && sefVar.TKC()) {
            sP(sefVar);
        }
        super.Sj(ejP, sefVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected void Sj(Fmk.Sj sj2) {
        sj2.HiB(com.bytedance.sdk.openadsdk.component.Jcg.Sj.sP());
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected void Sj(JSONObject jSONObject) {
        sU sUVar = this.Ym;
        boolean z10 = sUVar != null && sUVar.fF() == 0;
        sU sUVar2 = this.Ym;
        com.bytedance.sdk.openadsdk.component.Jcg.Sj.Sj(jSONObject, sUVar2 != null ? sUVar2.If() : 0, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public long TKC() {
        return this.EjP.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    public int getDynamicShowType() {
        if (this.Yf == null) {
            return 1;
        }
        return super.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.component.Jcg.Sj.Sj(this.Ym, dNu.EjP().Jcg(String.valueOf(this.Ym.If())));
    }

    public FrameLayout getVideoFrameLayout() {
        return this.Jcg;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void sP() {
        super.sP();
    }

    public void sP(final sef sefVar) {
        if (sefVar == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.uA.sP.2
            @Override // java.lang.Runnable
            public void run() {
                sP.this.TKC(sefVar);
            }
        });
    }

    public void setExpressVideoListenerProxy(b.InterfaceC0935b interfaceC0935b) {
        this.LD = interfaceC0935b;
    }

    public void setTopListener(com.bytedance.sdk.openadsdk.component.vS.Sj sj2) {
        this.vS = sj2;
    }

    public void setVideoManager(com.bytedance.sdk.openadsdk.component.Dq.TKC tkc) {
        this.HiB = tkc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected void vS() {
        this.sef = true;
        this.Jcg = new FrameLayout(this.Dq);
        if (!com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Ym) && !com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP(this.Ym)) {
            addView(this.Jcg, new FrameLayout.LayoutParams(-1, -1));
        }
        super.vS();
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.aa.Jcg() { // from class: com.bytedance.sdk.openadsdk.component.uA.sP.1
            @Override // com.bytedance.sdk.openadsdk.aa.Jcg
            public void Sj(sef sefVar) {
                sP.this.sP(sefVar);
            }
        });
    }
}
