package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.ib;
import com.bytedance.sdk.openadsdk.core.Dq.sef;
import com.bytedance.sdk.openadsdk.core.Dq.uvD;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends RiZ {
    public static float Sj = 100.0f;
    public int EjP;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj HiB;
    uvD TKC;
    sef sP;
    private float vS;

    public sP(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2, AdSlot adSlot, String str) {
        super(sj2.Fm, sj2.sP, adSlot, str, sj2.ndK, !sj2.gR);
        this.EjP = 1;
        this.vS = -1.0f;
        this.HiB = sj2;
    }

    private void Jcg() {
        setBackupListener(new com.bytedance.sdk.component.adexpress.sP.TKC() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.sP.2
            @Override // com.bytedance.sdk.component.adexpress.sP.TKC
            public boolean Sj(ViewGroup viewGroup, int i11) {
                try {
                    ((RiZ) viewGroup).aa();
                    sP.this.TKC = new uvD(viewGroup.getContext());
                    sP sPVar = sP.this;
                    sPVar.TKC.Sj(((RiZ) sPVar).Ym, (RiZ) viewGroup, sP.this.HiB.xD);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (sefVar == null) {
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
                    frameLayoutUvD.addView(this.f21014aa, layoutParams);
                    return;
                }
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f21014aa.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(iSP3, iSP4);
            }
            layoutParams2.width = iSP3;
            layoutParams2.height = iSP4;
            layoutParams2.topMargin = iSP2;
            layoutParams2.leftMargin = iSP;
            layoutParams2.setMarginStart(iSP);
            layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            this.f21014aa.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public int EjP() {
        sef sefVar = this.sP;
        if (sefVar != null) {
            return sefVar.EjP();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void HiB() {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.HiB();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj() {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.Sj();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11) {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.Sj(i11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        sef sefVar2 = this.sP;
        if (sefVar2 != null) {
            sefVar2.Sj(i11, sefVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(int i11, String str) {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.Sj(i11, str);
        }
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
    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        this.Yf = ejP;
        sU sUVar = this.Ym;
        if (sUVar != null && sUVar.Fqk()) {
            super.Sj(ejP, sefVar);
            return;
        }
        if (ejP instanceof ib) {
            ib ibVar = (ib) ejP;
            if (ibVar.uvD() != null) {
                ibVar.uvD().Sj((sef) this);
            }
        }
        if (sefVar != null && sefVar.TKC()) {
            sP(sefVar);
            this.EjP = ejP.TKC();
        }
        super.Sj(ejP, sefVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(String str, JSONObject jSONObject) {
        super.Sj(str, jSONObject);
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.Sj(str, jSONObject);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void Sj(boolean z10, String str) {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.Sj(z10, str);
        }
        setSoundMute(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected boolean Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        sU sUVar = this.Ym;
        if ((sUVar instanceof dx) && ((dx) sUVar).Qne() && sefVar.TKC() && sefVar.sP() == 1) {
            return false;
        }
        return super.Sj(sefVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public long TKC() {
        sef sefVar = this.sP;
        if (sefVar != null) {
            return sefVar.TKC();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj TKC(int i11) {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj sjTKC = super.TKC(i11);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.HiB;
        if (sj2.gR && (vSVar = sj2.HS) != null) {
            if (sj2.Ir && vSVar.uP() != null) {
                sjTKC.sP = this.HiB.HS.uP().Sj(this.HiB.HS);
            } else if (this.HiB.HS.uP() != null) {
                sjTKC.sP = this.HiB.HS.uA;
            }
        }
        return sjTKC;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TzV tzV;
        TEQ teq = this.HiB.Wjd;
        if (teq != null && (tzV = teq.Zq) != null && tzV.uA()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.vS = motionEvent.getY();
            } else if (action == 1) {
            }
            if (FPG.Sj(this.vS, motionEvent.getY(), this.Dq)) {
                tzV.Sj(5);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public View getBackupContainerBackgroundView() {
        if (Fmk()) {
            return this.TKC.getBackupContainerBackgroundView();
        }
        return null;
    }

    public FrameLayout getVideoFrameLayout() {
        return Fmk() ? this.TKC.getVideoContainer() : this.f21014aa;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void sP() {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.sP();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ, com.bytedance.sdk.openadsdk.core.Dq.sef
    public void sP(int i11) {
        sef sefVar = this.sP;
        if (sefVar != null) {
            sefVar.sP(i11);
        }
    }

    public void sP(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (sefVar == null) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.sP.3
            @Override // java.lang.Runnable
            public void run() {
                sP.this.TKC(sefVar);
            }
        });
    }

    public void setExpressVideoListenerProxy(sef sefVar) {
        this.sP = sefVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.RiZ
    protected void vS() {
        this.sef = true;
        this.f21014aa = new FrameLayout(this.Dq);
        if (!com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Ym) && !com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP(this.Ym)) {
            addView(this.f21014aa, new FrameLayout.LayoutParams(-1, -1));
        }
        super.vS();
        com.bytedance.sdk.component.uA.vS webView = getWebView();
        if (webView != null) {
            webView.setBackgroundColor(0);
        }
        Jcg();
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.aa.Jcg() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.sP.1
            @Override // com.bytedance.sdk.openadsdk.aa.Jcg
            public void Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
                sP.this.sP(sefVar);
            }
        });
    }
}
