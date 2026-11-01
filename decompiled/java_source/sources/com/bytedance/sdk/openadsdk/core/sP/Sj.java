package com.bytedance.sdk.openadsdk.core.sP;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.TEQ;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends sP {
    private boolean FPG;
    private WeakReference<InterfaceC0278Sj> Mts;
    private boolean Sj;
    private boolean TKC;
    private int Wjd;
    private boolean sP;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.sP.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0278Sj {
        long getVideoProgress();
    }

    public Sj(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i11) {
        super(context, sUVar, str, i11);
        this.Sj = true;
        this.sP = false;
        this.TKC = false;
        this.FPG = false;
    }

    private boolean Dq() {
        return sU.HiB(((sP) this).vS) && ((sP) this).vS.LD() == 1;
    }

    private boolean EjP(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof com.bytedance.sdk.openadsdk.core.aa.sP.vS) || view.getId() == Zq.f21131gq || view.getId() == Zq.f21133jb || view.getId() == Zq.Ei || view.getId() == Zq.HpB || view.getId() == Zq.xhi || view.getId() == 520093726 || view.getId() == Zq.f21137vb) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        int i11 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i11 >= viewGroup.getChildCount()) {
                return false;
            }
            if (EjP(viewGroup.getChildAt(i11))) {
                return true;
            }
            i11++;
        }
    }

    private boolean TEQ() {
        if (((sP) this).vS == null || uA()) {
            return false;
        }
        if (((sP) this).vS.HcZ() != 5 && ((sP) this).vS.HcZ() != 15) {
            return false;
        }
        if (this.Wjd == 0) {
            this.Wjd = ((sP) this).vS.DKa();
        }
        sP();
        Sj();
        TKC();
        if (this.Wjd == 5 && Dq() && Sj() && !sP() && !TKC()) {
            return false;
        }
        int i11 = this.Wjd;
        return i11 == 1 || i11 == 2 || i11 == 5;
    }

    private String sP(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return "banner_call";
            case "open_ad":
                return "open_ad";
            case "embeded_ad":
                return "feed_call";
            case "interaction":
                return "interaction_call";
            case "slide_banner_ad":
                return "banner_call";
            default:
                return "";
        }
    }

    private boolean uA() {
        return this instanceof Dq;
    }

    public void EjP(boolean z10) {
        this.FPG = z10;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0257  */
    /* JADX WARN: Code duplicated, block: B:160:0x0339  */
    /* JADX WARN: Code duplicated, block: B:173:0x037e  */
    /* JADX WARN: Code duplicated, block: B:175:0x0382  */
    /* JADX WARN: Code duplicated, block: B:177:0x0386  */
    /* JADX WARN: Code duplicated, block: B:179:0x0390  */
    /* JADX WARN: Code duplicated, block: B:180:0x0393  */
    /* JADX WARN: Code duplicated, block: B:185:0x03a5 A[Catch: Exception -> 0x03bb, TryCatch #0 {Exception -> 0x03bb, blocks: (B:183:0x039c, B:185:0x03a5, B:189:0x03b8, B:187:0x03a9), top: B:213:0x039c }] */
    /* JADX WARN: Code duplicated, block: B:187:0x03a9 A[Catch: Exception -> 0x03bb, TryCatch #0 {Exception -> 0x03bb, blocks: (B:183:0x039c, B:185:0x03a5, B:189:0x03b8, B:187:0x03a9), top: B:213:0x039c }] */
    /* JADX WARN: Code duplicated, block: B:189:0x03b8 A[Catch: Exception -> 0x03bb, TRY_LEAVE, TryCatch #0 {Exception -> 0x03bb, blocks: (B:183:0x039c, B:185:0x03a5, B:189:0x03b8, B:187:0x03a9), top: B:213:0x039c }] */
    /* JADX WARN: Code duplicated, block: B:191:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:193:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:194:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:197:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:200:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:203:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:205:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:206:0x0400  */
    /* JADX WARN: Code duplicated, block: B:213:0x039c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e9  */
    @Override // com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
    public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        JSONObject jSONObject;
        boolean z11;
        int i11;
        JSONObject jSONObject2;
        View view2;
        int i12;
        Activity activitySj;
        Context context;
        boolean z12;
        int i13;
        String strChv;
        String str;
        if (Sj(view, 2, f11, f12, f13, f14, sparseArray, z10)) {
            return;
        }
        ((sP) this).vS.HiB(true);
        ((sP) this).vS.jU();
        if (!((sP) this).vS.uA()) {
            ((sP) this).vS.Sj(true);
        }
        if (sU.HiB(((sP) this).vS)) {
            sU sUVar = ((sP) this).vS;
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVar, ((sP) this).Jcg, sUVar.SPg());
        }
        if (this.sef != null) {
            if (this.dNu == null) {
                this.dNu = new HashMap();
            }
            this.dNu.put("duration", Long.valueOf(this.sef.HiB()));
        }
        int iXzt = ((sP) this).vS.xzt();
        ((sP) this).vS.xD(0);
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar = this.uvD;
        if (vSVar != null) {
            vSVar.Sj(iXzt > 0 ? iXzt : 0);
        }
        Map<String, Object> map = this.dNu;
        if (map != null) {
            map.remove("dsp_click_type");
            this.dNu.remove("click_probability_jump");
            this.dNu.remove("auto_click");
        }
        if (iXzt > 0) {
            if (this.dNu == null) {
                this.dNu = new HashMap();
            }
            if (((sP) this).vS.Ph() && iXzt < 11) {
                this.dNu.put("dsp_click_type", Integer.valueOf(iXzt));
            }
            if (iXzt >= 11 && ((sP) this).vS.AE() == 0) {
                this.dNu.put("click_probability_jump", Integer.valueOf(com.bytedance.sdk.openadsdk.core.model.Jcg.Sj(iXzt)));
            }
        }
        if (((sP) this).vS.Ph()) {
            if (view != null) {
                Object tag = view.getTag(570425345);
                if (tag instanceof String) {
                    str = (String) tag;
                } else {
                    str = "VAST_ACTION_BUTTON";
                }
            } else {
                str = "VAST_ACTION_BUTTON";
            }
            ((sP) this).vS.GMp().HiB(str);
            if (!TextUtils.isEmpty(str)) {
                Sj(str);
            }
            WeakReference<InterfaceC0278Sj> weakReference = this.Mts;
            long videoProgress = (weakReference == null || weakReference.get() == null) ? 0L : this.Mts.get().getVideoProgress();
            if ("VAST_ICON".equals(str)) {
                if (((sP) this).vS.GMp().sP() != null) {
                    ((sP) this).vS.GMp().sP().Sj(videoProgress);
                }
            } else if (!"VAST_END_CARD".equals(str)) {
                ((sP) this).vS.GMp().Sj().Jcg(videoProgress);
            } else if (((sP) this).vS.GMp().TKC() != null) {
                ((sP) this).vS.GMp().TKC().Sj(videoProgress);
            }
        }
        if (TEQ() && EjP(view) && !this.TKC) {
            super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
            return;
        }
        if (this.EjP == null) {
            this.EjP = dNu.Sj();
        }
        if (this.EjP != null && Sj(view, z10)) {
            JSONObject jSONObjectSj = RiZ.Sj(view);
            sef sefVar = this.HiB;
            if (sefVar != null) {
                int i14 = sefVar.f21076aa;
                JSONObject jSONObject3 = sefVar.Fmk;
                JSONObject jSONObject4 = sefVar.dNu;
                i11 = i14;
                z11 = sefVar.TzV;
                jSONObject = jSONObject3;
                jSONObject2 = jSONObject4;
            } else {
                jSONObject = jSONObjectSj;
                z11 = false;
                i11 = -1;
                jSONObject2 = null;
            }
            long j11 = this.uP;
            long j12 = this.wE;
            WeakReference<View> weakReference2 = this.uA;
            View viewEjP = weakReference2 == null ? EjP() : weakReference2.get();
            WeakReference<View> weakReference3 = this.TEQ;
            TEQ teqSj = Sj(f11, f12, f13, f14, sparseArray, j11, j12, viewEjP, weakReference3 == null ? HiB() : weakReference3.get(), vS(), FPG.Jcg(this.EjP), FPG.uA(this.EjP), FPG.Dq(this.EjP), i11, jSONObject, jSONObject2);
            this.Ym = teqSj;
            if (z11) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", ((sP) this).vS, teqSj, ((sP) this).Jcg, true, this.dNu, z10 ? 1 : 2);
                return;
            }
            int iSdp = ((sP) this).vS.sdp();
            if (iSdp == 2 || iSdp == 3) {
                view2 = view;
                if (iSdp == 3) {
                    strChv = ((sP) this).vS.Chv();
                    if (TextUtils.isEmpty(strChv) && strChv.contains("play.google.com/store")) {
                        if (!com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP.Sj(this.EjP, strChv, strChv.substring(strChv.indexOf("?id=") + 4), ((sP) this).Jcg, ((sP) this).vS)) {
                            if (this.Fmk == null) {
                                sU sUVar2 = ((sP) this).vS;
                                TEQ teq = this.Ym;
                                String str2 = ((sP) this).Jcg;
                                Map<String, Object> map2 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar2, teq, str2, true, map2, i12);
                            } else {
                                sU sUVar3 = ((sP) this).vS;
                                TEQ teq2 = this.Ym;
                                String str3 = ((sP) this).Jcg;
                                Map<String, Object> map3 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar3, teq2, str3, true, map3, i12);
                            }
                            if (view2 != null) {
                                if (view.getId() != 520093726) {
                                }
                                fF.Sj(true);
                            } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                                fF.Sj(true);
                            }
                            if (view2 != null) {
                            }
                            if (activitySj == null) {
                                context = this.EjP;
                            } else {
                                context = activitySj;
                            }
                            if (TzV.TKC(((sP) this).vS)) {
                                boolean zSj = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj;
                            } else {
                                boolean zSj2 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj2;
                            }
                            if (this.Sj) {
                                sU sUVar4 = ((sP) this).vS;
                                TEQ teq3 = this.Ym;
                                String str4 = ((sP) this).Jcg;
                                Map<String, Object> map4 = this.dNu;
                                if (z10) {
                                    i13 = 1;
                                } else {
                                    i13 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar4, teq3, str4, z12, map4, i13);
                            }
                        } else if (this.Sj) {
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", ((sP) this).vS, this.Ym, ((sP) this).Jcg, true, this.dNu, z10 ? 1 : 2);
                        }
                    } else {
                        if (this.Fmk == null || this.sP) {
                            sU sUVar5 = ((sP) this).vS;
                            TEQ teq4 = this.Ym;
                            String str5 = ((sP) this).Jcg;
                            Map<String, Object> map5 = this.dNu;
                            if (z10) {
                                i12 = 1;
                            } else {
                                i12 = 2;
                            }
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar5, teq4, str5, true, map5, i12);
                        }
                        if (view2 != null) {
                            try {
                                if (view.getId() != 520093726 || (view2 instanceof com.bytedance.sdk.openadsdk.core.aa.sP.vS)) {
                                    fF.Sj(true);
                                } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                                    fF.Sj(true);
                                }
                            } catch (Exception unused) {
                            }
                        } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                            fF.Sj(true);
                        }
                        activitySj = view2 != null ? com.bytedance.sdk.component.utils.sP.Sj(view) : null;
                        if (activitySj == null) {
                            context = this.EjP;
                        } else {
                            context = activitySj;
                        }
                        if (TzV.TKC(((sP) this).vS) || !this.FPG) {
                            boolean zSj3 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                            fF.Sj(false);
                            z12 = zSj3;
                        } else {
                            z12 = false;
                        }
                        if (this.Sj) {
                            sU sUVar6 = ((sP) this).vS;
                            TEQ teq5 = this.Ym;
                            String str6 = ((sP) this).Jcg;
                            Map<String, Object> map6 = this.dNu;
                            if (z10) {
                                i13 = 1;
                            } else {
                                i13 = 2;
                            }
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar6, teq5, str6, z12, map6, i13);
                        }
                    }
                } else {
                    if (this.Fmk == null) {
                        sU sUVar7 = ((sP) this).vS;
                        TEQ teq6 = this.Ym;
                        String str7 = ((sP) this).Jcg;
                        Map<String, Object> map7 = this.dNu;
                        if (z10) {
                            i12 = 1;
                        } else {
                            i12 = 2;
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar7, teq6, str7, true, map7, i12);
                    } else {
                        sU sUVar8 = ((sP) this).vS;
                        TEQ teq7 = this.Ym;
                        String str8 = ((sP) this).Jcg;
                        Map<String, Object> map8 = this.dNu;
                        if (z10) {
                            i12 = 1;
                        } else {
                            i12 = 2;
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar8, teq7, str8, true, map8, i12);
                    }
                    if (view2 != null) {
                        if (view.getId() != 520093726) {
                        }
                        fF.Sj(true);
                    } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                        fF.Sj(true);
                    }
                    if (view2 != null) {
                    }
                    if (activitySj == null) {
                        context = this.EjP;
                    } else {
                        context = activitySj;
                    }
                    if (TzV.TKC(((sP) this).vS)) {
                        boolean zSj4 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                        fF.Sj(false);
                        z12 = zSj4;
                    } else {
                        boolean zSj5 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                        fF.Sj(false);
                        z12 = zSj5;
                    }
                    if (this.Sj) {
                        sU sUVar9 = ((sP) this).vS;
                        TEQ teq8 = this.Ym;
                        String str9 = ((sP) this).Jcg;
                        Map<String, Object> map9 = this.dNu;
                        if (z10) {
                            i13 = 1;
                        } else {
                            i13 = 2;
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar9, teq8, str9, z12, map9, i13);
                    }
                }
            } else if (iSdp != 4) {
                if (iSdp == 5) {
                    String strSP = sP(((sP) this).Jcg);
                    if (!TextUtils.isEmpty(strSP)) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_call", ((sP) this).vS, this.Ym, strSP, true, this.dNu, z10 ? 1 : 2);
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", ((sP) this).vS, this.Ym, ((sP) this).Jcg, Mts.sP(view.getContext(), ((sP) this).vS.aNB()), this.dNu, z10 ? 1 : 2);
                    view2 = view;
                } else if (iSdp != 8) {
                    view2 = view;
                    iSdp = -1;
                } else {
                    view2 = view;
                    if (iSdp == 3) {
                        strChv = ((sP) this).vS.Chv();
                        if (TextUtils.isEmpty(strChv)) {
                            if (this.Fmk == null) {
                                sU sUVar10 = ((sP) this).vS;
                                TEQ teq9 = this.Ym;
                                String str10 = ((sP) this).Jcg;
                                Map<String, Object> map10 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar10, teq9, str10, true, map10, i12);
                            } else {
                                sU sUVar11 = ((sP) this).vS;
                                TEQ teq10 = this.Ym;
                                String str11 = ((sP) this).Jcg;
                                Map<String, Object> map11 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar11, teq10, str11, true, map11, i12);
                            }
                            if (view2 != null) {
                                if (view.getId() != 520093726) {
                                }
                                fF.Sj(true);
                            } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                                fF.Sj(true);
                            }
                            if (view2 != null) {
                            }
                            if (activitySj == null) {
                                context = this.EjP;
                            } else {
                                context = activitySj;
                            }
                            if (TzV.TKC(((sP) this).vS)) {
                                boolean zSj6 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj6;
                            } else {
                                boolean zSj7 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj7;
                            }
                            if (this.Sj) {
                                sU sUVar12 = ((sP) this).vS;
                                TEQ teq11 = this.Ym;
                                String str12 = ((sP) this).Jcg;
                                Map<String, Object> map12 = this.dNu;
                                if (z10) {
                                    i13 = 1;
                                } else {
                                    i13 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar12, teq11, str12, z12, map12, i13);
                            }
                        } else {
                            if (this.Fmk == null) {
                                sU sUVar13 = ((sP) this).vS;
                                TEQ teq12 = this.Ym;
                                String str13 = ((sP) this).Jcg;
                                Map<String, Object> map13 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar13, teq12, str13, true, map13, i12);
                            } else {
                                sU sUVar14 = ((sP) this).vS;
                                TEQ teq13 = this.Ym;
                                String str14 = ((sP) this).Jcg;
                                Map<String, Object> map14 = this.dNu;
                                if (z10) {
                                    i12 = 1;
                                } else {
                                    i12 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar14, teq13, str14, true, map14, i12);
                            }
                            if (view2 != null) {
                                if (view.getId() != 520093726) {
                                }
                                fF.Sj(true);
                            } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                                fF.Sj(true);
                            }
                            if (view2 != null) {
                            }
                            if (activitySj == null) {
                                context = this.EjP;
                            } else {
                                context = activitySj;
                            }
                            if (TzV.TKC(((sP) this).vS)) {
                                boolean zSj8 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj8;
                            } else {
                                boolean zSj9 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                                fF.Sj(false);
                                z12 = zSj9;
                            }
                            if (this.Sj) {
                                sU sUVar15 = ((sP) this).vS;
                                TEQ teq14 = this.Ym;
                                String str15 = ((sP) this).Jcg;
                                Map<String, Object> map15 = this.dNu;
                                if (z10) {
                                    i13 = 1;
                                } else {
                                    i13 = 2;
                                }
                                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar15, teq14, str15, z12, map15, i13);
                            }
                        }
                    } else {
                        if (this.Fmk == null) {
                            sU sUVar16 = ((sP) this).vS;
                            TEQ teq15 = this.Ym;
                            String str16 = ((sP) this).Jcg;
                            Map<String, Object> map16 = this.dNu;
                            if (z10) {
                                i12 = 1;
                            } else {
                                i12 = 2;
                            }
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar16, teq15, str16, true, map16, i12);
                        } else {
                            sU sUVar17 = ((sP) this).vS;
                            TEQ teq16 = this.Ym;
                            String str17 = ((sP) this).Jcg;
                            Map<String, Object> map17 = this.dNu;
                            if (z10) {
                                i12 = 1;
                            } else {
                                i12 = 2;
                            }
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click_button", sUVar17, teq16, str17, true, map17, i12);
                        }
                        if (view2 != null) {
                            if (view.getId() != 520093726) {
                            }
                            fF.Sj(true);
                        } else if (((Boolean) view2.getTag(520093762)).booleanValue()) {
                            fF.Sj(true);
                        }
                        if (view2 != null) {
                        }
                        if (activitySj == null) {
                            context = this.EjP;
                        } else {
                            context = activitySj;
                        }
                        if (TzV.TKC(((sP) this).vS)) {
                            boolean zSj10 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                            fF.Sj(false);
                            z12 = zSj10;
                        } else {
                            boolean zSj11 = fF.Sj(context, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                            fF.Sj(false);
                            z12 = zSj11;
                        }
                        if (this.Sj) {
                            sU sUVar18 = ((sP) this).vS;
                            TEQ teq17 = this.Ym;
                            String str18 = ((sP) this).Jcg;
                            Map<String, Object> map18 = this.dNu;
                            if (z10) {
                                i13 = 1;
                            } else {
                                i13 = 2;
                            }
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar18, teq17, str18, z12, map18, i13);
                        }
                    }
                }
            } else if (!uP.sP(((sP) this).vS) || (this.Fmk == null && this.TzV == null)) {
                view2 = view;
                com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar2 = this.uvD;
                if (vSVar2 != null) {
                    vSVar2.EjP();
                    Map<String, Object> map19 = this.dNu;
                    if (((sP) this).vS.uA() && !((sP) this).vS.Dq()) {
                        map19.put("auto_click", Boolean.TRUE);
                        ((sP) this).vS.sP(false);
                    }
                    if (this.Sj) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", ((sP) this).vS, this.Ym, ((sP) this).Jcg, true, map19, z10 ? 1 : 2);
                    }
                }
            } else {
                view2 = view;
                activitySj = view2 != null ? com.bytedance.sdk.component.utils.sP.Sj(view) : null;
                boolean zSj12 = fF.Sj(activitySj == null ? this.EjP : activitySj, ((sP) this).vS, this.Dq, this.Fmk, this.TzV, ((sP) this).Jcg, this.uvD, true, iXzt);
                if (this.Sj) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", ((sP) this).vS, this.Ym, ((sP) this).Jcg, zSj12, this.dNu, z10 ? 1 : 2);
                }
            }
            sP.Sj sj2 = this.f21093aa;
            if (sj2 != null) {
                sj2.Sj(view2, iSdp);
            }
        }
    }

    public void Sj(InterfaceC0278Sj interfaceC0278Sj) {
        this.Mts = new WeakReference<>(interfaceC0278Sj);
    }

    public void Sj(boolean z10) {
        this.Sj = z10;
    }

    protected boolean Sj() {
        sU sUVar = ((sP) this).vS;
        if (sUVar == null) {
            return true;
        }
        int iSP = dNu.EjP().sP(sUVar.If());
        int iTKC = com.bytedance.sdk.component.utils.TzV.TKC(dNu.Sj());
        if (iSP == 1) {
            return Mts.EjP(iTKC);
        }
        if (iSP == 2) {
            return Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC);
        }
        if (iSP != 3) {
            return iSP != 5 || Mts.EjP(iTKC) || Mts.vS(iTKC);
        }
        return false;
    }

    public void TKC(boolean z10) {
        this.TKC = z10;
    }

    public boolean TKC() {
        return false;
    }

    public void sP(boolean z10) {
        this.sP = z10;
    }

    public boolean sP() {
        return false;
    }
}
