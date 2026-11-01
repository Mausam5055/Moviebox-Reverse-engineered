package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private String Dq;
    private double HiB;
    private double Jcg;
    private Fmk uA;
    private int vS;
    public Map<String, TKC> Sj = new HashMap();
    public Map<String, TKC> sP = new HashMap();
    public Map<String, TKC> TKC = new HashMap();
    private double EjP = Math.random();

    static class Sj implements Cloneable {
        float Sj;
        float TKC;
        boolean sP;

        Sj() {
        }

        public Object clone() {
            try {
                return (Sj) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    static class TKC {
        float Sj;
        float sP;

        public TKC() {
        }

        public TKC(float f11, float f12) {
            this.Sj = f11;
            this.sP = f12;
        }

        public String toString() {
            return "UnitSize{width=" + this.Sj + ", height=" + this.sP + '}';
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.dynamic.HiB.sP$sP, reason: collision with other inner class name */
    static class C0218sP {
        double EjP;
        float HiB;
        float Sj;
        int TKC;
        int sP;

        C0218sP() {
        }

        static JSONObject Sj(C0218sP c0218sP) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_SIZE, c0218sP.Sj);
                jSONObject.put("letterSpacing", c0218sP.sP);
                jSONObject.put("lineHeight", c0218sP.EjP);
                jSONObject.put("maxWidth", c0218sP.HiB);
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_WEIGHT, c0218sP.TKC);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public sP(double d11, int i11, double d12, String str, Fmk fmk) {
        this.HiB = d11;
        this.vS = i11;
        this.Jcg = d12;
        this.Dq = str;
        this.uA = fmk;
    }

    private String EjP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            String strTKC = list.get(i11).TKC();
            if (i11 < list.size() - 1) {
                sb2.append(strTKC);
                sb2.append("-");
            } else {
                sb2.append(strTKC);
            }
        }
        return sb2.toString();
    }

    private void EjP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        this.Sj.remove(HiB(dq2));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        if (listDNu == null || listDNu.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        while (it.hasNext()) {
            TKC(it.next());
        }
    }

    private TKC HiB(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        String str = dq2.TKC() + "_" + f11 + "_" + f12;
        if (this.TKC.containsKey(str)) {
            return this.TKC.get(str);
        }
        TKC tkcVS = vS(dq2, f11, f12);
        this.TKC.put(str, tkcVS);
        return tkcVS;
    }

    private String HiB(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return dq2.TKC();
    }

    private TKC Sj(String str, C0218sP c0218sP, boolean z10, boolean z11, int i11, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return Ym.Sj(str, dq2.TEQ().sP(), C0218sP.Sj(c0218sP).toString(), z10, z11, i11, dq2, this.HiB, this.vS, this.Jcg, this.Dq, this.uA);
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, TKC tkc) {
        this.Sj.put(HiB(dq2), tkc);
    }

    private void Sj(List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> list, float f11, float f12) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Sj(it.next(), false)) {
                z10 = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list2 : list) {
            Sj sj2 = new Sj();
            boolean zSj = Sj(list2, !z10);
            sj2.Sj = zSj ? 1.0f : sP(list2, f11, f12).sP;
            sj2.sP = !zSj;
            arrayList.add(sj2);
        }
        List<Sj> listSj = TEQ.Sj(f12, arrayList);
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (((Sj) arrayList.get(i11)).Sj != listSj.get(i11).Sj) {
                List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list3 = list.get(i11);
                TKC(list3);
                sP(list3, f11, listSj.get(i11).Sj);
            }
        }
    }

    private void Sj(List<Sj> list, float f11, List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list2) {
        float f12 = 0.0f;
        for (Sj sj2 : list) {
            if (sj2.sP) {
                f12 += sj2.Sj;
            }
        }
        if (f12 > f11) {
            int i11 = 0;
            for (int i12 = 0; i12 < list2.size(); i12++) {
                if (list.get(i12).sP && list2.get(i12).zR()) {
                    i11++;
                }
            }
            if (i11 > 0) {
                float fCeil = (float) (Math.ceil(((f12 - f11) / i11) * 1000.0f) / 1000.0d);
                for (int i13 = 0; i13 < list2.size(); i13++) {
                    Sj sj3 = list.get(i13);
                    if (sj3.sP && list2.get(i13).zR()) {
                        sj3.Sj -= fCeil;
                    }
                }
            }
        }
    }

    private void Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, TKC tkc) {
        this.sP.put(EjP(list), tkc);
    }

    private boolean Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, boolean z10) {
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
            String strLey = vSVarHiB.ley();
            if (TextUtils.equals(strLey, "flex") || (z10 && ((TextUtils.equals(vSVarHiB.LqL(), "flex") && TextUtils.equals(vSVarHiB.ley(), "scale") && com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB.Sj.get(dq2.TEQ().sP()).intValue() == 7) || TextUtils.equals(strLey, "flex")))) {
                return true;
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            if (TKC(it.next())) {
                return true;
            }
        }
        return false;
    }

    private TKC TKC(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, float f11, float f12) {
        float fMax;
        EjP(list);
        TKC tkc = new TKC();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
            if (vSVarHiB.EZ() == 1 || vSVarHiB.EZ() == 2) {
                arrayList.add(dq2);
            }
            if (vSVarHiB.EZ() != 1 && vSVarHiB.EZ() != 2) {
                arrayList2.add(dq2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TKC((com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq) it.next(), f11, f12);
        }
        if (arrayList2.size() <= 0) {
            return tkc;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Float.valueOf(TKC(it2.next(), f11, f12).Sj));
        }
        ArrayList arrayList4 = new ArrayList();
        int i11 = 0;
        while (true) {
            fMax = 0.0f;
            if (i11 >= arrayList2.size()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = arrayList2.get(i11);
            String strLqL = dq3.TEQ().HiB().LqL();
            float fDq = dq3.Dq();
            boolean zEquals = TextUtils.equals(strLqL, "flex");
            if (TextUtils.equals(strLqL, "auto")) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq3.dNu();
                if (listDNu == null || listDNu.size() <= 0) {
                    zEquals = false;
                    break;
                }
                Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it3 = listDNu.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        zEquals = false;
                        break;
                    }
                    if (sP(it3.next())) {
                        zEquals = true;
                        break;
                    }
                }
            }
            Sj sj2 = new Sj();
            if (!zEquals) {
                fDq = ((Float) arrayList3.get(i11)).floatValue();
            }
            sj2.Sj = fDq;
            sj2.sP = !zEquals;
            if (zEquals) {
                fMax = ((Float) arrayList3.get(i11)).floatValue();
            }
            sj2.TKC = fMax;
            arrayList4.add(sj2);
            i11++;
        }
        Sj(arrayList4, f11, arrayList2);
        List<Sj> listSj = TEQ.Sj(f11, arrayList4);
        float f13 = 0.0f;
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            f13 += listSj.get(i12).Sj;
            if (((Float) arrayList3.get(i12)).floatValue() != listSj.get(i12).Sj) {
                EjP(arrayList2.get(i12));
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it4 = arrayList2.iterator();
        int i13 = 0;
        boolean z10 = false;
        while (it4.hasNext()) {
            i13++;
            if (!sP(it4.next())) {
                z10 = false;
                break;
            }
            if (i13 == arrayList2.size()) {
                z10 = true;
            }
        }
        fMax = z10 ? f12 : 0.0f;
        ArrayList arrayList5 = new ArrayList();
        for (int i14 = 0; i14 < arrayList2.size(); i14++) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq4 = arrayList2.get(i14);
            TKC TKC2 = TKC(dq4, listSj.get(i14).Sj, f12);
            if (!sP(dq4)) {
                fMax = Math.max(fMax, TKC2.sP);
            }
            arrayList5.add(TKC2);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            arrayList6.add(Float.valueOf(((TKC) it5.next()).sP));
        }
        if (!z10) {
            for (int i15 = 0; i15 < arrayList2.size(); i15++) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq5 = arrayList2.get(i15);
                if (sP(dq5) && ((Float) arrayList6.get(i15)).floatValue() != fMax) {
                    EjP(dq5);
                    TKC(dq5, listSj.get(i15).Sj, fMax);
                }
            }
        }
        tkc.Sj = f13;
        tkc.sP = fMax;
        return tkc;
    }

    private void TKC(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.sP.remove(EjP(list));
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            EjP(it.next());
        }
    }

    private boolean TKC(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu;
        if (!dq2.TzV() && TextUtils.equals(dq2.TEQ().HiB().ley(), "auto") && (listDNu = dq2.dNu()) != null && listDNu.size() > 0) {
            if (listDNu.size() == 1) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = listDNu.get(0).iterator();
                while (it.hasNext()) {
                    if (!sP(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = listDNu.iterator();
            while (it2.hasNext()) {
                if (Sj(it2.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private TKC sP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, float f11, float f12) {
        TKC tkcSj = Sj(list);
        if (tkcSj != null && (tkcSj.Sj != 0.0f || tkcSj.sP != 0.0f)) {
            return tkcSj;
        }
        TKC TKC2 = TKC(list, f11, f12);
        Sj(list, TKC2);
        return TKC2;
    }

    private boolean sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        if (dq2 == null) {
            return false;
        }
        if (TextUtils.equals(dq2.TEQ().HiB().ley(), "flex")) {
            return true;
        }
        return TKC(dq2);
    }

    private boolean sP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().TEQ().HiB().LqL(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z10 = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
                if (TextUtils.equals(dq2.TEQ().HiB().LqL(), "auto") && (listDNu = dq2.dNu()) != null) {
                    Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = listDNu.iterator();
                    int i11 = 0;
                    while (true) {
                        if (it2.hasNext()) {
                            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> next = it2.next();
                            i11++;
                            if (sP(next)) {
                                if (i11 == next.size()) {
                                    z10 = true;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return z10;
        }
    }

    private TKC vS(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        new TKC();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        dq2.TEQ().TKC();
        vSVarHiB.MuB();
        float fTzV = vSVarHiB.TzV();
        int iSdp = vSVarHiB.sdp();
        double dDwU = vSVarHiB.dwU();
        int iIOh = vSVarHiB.IOh();
        boolean zHpB = vSVarHiB.HpB();
        boolean zPfr = vSVarHiB.pfr();
        int iXhi = vSVarHiB.xhi();
        C0218sP c0218sP = new C0218sP();
        c0218sP.Sj = fTzV;
        c0218sP.sP = iSdp;
        c0218sP.TKC = iIOh;
        c0218sP.EjP = dDwU;
        c0218sP.HiB = f11;
        return Sj(dq2.TEQ().TKC(), c0218sP, zHpB, zPfr, iXhi, dq2);
    }

    public TKC EjP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        float fMin;
        TKC tkc = new TKC();
        float f13 = 0.0f;
        if (f12 <= 0.0f || f11 <= 0.0f) {
            tkc.Sj = 0.0f;
            tkc.sP = 0.0f;
            return tkc;
        }
        if (dq2.TzV()) {
            return Sj(dq2, f11, f12);
        }
        float fDq = dq2.Dq();
        float fUA = dq2.uA();
        float fZq = dq2.Zq();
        float fUvD = dq2.uvD();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        String strLqL = vSVarHiB.LqL();
        String strLey = vSVarHiB.ley();
        float fMin2 = ((TextUtils.equals(strLqL, "flex") || TextUtils.equals(strLqL, "auto")) ? f11 : Math.min(fDq, f11)) - fZq;
        if (TextUtils.equals(strLey, "scale")) {
            fMin = Math.round(fMin2 / fUA) + fUvD;
            if (fMin > f12) {
                fMin2 = Math.round((f12 - fUvD) * fUA);
            }
        } else {
            fMin = (TextUtils.equals(strLey, "auto") || TextUtils.equals(strLey, "flex")) ? f12 : Math.min(fUA, f12);
        }
        float f14 = fMin - fUvD;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        while (it.hasNext()) {
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = it;
            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> next = it.next();
            TKC tkc2 = tkc;
            TKC tkcSP = sP(next, fMin2, f14);
            if (sP(next)) {
                f13 += 1.0f;
            } else {
                fMax = Math.max(fMax, tkcSP.Sj);
            }
            float f15 = f13;
            fMax2 = dq2.TEQ().sP().equals("carousel") ? Math.max(dq2.uA(), tkcSP.sP) : fMax2 + tkcSP.sP;
            tkc = tkc2;
            it = it2;
            f13 = f15;
        }
        TKC tkc3 = tkc;
        if (TextUtils.equals(strLqL, "auto")) {
            if (f13 == listDNu.size()) {
                fMin2 = f11;
            } else {
                for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list : listDNu) {
                    TKC(list);
                    sP(list, fMax, f14);
                }
                fMin2 = fMax;
            }
        }
        if (TextUtils.equals(strLey, "auto")) {
            if (fMax2 <= f12) {
                f14 = fMax2;
            } else {
                Sj(listDNu, fMin2, f14);
            }
        } else if ((TextUtils.equals(strLey, "fixed") || TextUtils.equals(strLey, "flex")) && f14 < fMax2) {
            Sj(listDNu, fMin2, f14);
        }
        tkc3.Sj = Math.min(fMin2 + fZq, f11);
        tkc3.sP = Math.min(f14 + fUvD, f12);
        return tkc3;
    }

    public TKC Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return this.Sj.get(HiB(dq2));
    }

    public TKC Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        float f13;
        if ((!TextUtils.isEmpty(dq2.TEQ().TKC()) || dq2.TEQ().HiB().kb() != null) && !TextUtils.equals(dq2.TEQ().sP(), "creative-playable-bait")) {
            float fDq = dq2.Dq();
            float fUA = dq2.uA();
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
            String strLqL = vSVarHiB.LqL();
            String strLey = vSVarHiB.ley();
            float fFmk = dq2.Fmk();
            float fSef = dq2.sef();
            float fZq = dq2.Zq();
            float fUvD = dq2.uvD();
            if (TextUtils.equals(strLqL, "fixed")) {
                f11 = Math.min(fDq, f11);
                if (TextUtils.equals(strLey, "auto")) {
                    f13 = sP(dq2, f11 - fZq, f12 - fUvD).sP;
                    fUA = f13 + fUvD;
                }
            } else if (TextUtils.equals(strLqL, "auto")) {
                TKC tkcSP = sP(dq2, f11 - fZq, f12 - fUvD);
                f11 = tkcSP.Sj + fZq;
                if (TextUtils.equals(strLey, "auto")) {
                    f13 = tkcSP.sP;
                    fUA = f13 + fUvD;
                }
            } else if (!TextUtils.equals(strLqL, "flex")) {
                f11 = fDq;
            } else if (TextUtils.equals(strLey, "auto")) {
                f13 = sP(dq2, f11 - fZq, f12 - fUvD).sP;
                fUA = f13 + fUvD;
            }
            if (TextUtils.equals(strLey, "scale")) {
                float fRound = Math.round((f11 - fFmk) / fUA) + fSef;
                if (fRound > f12) {
                    f11 = Math.round((f12 - fSef) * fUA) + fFmk;
                } else {
                    f12 = fRound;
                }
            } else if (TextUtils.equals(strLey, "fixed")) {
                f12 = Math.min(fUA + fSef, f12);
            } else if (!TextUtils.equals(strLey, "flex")) {
                f12 = fUA;
            }
            TKC tkc = new TKC();
            tkc.Sj = f11;
            tkc.sP = f12;
            return tkc;
        }
        return new TKC(0.0f, 0.0f);
    }

    public TKC Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        return this.sP.get(EjP(list));
    }

    public void Sj() {
        this.TKC.clear();
        this.Sj.clear();
        this.sP.clear();
    }

    public TKC TKC(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        if (dq2 == null) {
            return null;
        }
        TKC tkcSj = Sj(dq2);
        if (tkcSj != null && (tkcSj.Sj != 0.0f || tkcSj.sP != 0.0f)) {
            return tkcSj;
        }
        TKC tkcEjP = EjP(dq2, f11, f12);
        Sj(dq2, tkcEjP);
        return tkcEjP;
    }

    public TKC sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        TKC tkc = new TKC();
        if (dq2.TEQ().HiB() == null) {
            return tkc;
        }
        TKC tkcHiB = HiB(dq2, f11, f12);
        float f13 = tkcHiB.Sj;
        float f14 = tkcHiB.sP;
        tkc.Sj = Math.min(f13, f11);
        tkc.sP = Math.min(f14, f12);
        return tkc;
    }
}
