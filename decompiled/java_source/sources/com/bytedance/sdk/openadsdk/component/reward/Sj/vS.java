package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    private final Sj Sj;

    public vS(Sj sj2) {
        this.Sj = sj2;
    }

    public void Sj(float[] fArr, final com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar, final com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar2) {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2;
        Arrays.toString(fArr);
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(String.valueOf(this.Sj.sP.If())).setExpressViewAcceptedSize(fArr[0], fArr[1]).build();
        Sj sj2 = this.Sj;
        sj2.wE.Sj(adSlotBuild, sj2.Wjd.Zq);
        Sj sj3 = this.Sj;
        sef sefVar = sj3.Mts;
        if (sefVar != null && (dq2 = sj3.wE) != null) {
            sefVar.Sj(dq2.Sj());
        }
        this.Sj.wE.Sj(new com.bytedance.sdk.openadsdk.core.Dq.sef() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.1
            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public int EjP() {
                if (vS.this.Sj.wE.TKC()) {
                    return 4;
                }
                if (vS.this.Sj.wE.EjP()) {
                    return 5;
                }
                if (vS.this.Sj.f20992ib.HiB()) {
                    return 1;
                }
                if (vS.this.Sj.f20992ib.sP()) {
                    return 2;
                }
                vS.this.Sj.f20992ib.EjP();
                return 3;
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void HiB() {
                vS.this.Sj.LD.Sj(sPVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj() {
                vS.this.Sj.Mts.EjP();
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj(int i11) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        vS.this.Sj.f20992ib.ley();
                        return;
                    }
                    if (i11 == 3) {
                        vS.this.Sj.f20992ib.Sj(sPVar);
                        return;
                    } else if (i11 == 4) {
                        vS.this.Sj.f20992ib.Fmk();
                        return;
                    } else if (i11 != 5) {
                        return;
                    }
                }
                if (vS.this.Sj.f20992ib.sP() || vS.this.Sj.f20992ib.EjP()) {
                    return;
                }
                sPVar.Sj(0L, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj(int i11, com.bytedance.sdk.component.adexpress.sP.sef sefVar2) {
                vS.this.Sj.Wjd.Sj(i11, sefVar2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj(int i11, String str) {
                vS.this.Sj.f20992ib.Sj(i11, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj(String str, JSONObject jSONObject) {
                if (vS.this.Sj == null || vS.this.Sj.f20993jb == null) {
                    return;
                }
                vS.this.Sj.f20993jb.Sj(str, jSONObject);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void Sj(boolean z10, String str) {
                if (vS.this.Sj.ndK != z10) {
                    vS.this.Sj.Mts.Sj(str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public long TKC() {
                return vS.this.Sj.f20992ib.Dq();
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void sP() {
                if (vS.this.Sj.Wjd == null || vS.this.Sj.Wjd.TEQ() == null) {
                    return;
                }
                vS.this.Sj.Wjd.TEQ().performClick();
            }

            @Override // com.bytedance.sdk.openadsdk.core.Dq.sef
            public void sP(int i11) {
                vS.this.Sj.UHs = i11;
            }
        });
        this.Sj.wE.Sj(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
                if (vS.this.Sj == null || vS.this.Sj.sP == null || !vS.this.Sj.sP.hzV()) {
                    return;
                }
                sPVar.c_();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i11) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i11) {
                if (!vS.this.Sj.sP.Fqk()) {
                    vS.this.Sj.JcM.Sj(true);
                    vS.this.Sj.JcM.HiB();
                }
                vS.this.Sj.wE.HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        sPVar2.Sj(false, false, false, 90);
                    }
                });
                vS.this.Sj.Wjd.Fmk();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f11, float f12) {
                com.bytedance.sdk.openadsdk.core.model.TzV tzV;
                if (uP.TzV(vS.this.Sj.sP)) {
                    return;
                }
                if (!vS.this.Sj.sP.Fqk()) {
                    if (vS.this.Sj.wE.Dq()) {
                        sPVar2.Sj(true);
                        vS.this.Sj.f20992ib.TKC(false);
                    } else {
                        vS.this.Sj.f20992ib.TKC(true);
                    }
                    vS.this.Sj.Wjd.Sj(8);
                    vS.this.Sj.JcM.Sj(true);
                    vS.this.Sj.JcM.HiB();
                    if (vS.this.Sj.wE.Dq()) {
                        vS.this.Sj.wE.sP().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                        sPVar2.Sj(vS.this.Sj.Wjd.vS());
                    } else if (vS.this.Sj.sP.UHs() != null && sPVar2.Sj()) {
                        vS.this.Sj.dwU = true;
                    }
                }
                sPVar2.wE();
                if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(vS.this.Sj.sP) && (tzV = vS.this.Sj.Wjd.Zq) != null) {
                    tzV.TKC();
                }
                if (sPVar2 instanceof com.bytedance.sdk.openadsdk.component.reward.sP.vS) {
                    com.bytedance.sdk.openadsdk.component.reward.sP.vS.Sj(vS.this.Sj.sP, vS.this.Sj.wE.Dq(), vS.this.Sj.HiB);
                    if (!vS.this.Sj.wE.Dq()) {
                        vS.this.Sj.f20993jb.vS();
                    }
                }
                vS.this.Sj.Wjd.Fmk();
            }
        });
        Sj sj4 = this.Sj;
        Activity activity = sj4.Fm;
        sU sUVar = sj4.sP;
        String str = sj4.HiB;
        com.bytedance.sdk.openadsdk.core.Dq.uA uAVar = new com.bytedance.sdk.openadsdk.core.Dq.uA(activity, sUVar, str, Mts.Sj(str)) { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.3
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
            }
        };
        uAVar.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.4
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                sPVar.c_();
            }
        });
        HashMap map = new HashMap();
        if (uP.TzV(this.Sj.sP)) {
            map.put("click_scence", 3);
        } else {
            map.put("click_scence", 1);
        }
        Sj sj5 = this.Sj;
        if (sj5.gR && (vSVar = sj5.HS) != null) {
            int iSj = ((!sj5.Ir || vSVar.uP() == null) ? this.Sj.HS.uA : this.Sj.HS.uP().Sj(this.Sj.HS)) + 1;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", iSj);
                map.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
        }
        uAVar.Sj(map);
        Sj sj6 = this.Sj;
        Activity activity2 = sj6.Fm;
        sU sUVar2 = sj6.sP;
        String str2 = sj6.HiB;
        com.bytedance.sdk.openadsdk.core.Dq.Dq dq3 = new com.bytedance.sdk.openadsdk.core.Dq.Dq(activity2, sUVar2, str2, Mts.Sj(str2)) { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.5
            @Override // com.bytedance.sdk.openadsdk.core.sP.Sj, com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                HashMap map2 = new HashMap();
                map2.put("duration", Long.valueOf(vS.this.Sj.f20992ib.Jcg()));
                Sj(map2);
                super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
            }
        };
        dq3.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.vS.6
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                sPVar.c_();
            }
        });
        HashMap map2 = new HashMap();
        if (uP.TzV(this.Sj.sP)) {
            map2.put("click_scence", 3);
        } else {
            map2.put("click_scence", 1);
        }
        dq3.Sj(map2);
        this.Sj.wE.Sj(uAVar, dq3);
        FrameLayout.LayoutParams layoutParams = (this.Sj.sP.Fqk() || com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.Sj.sP.fF()) || com.bytedance.sdk.openadsdk.core.model.TzV.TKC(this.Sj.sP)) ? new FrameLayout.LayoutParams(-1, -1) : new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.Sj.Wjd.vS().addView(this.Sj.wE.Sj(), layoutParams);
        if (!this.Sj.wE.Dq()) {
            sPVar2.Sj(false);
        }
        this.Sj.wE.Ym();
    }
}
