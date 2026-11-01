package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Wjd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import u5.b;

/* JADX INFO: loaded from: classes3.dex */
public class uvD {
    private long Dq;
    private final PAGNativeAd EjP;
    private com.bytedance.sdk.openadsdk.core.sP.sP Fmk;
    private com.bytedance.sdk.openadsdk.Sj.sP.vS Jcg;
    private final com.bytedance.sdk.openadsdk.core.model.sU Sj;
    private final com.bytedance.sdk.openadsdk.Sj.sP.Sj TEQ;
    private final Context TKC;
    private b Ym;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS sP;
    private com.bytedance.sdk.openadsdk.core.sP.Sj sef;
    private final String vS;
    private List<View> HiB = new ArrayList();
    private final com.bytedance.sdk.openadsdk.EjP.Jcg uA = new com.bytedance.sdk.openadsdk.EjP.Jcg();

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final AtomicBoolean f21103aa = new AtomicBoolean(false);

    private static class Sj implements View.OnLayoutChangeListener {
        private final com.bytedance.sdk.openadsdk.EjP.Jcg Sj;
        private final ViewGroup sP;

        public Sj(com.bytedance.sdk.openadsdk.EjP.Jcg jcg, ViewGroup viewGroup) {
            this.Sj = jcg;
            this.sP = viewGroup;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.Sj.Sj(System.currentTimeMillis(), LD.Sj(this.sP));
        }
    }

    public uvD(Context context, PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, com.bytedance.sdk.openadsdk.Sj.sP.Sj sj2) {
        this.EjP = pAGNativeAd;
        this.Sj = sUVar;
        this.TKC = context;
        this.vS = str;
        this.TEQ = sj2;
        if (sUVar.sdp() == 4) {
            this.sP = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(context, sUVar, str);
        }
    }

    private Jcg EjP(ViewGroup viewGroup) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof Jcg) {
                return (Jcg) childAt;
            }
        }
        return null;
    }

    private void Sj(final ViewGroup viewGroup) {
        Wjd.Sj(viewGroup, true, 5, new Wjd.sP() { // from class: com.bytedance.sdk.openadsdk.core.uvD.6
            @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
            public void Sj() {
                uvD.this.sP(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
            public void Sj(View view, boolean z10) {
                if (!z10) {
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(uvD.this.Sj, 8);
                } else {
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(uvD.this.Sj, 4);
                    uvD.this.sP(viewGroup, view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
            public void Sj(boolean z10) {
                uvD.this.Sj(z10, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
            public void sP() {
                uvD.this.sP();
            }
        }, null);
    }

    private void Sj(@NonNull ViewGroup viewGroup, @Nullable View view) {
        HashMap map = new HashMap();
        map.put("click_scence", 1);
        Context contextSj = viewGroup != null ? com.bytedance.sdk.component.utils.sP.Sj(viewGroup) : null;
        if (contextSj == null) {
            contextSj = this.TKC;
        }
        if (this.Sj.ley() == 2) {
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj;
            String str = this.vS;
            this.Fmk = new com.bytedance.sdk.openadsdk.core.Dq.uA(contextSj, sUVar, str, Mts.Sj(str));
        } else {
            com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Sj;
            String str2 = this.vS;
            this.Fmk = new com.bytedance.sdk.openadsdk.core.sP.sP(contextSj, sUVar2, str2, Mts.Sj(str2));
        }
        this.Fmk.Sj(viewGroup);
        this.Fmk.Sj(this.Ym);
        this.Fmk.sP(view);
        this.Fmk.Sj(this.sP);
        this.Fmk.Sj(this.EjP);
        this.Fmk.Sj(map);
        this.Fmk.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.uvD.1
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view2, int i11) {
                if (uvD.this.Jcg != null) {
                    uvD.this.Jcg.onAdClicked();
                }
            }
        });
        if (this.Sj.ley() == 2) {
            Context context = this.TKC;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar3 = this.Sj;
            String str3 = this.vS;
            this.sef = new com.bytedance.sdk.openadsdk.core.Dq.Dq(context, sUVar3, str3, Mts.Sj(str3));
        } else {
            Context context2 = this.TKC;
            com.bytedance.sdk.openadsdk.core.model.sU sUVar4 = this.Sj;
            String str4 = this.vS;
            this.sef = new com.bytedance.sdk.openadsdk.core.sP.Sj(context2, sUVar4, str4, Mts.Sj(str4));
        }
        this.sef.Sj(viewGroup);
        this.sef.Sj(this.Ym);
        this.sef.sP(view);
        this.sef.Sj(this.sP);
        this.sef.Sj(this.EjP);
        this.sef.Sj(map);
        this.sef.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.uvD.2
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view2, int i11) {
                if (uvD.this.Jcg != null) {
                    uvD.this.Jcg.onAdClicked();
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(uvD.this.Sj, 9);
                uvD.this.TEQ.Fmk();
            }
        });
    }

    private void Sj(@NonNull ViewGroup viewGroup, Jcg jcg, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar = this.Fmk;
        if (sPVar == null || this.sef == null) {
            return;
        }
        jcg.Sj(list, sPVar);
        jcg.Sj(list2, this.sef);
        Sj(this.Fmk, this.sef);
        Sj(jcg, viewGroup);
    }

    private void Sj(@NonNull ViewGroup viewGroup, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar = this.Fmk;
        if (sPVar == null || this.sef == null) {
            return;
        }
        Sj(list, sPVar);
        Sj(list2, this.sef);
        Sj(this.Fmk, this.sef);
        Sj(viewGroup);
    }

    private void Sj(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.Sj.sP.vS vSVar) {
        this.Jcg = vSVar;
        viewGroup.addOnLayoutChangeListener(new Sj(this.uA, viewGroup));
        this.HiB = list;
        Sj(list2, (com.bytedance.sdk.openadsdk.core.sP.TKC) null);
        if (list != null) {
            for (View view : this.HiB) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        Sj(list3, (com.bytedance.sdk.openadsdk.core.sP.TKC) null);
    }

    private void Sj(Jcg jcg, final ViewGroup viewGroup) {
        jcg.setCallback(new Jcg.Sj() { // from class: com.bytedance.sdk.openadsdk.core.uvD.5
            @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
            public void Sj() {
                uvD.this.sP(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
            public void Sj(View view) {
                uvD.this.sP(viewGroup, view);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
            public void Sj(boolean z10) {
                uvD.this.Sj(z10, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
            public void sP() {
                uvD.this.sP();
            }
        });
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().EjP(String.valueOf(this.Sj.If()))) {
            com.bytedance.sdk.openadsdk.Sj.sP.Sj sj3 = this.TEQ;
            if (sj3 != null && sj3.Sj() != null) {
                this.TEQ.Sj().setOnClickListener(sj2);
                this.TEQ.Sj().setOnTouchListener(sj2);
            }
            com.bytedance.sdk.openadsdk.Sj.sP.Sj sj4 = this.TEQ;
            if (sj4 != null) {
                sj4.Sj(sj2);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj5 = this.TEQ;
        if (sj5 != null && sj5.Sj() != null) {
            PAGMediaView pAGMediaViewSj = this.TEQ.Sj();
            com.bytedance.sdk.openadsdk.core.sP.TKC tkc = new com.bytedance.sdk.openadsdk.core.sP.TKC() { // from class: com.bytedance.sdk.openadsdk.core.uvD.4
                @Override // com.bytedance.sdk.openadsdk.core.sP.TKC
                protected void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                    if (view instanceof PAGVideoMediaView) {
                        ((PAGVideoMediaView) view).handleInterruptVideo();
                    }
                }
            };
            pAGMediaViewSj.setOnClickListener(tkc);
            pAGMediaViewSj.setOnTouchListener(tkc);
        }
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj6 = this.TEQ;
        if (sj6 != null) {
            sj6.Sj((com.bytedance.sdk.openadsdk.core.sP.Sj) null);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Sj(com.bytedance.sdk.openadsdk.core.sP.sP sPVar, com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        if (this.Sj.ley() == 2) {
            sP(sPVar, sj2);
        } else {
            Sj(sj2);
        }
    }

    private void Sj(List<View> list, com.bytedance.sdk.openadsdk.core.sP.TKC tkc) {
        if (com.bytedance.sdk.component.utils.Fmk.sP(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(tkc);
                    view.setOnTouchListener(tkc);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(boolean z10, ViewGroup viewGroup) {
        if (z10 && this.Sj.UmR() && !this.Sj.Hs()) {
            this.Sj.Jcg(true);
            com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Sj;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, this.vS, sUVar.at());
        }
        if (z10 || this.Dq <= 0) {
            this.uA.Sj(System.currentTimeMillis(), LD.Sj(viewGroup));
            this.Dq = SystemClock.elapsedRealtime();
        } else {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.Dq);
            this.uA.Sj(System.currentTimeMillis(), LD.Sj(viewGroup));
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(strValueOf, this.Sj, this.vS, this.uA);
            this.Dq = 0L;
        }
    }

    private void TKC(ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVar;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.HiB != null) {
                JSONArray jSONArray = new JSONArray();
                for (View view : this.HiB) {
                    if (view != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("width", view.getWidth());
                            jSONObject2.put("height", view.getHeight());
                            jSONObject2.put("alpha", view.getAlpha());
                        } catch (Throwable unused) {
                        }
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("image_view", jSONArray.toString());
            }
            if (viewGroup != null) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("width", viewGroup.getWidth());
                    jSONObject3.put("height", viewGroup.getHeight());
                    jSONObject3.put("alpha", viewGroup.getAlpha());
                } catch (Throwable unused2) {
                }
                jSONObject.put("root_view", jSONObject3.toString());
            }
            PAGMediaView pAGMediaViewDq = this.TEQ.Dq();
            if (pAGMediaViewDq != null) {
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("width", FPG.TKC(this.TKC, pAGMediaViewDq.getWidth()) * 1.0f);
                    jSONObject4.put("height", FPG.TKC(this.TKC, pAGMediaViewDq.getHeight()) * 1.0f);
                } catch (Throwable unused3) {
                }
                jSONObject.put("media_view", jSONObject4.toString());
            }
            com.bytedance.sdk.openadsdk.core.Dq.RiZ riZSP = this.TEQ.sP();
            if (riZSP != null && (sUVar = this.Sj) != null) {
                jSONObject.put("dynamic_show_type", sUVar.fF());
                riZSP.Sj(jSONObject, this.Sj);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Sj, this.vS, jSONObject);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.Sj);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("InteractionManager", "onShowFun json error", e11);
        }
    }

    private Jcg sP(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.Sj.sP.vS vSVar) {
        this.Jcg = vSVar;
        viewGroup.addOnLayoutChangeListener(new Sj(this.uA, viewGroup));
        this.HiB = list;
        Jcg jcgEjP = EjP(viewGroup);
        if (jcgEjP == null) {
            jcgEjP = new Jcg(this.TKC, viewGroup);
            viewGroup.addView(jcgEjP);
        }
        jcgEjP.Sj();
        jcgEjP.setRefClickViews(list2);
        if (list != null) {
            for (View view : this.HiB) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        jcgEjP.setRefCreativeViews(list3);
        return jcgEjP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP() {
        if (this.Dq > 0) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(SystemClock.elapsedRealtime() - this.Dq), this.Sj, this.vS, this.uA);
            this.Dq = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(ViewGroup viewGroup) {
        this.uA.Sj(System.currentTimeMillis(), LD.Sj(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(ViewGroup viewGroup, View view) {
        if (this.f21103aa.get()) {
            return;
        }
        this.f21103aa.set(true);
        if (this.EjP instanceof com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC) {
            com.bytedance.sdk.openadsdk.core.Dq.RiZ riZSP = this.TEQ.sP();
            if (riZSP != null) {
                riZSP.Dq();
            }
            ((com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC) this.EjP).Sj(true);
        }
        this.uA.Sj(System.currentTimeMillis(), LD.Sj(viewGroup));
        this.Dq = SystemClock.elapsedRealtime();
        TKC(viewGroup);
        com.bytedance.sdk.openadsdk.Sj.sP.vS vSVar = this.Jcg;
        if (vSVar != null) {
            vSVar.Sj(this.EjP);
        }
        if (this.Sj.eI()) {
            Mts.Sj(this.Sj, view);
        }
        if (this.Sj.GMp() != null) {
            this.Sj.GMp().Sj().Sj(0L);
        }
    }

    private void sP(com.bytedance.sdk.openadsdk.core.sP.sP sPVar, com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj3 = this.TEQ;
        if (sj3 != null && sj3.sP() != null) {
            com.bytedance.sdk.openadsdk.core.Dq.RiZ riZSP = this.TEQ.sP();
            if ((sPVar instanceof com.bytedance.sdk.openadsdk.core.Dq.uA) && (sj2 instanceof com.bytedance.sdk.openadsdk.core.Dq.Dq)) {
                riZSP.setClickListener((com.bytedance.sdk.openadsdk.core.Dq.uA) sPVar);
                riZSP.setClickCreativeListener((com.bytedance.sdk.openadsdk.core.Dq.Dq) sj2);
            }
            riZSP.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.HiB() { // from class: com.bytedance.sdk.openadsdk.core.uvD.3
                @Override // com.bytedance.sdk.openadsdk.core.widget.HiB
                public void Sj() {
                    if (uvD.this.Jcg != null) {
                        uvD.this.Jcg.onAdClicked();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj4 = this.TEQ;
        if (sj4 != null && sj4.Sj() != null) {
            this.TEQ.Sj().setOnClickListener(sj2);
            this.TEQ.Sj().setOnTouchListener(sj2);
        }
        com.bytedance.sdk.openadsdk.Sj.sP.Sj sj5 = this.TEQ;
        if (sj5 != null) {
            sj5.Sj(sj2);
            this.TEQ.Sj(sPVar);
        }
    }

    public com.bytedance.sdk.openadsdk.EjP.Jcg Sj() {
        return this.uA;
    }

    public void Sj(View view, int i11) {
        com.bytedance.sdk.openadsdk.Sj.sP.vS vSVar = this.Jcg;
        if (vSVar != null) {
            vSVar.onAdClicked();
        }
    }

    public void Sj(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, @Nullable View view, com.bytedance.sdk.openadsdk.Sj.sP.vS vSVar) {
        Sj(viewGroup, list, list2, list3, vSVar);
        Sj(viewGroup, view);
        Sj(viewGroup, list2, list3);
    }

    public void Sj(b bVar) {
        this.Ym = bVar;
        com.bytedance.sdk.openadsdk.core.sP.sP sPVar = this.Fmk;
        if (sPVar != null) {
            sPVar.Sj(bVar);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.sef;
        if (sj2 != null) {
            sj2.Sj(bVar);
        }
    }
}
