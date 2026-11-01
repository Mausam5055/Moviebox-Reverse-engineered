package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.sef;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Dq {
    private final String Dq;
    private final sU Jcg;
    com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Sj;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TEQ;
    private boolean Ym;
    Handler sP;
    private sP uA;
    private final Activity vS;
    boolean TKC = false;
    boolean EjP = false;
    boolean HiB = false;

    public Dq(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.TEQ = sj2;
        this.vS = sj2.Fm;
        this.Jcg = sj2.sP;
        this.Dq = sj2.HiB;
    }

    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Sj(sU sUVar) {
        if (sUVar.sdp() == 4) {
            return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.vS, sUVar, this.Dq);
        }
        return null;
    }

    public boolean Dq() {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return false;
        }
        return sPVar.Fmk();
    }

    public boolean EjP() {
        return this.EjP;
    }

    public Handler HiB() {
        if (this.sP == null) {
            this.sP = new Handler(Looper.getMainLooper());
        }
        return this.sP;
    }

    public void Jcg() {
        sP sPVar = this.uA;
        if (sPVar != null) {
            sPVar.TEQ();
        }
    }

    public sP Sj() {
        return this.uA;
    }

    public JSONObject Sj(JSONObject jSONObject) {
        sP sPVar = this.uA;
        if (sPVar != null) {
            return sPVar.Sj(jSONObject, this.TEQ.sP);
        }
        return null;
    }

    public void Sj(int i11, String str) {
        sP sPVar = this.uA;
        if (sPVar != null) {
            sPVar.sP(i11, str);
        }
    }

    public void Sj(int i11, boolean z10) {
        sP sPVar = this.uA;
        if (sPVar != null) {
            sPVar.Sj(i11, z10, false);
        }
    }

    public void Sj(AdSlot adSlot, TzV tzV) {
        if (this.HiB) {
            return;
        }
        this.HiB = true;
        sP sPVar = new sP(this.TEQ, adSlot, this.Dq);
        this.uA = sPVar;
        tzV.Sj(sPVar, sPVar.getVideoFrameLayout());
    }

    public void Sj(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return;
        }
        sPVar.setExpressInteractionListener(pAGExpressAdWrapperListener);
    }

    public void Sj(sef sefVar) {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return;
        }
        sPVar.setExpressVideoListenerProxy(sefVar);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.Dq.uA uAVar, com.bytedance.sdk.openadsdk.core.Dq.Dq dq2) {
        sU sUVar;
        if (this.uA == null || (sUVar = this.Jcg) == null) {
            return;
        }
        this.Sj = Sj(sUVar);
        uAVar.Sj(this.uA);
        uAVar.Sj(this.Sj);
        this.uA.setClickListener(uAVar);
        dq2.Sj((View) this.uA);
        dq2.Sj(this.Sj);
        this.uA.setClickCreativeListener(dq2);
    }

    public void Sj(boolean z10) {
        this.TKC = z10;
    }

    public void TEQ() {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return;
        }
        sPVar.Dq();
    }

    public boolean TKC() {
        return this.TKC;
    }

    public void Ym() {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return;
        }
        sPVar.uA();
        this.uA.TEQ();
    }

    public void aa() {
        if (sU.HiB(this.Jcg) && this.Jcg.Mts() == 3 && this.Jcg.FPG() == 0) {
            try {
                if (this.Jcg.liH() == 1) {
                    int iSP = FPG.sP(dNu.Sj(), 90.0f);
                    FrameLayout frameLayout = (FrameLayout) this.uA.getBackupContainerBackgroundView();
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                        layoutParams.bottomMargin = iSP;
                        frameLayout.setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public FrameLayout sP() {
        sP sPVar = this.uA;
        if (sPVar == null) {
            return null;
        }
        FrameLayout videoFrameLayout = sPVar.getVideoFrameLayout();
        if (this.uA.Fmk()) {
            aa();
        }
        return videoFrameLayout;
    }

    public void sP(boolean z10) {
        this.EjP = z10;
    }

    public int uA() {
        sP sPVar = this.uA;
        if (sPVar != null) {
            return sPVar.getDynamicShowType();
        }
        return 0;
    }

    public void vS() {
        if (this.Ym) {
            return;
        }
        this.Ym = true;
        sP sPVar = this.uA;
        if (sPVar != null) {
            sPVar.Ym();
        }
        Handler handler = this.sP;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }
}
