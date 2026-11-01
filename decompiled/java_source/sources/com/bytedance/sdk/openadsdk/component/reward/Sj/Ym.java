package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.R;
import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Ym {
    private final Sj Sj;
    private final com.bytedance.sdk.openadsdk.core.sP.HiB TKC;
    private final com.bytedance.sdk.openadsdk.core.sP.sP sP;

    public Ym(Sj sj2) {
        this.Sj = sj2;
        this.TKC = Sj(sj2, sj2.sP);
        this.sP = new com.bytedance.sdk.openadsdk.core.sP.sP(sj2.Fm, sj2.sP, sj2.HiB, sj2.EjP ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Ym.1
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                try {
                    Ym.this.Sj(view, f11, f12, f13, f14, sparseArray, this.Yf, this.ley, this.LqL);
                } catch (Exception e11) {
                    sU.sP("TTAD.RFReportManager", "onClickReport error :" + e11.getMessage());
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(Ym.this.Sj.sP, 9);
                Ym.this.Sj.f20992ib.WMZ();
            }
        };
    }

    private boolean Dq() {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj.sP;
        return sUVar != null && sUVar.qRN() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i11, int i12, int i13) {
        if (view == null) {
            return;
        }
        if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.HiB) {
            Sj("click_play_star_level", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.EjP || view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.Jcg) {
            Sj("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.TKC) {
            Sj("click_play_source", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.sP) {
            Sj("click_play_logo", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.f21127aa || view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.TO || view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.dNu) {
            Sj("click_start_play_bar", uA());
        } else if (view.getId() == 520093705) {
            Sj("click_start_play", uA());
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.Ym) {
            Sj("click_video", uA());
        } else if (view.getId() == 520093707 || view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.Dq) {
            Sj("fallback_endcard_click", uA());
        }
        sP(view, f11, f12, f13, f14, sparseArray, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj sj2) {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        Sj sj3 = this.Sj;
        if (!sj3.gR || (vSVar = sj3.HS) == null) {
            return;
        }
        if (sj3.Ir && vSVar.uP() != null) {
            sj2.sP = this.Sj.HS.uP().Sj(this.Sj.HS);
        } else if (this.Sj.HS.uP() != null) {
            sj2.sP = this.Sj.HS.uA;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str, JSONObject jSONObject) {
        Sj sj2 = this.Sj;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = sj2.sP;
        String str2 = sj2.HiB;
        if (!sj2.EjP) {
            jSONObject = null;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str2, str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj.sP;
        if ((sUVar instanceof dx) && ((dx) sUVar).YZ()) {
            try {
                jSONObject.put("choose_one_ad_real_show", true);
            } catch (JSONException e11) {
                sU.Sj("TTAD.RFReportManager", "reportShow json error", e11);
            }
        }
        Sj sj2 = this.Sj;
        if (!sj2.gR || (vSVar = sj2.HS) == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj((!sj2.Ir ? vSVar.uA : vSVar.uP().Sj(this.Sj.HS)) + 1, jSONObject);
        } catch (Throwable unused) {
        }
    }

    private void sP(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i11, int i12, int i13) {
        if (!Dq() || this.Sj.sP == null || view == null) {
            return;
        }
        int id2 = view.getId();
        if (id2 == com.bytedance.sdk.openadsdk.utils.Zq.HiB || id2 == com.bytedance.sdk.openadsdk.utils.Zq.EjP || id2 == com.bytedance.sdk.openadsdk.utils.Zq.TKC || id2 == com.bytedance.sdk.openadsdk.utils.Zq.sP || id2 == com.bytedance.sdk.openadsdk.utils.Zq.f21127aa || id2 == com.bytedance.sdk.openadsdk.utils.Zq.TO || id2 == com.bytedance.sdk.openadsdk.utils.Zq.dNu || id2 == 520093705 || id2 == com.bytedance.sdk.openadsdk.utils.Zq.Ym || id2 == 520093707 || id2 == com.bytedance.sdk.openadsdk.utils.Zq.Jcg) {
            int iUA = FPG.uA(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            com.bytedance.sdk.openadsdk.core.model.TEQ teqSj = new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().vS(f11).HiB(f12).EjP(f13).TKC(f14).sP(System.currentTimeMillis()).Sj(0L).sP(FPG.Sj(this.Sj.Wjd.Ym())).Sj(FPG.Sj((View) null)).TKC(FPG.TKC(this.Sj.Wjd.Ym())).EjP(FPG.TKC((View) null)).EjP(i12).HiB(i13).vS(i11).Sj(sparseArray).sP(com.bytedance.sdk.openadsdk.core.uA.sP().Sj() ? 1 : 2).TKC(iUA).Sj(FPG.Jcg(com.bytedance.sdk.openadsdk.core.dNu.Sj())).sP(FPG.Dq(com.bytedance.sdk.openadsdk.core.dNu.Sj())).Sj();
            HashMap map = new HashMap();
            map.put("duration", Long.valueOf(this.Sj.f20992ib.Jcg()));
            Sj sj2 = this.Sj;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_other", sj2.sP, teqSj, sj2.HiB, true, (Map<String, Object>) map, -1);
        }
    }

    private JSONObject uA() {
        try {
            long jDNu = this.Sj.f20992ib.dNu();
            int iTzV = this.Sj.f20992ib.TzV();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", jDNu);
                jSONObject.put("percent", iTzV);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public com.bytedance.sdk.openadsdk.core.sP.sP EjP() {
        return this.sP;
    }

    public com.bytedance.sdk.openadsdk.core.sP.HiB HiB() {
        return this.TKC;
    }

    public void Jcg() {
        JSONObject jSONObject = new JSONObject();
        Sj(jSONObject);
        Sj sj2 = this.Sj;
        com.bytedance.sdk.openadsdk.EjP.TKC.HiB(sj2.sP, sj2.HiB, jSONObject);
    }

    public com.bytedance.sdk.openadsdk.core.sP.HiB Sj(final Sj sj2, final com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        return new com.bytedance.sdk.openadsdk.core.sP.HiB(sj2.Fm, sUVar, sj2.HiB, sj2.EjP ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Ym.4
            @Override // com.bytedance.sdk.openadsdk.core.sP.HiB
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i11, int i12, int i13, boolean z10) {
                if (sUVar.Ph() && view != null) {
                    Object tag = view.getTag(570425345);
                    if (tag instanceof String) {
                        Sj((String) tag);
                    }
                }
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(sj2.f20992ib.Jcg()));
                if (sj2.TEQ.get()) {
                    map.put("click_scence", 2);
                } else if (uP.TzV(sUVar)) {
                    map.put("click_scence", 3);
                } else {
                    map.put("click_scence", 1);
                }
                Sj(map);
                sj2.f20993jb.c_();
                if (view.getId() == com.bytedance.sdk.openadsdk.utils.Zq.rB && uP.TzV(sUVar)) {
                    JSONObject jSONObject = new JSONObject();
                    if (sUVar.UHs() != null) {
                        try {
                            jSONObject.put("playable_url", sUVar.UHs().z());
                        } catch (JSONException e11) {
                            sU.Sj("TTAD.RFReportManager", "onRewardBarClick json error", e11);
                        }
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, sj2.HiB, "click_playable_download_button_loading", jSONObject);
                }
                sj2.kF.Sj(view, f11, f12, f13, f14, sparseArray, i11, i12, i13, new EjP.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Ym.4.1
                    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.EjP.Sj
                    public void Sj(View view2, float f15, float f16, float f17, float f18, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray2, int i14, int i15, int i16) {
                        Ym.this.Sj(view2, f15, f16, f17, f18, sparseArray2, i14, i15, i16);
                    }

                    @Override // com.bytedance.sdk.openadsdk.component.reward.Sj.EjP.Sj
                    public void Sj(String str, JSONObject jSONObject2) {
                        Ym.this.Sj(str, jSONObject2);
                    }
                });
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(sUVar, 9);
                sj2.f20992ib.WMZ();
            }
        };
    }

    public void Sj() {
        if (this.Sj.Fmk.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj.sP;
        Sj(jSONObject);
        if (this.Sj.Fmk.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, this.Sj.HiB, jSONObject);
            this.Sj.f20993jb.vS();
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj sj2 = new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(-1);
            Sj(sj2);
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Sj.Fm.findViewById(R.id.content), sUVar, sj2);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(sUVar);
        }
    }

    public void Sj(final Map<String, Object> map) {
        if (this.Sj.Fmk.get()) {
            return;
        }
        this.Sj.Fmk.set(true);
        final View viewFindViewById = this.Sj.Fm.findViewById(R.id.content);
        if (viewFindViewById == null) {
            viewFindViewById = this.Sj.Fm.getWindow().getDecorView();
        }
        viewFindViewById.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Ym.2
            @Override // java.lang.Runnable
            public void run() {
                Map map2;
                boolean z10 = false;
                if (Ym.this.Sj.sef.compareAndSet(false, true)) {
                    com.bytedance.sdk.openadsdk.core.model.sU sUVar = Ym.this.Sj.sP;
                    JSONObject jSONObject = null;
                    try {
                        jSONObject = map != null ? new JSONObject(map) : new JSONObject();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("width", viewFindViewById.getWidth());
                        jSONObject2.put("height", viewFindViewById.getHeight());
                        jSONObject2.put("alpha", viewFindViewById.getAlpha());
                        jSONObject.put("root_view", jSONObject2.toString());
                        Ym.this.Sj(jSONObject);
                    } catch (Throwable th2) {
                        sU.Sj("TTAD.RFReportManager", "run: ", th2);
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, Ym.this.Sj.HiB, jSONObject);
                    Ym.this.Sj.f20993jb.vS();
                    if (Ym.this.Sj.wE != null && (map2 = map) != null && map2.containsKey("dynamic_show_type")) {
                        z10 = true;
                    }
                    com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj sj2 = new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(z10 ? Ym.this.Sj.wE.uA() : -1);
                    Ym.this.Sj(sj2);
                    com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(Ym.this.Sj.Fm.findViewById(R.id.content), sUVar, sj2);
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(sUVar);
                }
            }
        });
    }

    public void Sj(boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj.sP;
        if (sUVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.Zq.Sj.EjP ejPHiB = com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj(z10 ? 7 : 8).TKC(String.valueOf(sUVar.If())).HiB(this.Sj.sP.cKW());
        ejPHiB.sP(this.Sj.JcM.ib()).vS(this.Sj.JcM.kF());
        ejPHiB.Jcg(this.Sj.sP.mZN()).EjP(this.Sj.sP.aZ());
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().sP(ejPHiB);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public com.bytedance.sdk.openadsdk.core.sP.HiB TKC() {
        this.TKC.Sj(this.Sj.Fm.findViewById(R.id.content));
        this.TKC.sP(this.Sj.xD.findViewById(520093713));
        if (this.Sj.kF.TKC() != null) {
            this.TKC.Sj(this.Sj.kF.TKC());
        }
        this.Sj.uP.Sj(this.TKC);
        this.TKC.Sj(new com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sj.Ym.3
            @Override // com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj
            public long getVideoProgress() {
                return Ym.this.Sj.f20992ib.Jcg();
            }
        });
        com.bytedance.sdk.openadsdk.component.reward.view.TEQ teq = this.Sj.Wjd;
        com.bytedance.sdk.openadsdk.core.sP.HiB hiB = this.TKC;
        teq.Sj(hiB, hiB, this.sP);
        this.Sj.FPG.Sj(this.TKC);
        return this.TKC;
    }

    public void TKC(boolean z10) {
        Sj sj2 = this.Sj;
        if (sj2 != null && z10 && sj2.sP.UmR() && !this.Sj.sP.Hs()) {
            this.Sj.sP.Jcg(true);
            Sj sj3 = this.Sj;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = sj3.sP;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, sj3.HiB, sUVar.at());
        }
    }

    public void sP() {
        boolean z10;
        com.bytedance.sdk.openadsdk.component.reward.view.Dq dq2;
        if (this.Sj.Fmk.get()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.Sj.sP.EjP() || (dq2 = this.Sj.wE) == null) {
                z10 = false;
            } else {
                jSONObject.put("dynamic_show_type", dq2.uA());
                this.Sj.wE.Sj(jSONObject);
                z10 = true;
            }
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj.sP;
            Sj(jSONObject);
            View viewFindViewById = this.Sj.Fm.findViewById(R.id.content);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("width", viewFindViewById.getWidth());
                jSONObject2.put("height", viewFindViewById.getHeight());
                jSONObject2.put("alpha", viewFindViewById.getAlpha());
            } catch (Throwable unused) {
            }
            jSONObject.put("root_view", jSONObject2.toString());
            if (this.Sj.Fmk.compareAndSet(false, true)) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, this.Sj.HiB, jSONObject);
                this.Sj.f20993jb.vS();
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj sj2 = new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(z10 ? this.Sj.wE.uA() : -1);
                Sj(sj2);
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Sj.Fm.findViewById(R.id.content), sUVar, sj2);
                com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(sUVar);
            }
        } catch (JSONException e11) {
            sU.Sj("TTAD.RFReportManager", "reportShowWhenBindVideoAd error", e11);
        }
    }

    public void sP(boolean z10) {
        Sj sj2 = this.Sj;
        if (sj2 == null) {
            return;
        }
        if (z10 || !sj2.Fmk.get() || this.Sj.Bml <= 0) {
            this.Sj.Bml = SystemClock.elapsedRealtime();
        } else {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.Sj.Bml);
            Sj sj3 = this.Sj;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(strValueOf, sj3.sP, sj3.HiB, sj3.f20992ib.Sj());
            this.Sj.Bml = 0L;
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.Sj.sP, z10 ? 4 : 8);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.Sj.sP, z10 ? 4 : 8);
    }

    public void vS() {
        JSONObject jSONObject = new JSONObject();
        if (uP.TzV(this.Sj.sP)) {
            this.Sj.uP.Sj(jSONObject);
        }
        int i11 = 1;
        try {
            if (this.Sj.TEQ.get()) {
                if (!this.Sj.JcM.TKC()) {
                    if (this.Sj.WMZ.EjP()) {
                        i11 = 3;
                    } else {
                        i11 = this.Sj.JcM.EjP() ? 2 : 0;
                    }
                }
                jSONObject.put("endcard_content", i11);
            } else {
                jSONObject.put("endCardNotShow", 1);
            }
        } catch (JSONException unused) {
        }
        Sj sj2 = this.Sj;
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(sj2.sP, sj2.HiB, "click_close", jSONObject);
    }
}
