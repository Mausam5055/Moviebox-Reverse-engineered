package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.uA;
import com.bytedance.sdk.openadsdk.core.model.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends TKC {
    private final com.bytedance.sdk.openadsdk.component.vS.sP Fmk;
    private boolean Zq;
    private com.bytedance.sdk.openadsdk.component.uA.sP sef;
    private com.bytedance.sdk.openadsdk.component.uA.Jcg uvD;

    public sP(Activity activity, sU sUVar, FrameLayout frameLayout, Sj sj2, int i11, boolean z10, com.bytedance.sdk.openadsdk.component.Dq.Sj sj3, com.bytedance.sdk.openadsdk.component.vS.sP sPVar) {
        super(activity, sUVar, frameLayout, sj2, i11, z10, sj3);
        this.Fmk = sPVar;
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public int EjP() {
        return this.sef.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void HiB() {
        com.bytedance.sdk.openadsdk.component.uA.sP sPVar = this.sef;
        if (sPVar != null) {
            sPVar.Dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public JSONObject Sj(JSONObject jSONObject) {
        return this.sef.Sj(jSONObject, this.sP);
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void Sj() {
        uA uAVarSj = com.bytedance.sdk.openadsdk.component.Sj.sP.Sj(this.sP, this.Sj, this.f20986aa, this.sef);
        uAVarSj.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.sP.2
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                sP.this.HiB.HiB();
            }
        });
        this.sef.setClickListener(uAVarSj);
        Dq dqSP = com.bytedance.sdk.openadsdk.component.Sj.sP.sP(this.sP, this.Sj, this.f20986aa, this.sef);
        this.sef.setClickCreativeListener(dqSP);
        dqSP.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.sP.3
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                sP.this.HiB.HiB();
            }
        });
        super.vS();
        this.sef.setBackupListener(new com.bytedance.sdk.component.adexpress.sP.TKC() { // from class: com.bytedance.sdk.openadsdk.component.sP.4
            @Override // com.bytedance.sdk.component.adexpress.sP.TKC
            public boolean Sj(ViewGroup viewGroup, int i11) {
                StringBuilder sb2 = new StringBuilder("isUseBackup() called with: view = [");
                sb2.append(viewGroup);
                sb2.append("], errCode = [");
                sb2.append(i11);
                sb2.append("]");
                try {
                    ((RiZ) viewGroup).aa();
                    new com.bytedance.sdk.openadsdk.component.uA.Sj(sP.this.Sj).Sj((RiZ) sP.this.sef);
                    return true;
                } catch (Exception e11) {
                    Log.e("AppOpenAdExpressManager", "", e11);
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void Sj(int i11, boolean z10) {
        super.Sj(i11, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void Sj(ViewGroup viewGroup) {
        Pair<Float, Float> pairSj = com.bytedance.sdk.openadsdk.core.Dq.Sj.Sj.Sj(this.Sj.getWindow(), this.Jcg);
        com.bytedance.sdk.openadsdk.component.uA.sP sPVar = new com.bytedance.sdk.openadsdk.component.uA.sP(this.Sj, this.sP, new AdSlot.Builder().setCodeId(String.valueOf(this.sP.If())).setExpressViewAcceptedSize(((Float) pairSj.first).floatValue(), ((Float) pairSj.second).floatValue()).build(), "open_ad", this.HiB, this.Fmk, this.f20986aa);
        this.sef = sPVar;
        sPVar.setTopListener(this.HiB);
        this.sef.setExpressVideoListenerProxy(this.HiB);
        this.sef.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.sP.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i11) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i11) {
                sP.this.HiB.EjP();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f11, float f12) {
                if (sP.this.sef.Fmk()) {
                    sP.this.Zq = true;
                    if (sP.this.uvD != null) {
                        sP sPVar2 = sP.this;
                        if (sPVar2.EjP == sPVar2.uvD.getParent()) {
                            sP sPVar3 = sP.this;
                            sPVar3.EjP.removeView(sPVar3.uvD);
                        }
                    }
                    sP sPVar4 = sP.this;
                    sP.super.Sj((ViewGroup) sPVar4.EjP);
                    sP.super.Sj();
                    sP.super.sP();
                    return;
                }
                if (sP.this.sP.yfI()) {
                    sP.this.HiB.TKC();
                    return;
                }
                sP sPVar5 = sP.this;
                if (!sPVar5.TKC) {
                    sPVar5.HiB.TKC();
                } else if (!sPVar5.Sj(sPVar5.sef.getVideoFrameLayout())) {
                    sP.this.HiB.EjP();
                } else {
                    sP.this.sef.setVideoManager(sP.this.Jcg());
                    sP.this.HiB.TKC();
                }
            }
        });
        this.sP.aa(1);
        this.EjP.addView(this.sef, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.uA.Jcg jcg = new com.bytedance.sdk.openadsdk.component.uA.Jcg(this.Sj);
        this.uvD = jcg;
        this.EjP.addView(jcg);
        this.uA = this.uvD.getTopDislike();
        this.TEQ = this.uvD.getTopSkip();
        this.Ym = this.uvD.getTopCountDown();
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void TKC() {
        super.TKC();
        com.bytedance.sdk.openadsdk.component.uA.sP sPVar = this.sef;
        if (sPVar != null) {
            sPVar.Ym();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.TKC
    public void sP() {
        this.sef.uA();
    }
}
