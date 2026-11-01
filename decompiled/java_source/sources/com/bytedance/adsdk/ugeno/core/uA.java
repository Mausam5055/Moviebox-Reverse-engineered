package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uA {
    private HiB Dq;
    private vS EjP;
    private com.bytedance.adsdk.ugeno.EjP.Sj.Sj Fmk;
    private aa HiB;
    private Fmk Jcg;
    private Context Sj;
    private Dq TEQ;
    private com.bytedance.adsdk.ugeno.sP.TKC<View> TKC;
    private List<String> Zq;
    private JSONObject sP;
    private boolean sef;
    private String uA;
    private Zq vS;
    private boolean Ym = true;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20821aa = false;

    public uA(Context context) {
        this.Sj = context;
    }

    private void Sj(com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
        List<com.bytedance.adsdk.ugeno.sP.TKC<View>> listUA;
        if (tkc == null) {
            return;
        }
        JSONObject jSONObjectKF = tkc.kF();
        Iterator<String> itKeys = jSONObjectKF.keys();
        com.bytedance.adsdk.ugeno.sP.Sj sjFF = tkc.fF();
        com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj c0204SjTEQ = sjFF != null ? sjFF.TEQ() : null;
        sP(tkc);
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectKF.optString(next), this.sP);
            tkc.Sj(next, strSj);
            if (c0204SjTEQ != null) {
                c0204SjTEQ.Sj(this.Sj, next, strSj);
            }
        }
        tkc.Sj(this.EjP);
        tkc.Sj(this.HiB);
        tkc.Sj(this.Jcg);
        if ((tkc instanceof com.bytedance.adsdk.ugeno.sP.Sj) && (listUA = ((com.bytedance.adsdk.ugeno.sP.Sj) tkc).uA()) != null && listUA.size() > 0) {
            Iterator<com.bytedance.adsdk.ugeno.sP.TKC<View>> it = listUA.iterator();
            while (it.hasNext()) {
                Sj(it.next());
            }
        }
        if (c0204SjTEQ != null) {
            tkc.Sj(c0204SjTEQ.Sj());
        }
        tkc.sP();
    }

    private void sP(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        try {
            if (!tkc.LD() || tkc.Yf() == null || tkc.Yf().vS() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("i18n", tkc.Yf().vS());
            this.sP.put("xNode", jSONObject);
        } catch (Exception unused) {
        }
    }

    public com.bytedance.adsdk.ugeno.sP.TKC<View> Sj(HiB.Sj sj2, com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
        sP sPVar;
        List<HiB.Sj> listTKC;
        com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj c0204SjTEQ = null;
        if (!HiB.Sj(sj2)) {
            return null;
        }
        String strTKC = sj2.TKC();
        sP sPVarSj = EjP.Sj(strTKC);
        if (sPVarSj == null) {
            this.sef = true;
            if (this.Zq == null) {
                sPVar = sPVarSj;
                this.Zq = new ArrayList();
            }
            sPVar = sPVarSj;
            this.Zq.add(strTKC);
            strTKC = "View";
            sj2.Sj("View");
            sP sPVarSj2 = EjP.Sj("View");
            sPVar = sPVarSj2;
            if (sPVarSj2 == null) {
                "not found component ".concat("View");
                return null;
            }
        }
        sPVar = sPVarSj;
        com.bytedance.adsdk.ugeno.sP.TKC tkcSj = sPVar.Sj(this.Sj);
        if (tkcSj == null) {
            return null;
        }
        JSONObject jSONObjectEjP = sj2.EjP();
        tkcSj.HiB(com.bytedance.adsdk.ugeno.TKC.sP.Sj(sj2.Sj(), this.sP));
        tkcSj.vS(strTKC);
        tkcSj.TKC(jSONObjectEjP);
        tkcSj.Sj(sj2);
        tkcSj.sP(this.sP);
        HiB hiB = this.Dq;
        if (hiB == null) {
            tkcSj.Sj(true);
        } else {
            tkcSj.Sj(hiB.EjP());
        }
        tkcSj.Sj(this.TEQ);
        tkcSj.Sj(this.Fmk);
        Iterator<String> itKeys = jSONObjectEjP.keys();
        if (tkc instanceof com.bytedance.adsdk.ugeno.sP.Sj) {
            com.bytedance.adsdk.ugeno.sP.Sj sj3 = (com.bytedance.adsdk.ugeno.sP.Sj) tkc;
            c0204SjTEQ = sj3.TEQ();
            tkcSj.Sj(sj3);
        }
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectEjP.optString(next), this.sP);
            tkcSj.Sj(next, strSj);
            if (c0204SjTEQ != null) {
                c0204SjTEQ.Sj(this.Sj, next, strSj);
            }
        }
        if (c0204SjTEQ != null) {
            tkcSj.Sj(c0204SjTEQ.Sj());
        }
        if (tkcSj instanceof com.bytedance.adsdk.ugeno.sP.Sj) {
            List<HiB.Sj> listHiB = sj2.HiB();
            if (listHiB == null || listHiB.size() <= 0) {
                if (TextUtils.equals(tkcSj.WMZ(), "RecyclerLayout") && (listTKC = this.Dq.TKC()) != null && listTKC.size() > 0) {
                    Iterator<HiB.Sj> it = listTKC.iterator();
                    while (it.hasNext()) {
                        com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSj2 = Sj(it.next(), (com.bytedance.adsdk.ugeno.sP.TKC<View>) tkcSj);
                        if (tkcSj2 != null && tkcSj2.Wjd()) {
                            ((com.bytedance.adsdk.ugeno.sP.Sj) tkcSj).Sj(tkcSj2);
                        }
                    }
                }
                return tkcSj;
            }
            if (TextUtils.equals(tkcSj.WMZ(), "Swiper") && listHiB.size() != 1) {
                Log.e("UGTemplateEngine", "Swiper must be only one widget");
            }
            Iterator<HiB.Sj> it2 = listHiB.iterator();
            while (it2.hasNext()) {
                com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSj3 = Sj(it2.next(), (com.bytedance.adsdk.ugeno.sP.TKC<View>) tkcSj);
                if (tkcSj3 != null && !tkcSj3.UHs()) {
                    ((com.bytedance.adsdk.ugeno.sP.Sj) tkcSj).Sj(tkcSj3, tkcSj3.ley());
                }
            }
        }
        this.TKC = tkcSj;
        return tkcSj;
    }

    public com.bytedance.adsdk.ugeno.sP.TKC<View> Sj(HiB.Sj sj2, JSONObject jSONObject, JSONObject jSONObject2) {
        this.sP = jSONObject;
        Zq zq2 = this.vS;
        if (zq2 != null) {
            zq2.Sj();
        }
        this.Fmk = new com.bytedance.adsdk.ugeno.EjP.Sj.Sj();
        if (this.HiB instanceof com.bytedance.adsdk.ugeno.core.Sj.sP) {
            throw null;
        }
        this.TKC = Sj(sj2, (com.bytedance.adsdk.ugeno.sP.TKC<View>) null);
        Zq zq3 = this.vS;
        if (zq3 != null) {
            zq3.sP();
            this.TKC.Sj(this.vS);
        }
        Sj(this.TKC);
        return this.TKC;
    }

    public com.bytedance.adsdk.ugeno.sP.TKC<View> Sj(JSONObject jSONObject) {
        Zq zq2 = this.vS;
        if (zq2 != null) {
            zq2.Sj();
        }
        HiB hiB = new HiB(jSONObject, this.sP);
        this.Dq = hiB;
        if (this.HiB instanceof com.bytedance.adsdk.ugeno.core.Sj.sP) {
            hiB.sP();
            throw null;
        }
        this.TKC = sP(hiB.Sj(), null);
        Zq zq3 = this.vS;
        if (zq3 != null) {
            zq3.sP();
            this.TKC.Sj(this.vS);
        }
        return this.TKC;
    }

    public com.bytedance.adsdk.ugeno.sP.TKC<View> Sj(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.sP = jSONObject2;
        Zq zq2 = this.vS;
        if (zq2 != null) {
            zq2.Sj();
        }
        this.Dq = new HiB(jSONObject, jSONObject2, jSONObject3);
        this.Fmk = new com.bytedance.adsdk.ugeno.EjP.Sj.Sj();
        if (this.HiB instanceof com.bytedance.adsdk.ugeno.core.Sj.sP) {
            this.Dq.sP();
            throw null;
        }
        this.TKC = Sj(this.Dq.Sj(), (com.bytedance.adsdk.ugeno.sP.TKC<View>) null);
        Zq zq3 = this.vS;
        if (zq3 != null) {
            zq3.sP();
            this.TKC.Sj(this.vS);
        }
        Sj(this.TKC);
        return this.TKC;
    }

    public void Sj(Fmk fmk) {
        this.Jcg = fmk;
    }

    public void Sj(aa aaVar) {
        com.bytedance.adsdk.ugeno.core.Sj.Sj sjHiB = com.bytedance.adsdk.ugeno.HiB.Sj().HiB();
        if (sjHiB == null) {
            this.HiB = aaVar;
        } else {
            if (sjHiB.Sj(aaVar) != null) {
                throw null;
            }
            this.HiB = aaVar;
        }
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        if (tkc == null) {
            return;
        }
        if (!(tkc instanceof com.bytedance.adsdk.ugeno.sP.Sj)) {
            tkc.Sj(jSONObject);
            return;
        }
        tkc.Sj(jSONObject);
        List<com.bytedance.adsdk.ugeno.sP.TKC<View>> listUA = ((com.bytedance.adsdk.ugeno.sP.Sj) tkc).uA();
        if (listUA == null || listUA.size() <= 0) {
            return;
        }
        Iterator<com.bytedance.adsdk.ugeno.sP.TKC<View>> it = listUA.iterator();
        while (it.hasNext()) {
            Sj(it.next(), jSONObject);
        }
    }

    public void Sj(String str, Dq dq2) {
        this.TEQ = dq2;
        this.uA = str;
        if (dq2 != null) {
            this.sP = dq2.Sj();
        }
    }

    public boolean Sj() {
        return this.sef;
    }

    public com.bytedance.adsdk.ugeno.sP.TKC<View> sP(HiB.Sj sj2, com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
        List<HiB.Sj> listTKC;
        com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj c0204SjTEQ = null;
        if (!HiB.Sj(sj2)) {
            return null;
        }
        String strTKC = sj2.TKC();
        sP sPVarSj = EjP.Sj(strTKC);
        if (sPVarSj == null) {
            "not found component ".concat(String.valueOf(strTKC));
            this.sef = true;
            if (this.Zq == null) {
                this.Zq = new ArrayList();
            }
            this.Zq.add(strTKC);
            return null;
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkcSj = sPVarSj.Sj(this.Sj);
        if (tkcSj == null) {
            return null;
        }
        tkcSj.HiB(com.bytedance.adsdk.ugeno.TKC.sP.Sj(sj2.Sj(), this.sP));
        tkcSj.vS(strTKC);
        tkcSj.TKC(sj2.EjP());
        tkcSj.Sj(sj2);
        tkcSj.Sj(this.TEQ);
        if (tkc instanceof com.bytedance.adsdk.ugeno.sP.Sj) {
            com.bytedance.adsdk.ugeno.sP.Sj sj3 = (com.bytedance.adsdk.ugeno.sP.Sj) tkc;
            tkcSj.Sj(sj3);
            c0204SjTEQ = sj3.TEQ();
        }
        Iterator<String> itKeys = sj2.EjP().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(sj2.EjP().optString(next), this.sP);
            tkcSj.Sj(next, strSj);
            if (c0204SjTEQ != null) {
                c0204SjTEQ.Sj(this.Sj, next, strSj);
            }
        }
        if (tkcSj instanceof com.bytedance.adsdk.ugeno.sP.Sj) {
            List<HiB.Sj> listHiB = sj2.HiB();
            if (listHiB == null || listHiB.size() <= 0) {
                if (TextUtils.equals(tkcSj.WMZ(), "RecyclerLayout") && (listTKC = this.Dq.TKC()) != null && listTKC.size() > 0) {
                    Iterator<HiB.Sj> it = listTKC.iterator();
                    while (it.hasNext()) {
                        com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSP = sP(it.next(), tkcSj);
                        if (tkcSP != null && tkcSP.Wjd()) {
                            ((com.bytedance.adsdk.ugeno.sP.Sj) tkcSj).Sj(tkcSP);
                        }
                    }
                }
                return tkcSj;
            }
            if (TextUtils.equals(tkcSj.WMZ(), "Swiper") && listHiB.size() != 1) {
                Log.e("UGTemplateEngine", "Swiper must be only one widget");
            }
            Iterator<HiB.Sj> it2 = listHiB.iterator();
            while (it2.hasNext()) {
                com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSP2 = sP(it2.next(), tkcSj);
                if (tkcSP2 != null && tkcSP2.Wjd()) {
                    ((com.bytedance.adsdk.ugeno.sP.Sj) tkcSj).Sj(tkcSP2);
                }
            }
        }
        if (c0204SjTEQ != null) {
            tkcSj.Sj(c0204SjTEQ.Sj());
        }
        this.TKC = tkcSj;
        return tkcSj;
    }

    public List<String> sP() {
        return this.Zq;
    }

    public void sP(JSONObject jSONObject) {
        Zq zq2 = this.vS;
        if (zq2 != null) {
            zq2.TKC();
        }
        this.sP = jSONObject;
        Sj(this.TKC, jSONObject);
        Sj(this.TKC);
        if (this.vS != null) {
            sef sefVar = new sef();
            sefVar.Sj(0);
            sefVar.Sj(this.TKC);
            this.vS.Sj(sefVar);
        }
    }
}
