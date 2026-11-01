package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private Sj EjP;
    public com.bytedance.sdk.component.adexpress.dynamic.EjP.sP Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq TKC;
    protected sP sP;

    static class Sj {
        float Sj;
        float TKC;
        float sP;

        Sj() {
        }
    }

    public HiB(double d11, int i11, double d12, String str, Fmk fmk) {
        this.sP = new sP(d11, i11, d12, str, fmk);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.EjP.uA Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar, com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVar, float f11, float f12) {
        float f13;
        float f14;
        float f15 = sPVar.Sj;
        float f16 = sPVar.sP;
        float fHS = vSVar.HS();
        float fTFd = vSVar.TFd();
        float fTz = vSVar.tz();
        float fMZN = vSVar.mZN();
        boolean zChv = vSVar.Chv();
        boolean zBml = vSVar.Bml();
        boolean zANB = vSVar.aNB();
        boolean zCX = vSVar.cX();
        String strGY = vSVar.gY();
        float f17 = sPVar.TKC;
        float f18 = sPVar.EjP;
        if (TextUtils.equals(strGY, "0")) {
            if (zChv) {
                f15 = sPVar.Sj + fHS;
            } else if (zBml) {
                f15 = ((sPVar.Sj + f17) - fTz) - f11;
            }
            if (zANB) {
                f14 = sPVar.sP;
                f16 = f14 + fTFd;
            } else if (zCX) {
                f13 = sPVar.sP;
                f16 = ((f13 + f18) - fMZN) - f12;
            }
        } else if (TextUtils.equals(strGY, "1")) {
            f15 = sPVar.Sj + ((f17 - f11) / 2.0f);
            if (zANB) {
                f14 = sPVar.sP;
                f16 = f14 + fTFd;
            } else if (zCX) {
                f13 = sPVar.sP;
                f16 = ((f13 + f18) - fMZN) - f12;
            }
        } else if (TextUtils.equals(strGY, "2")) {
            f16 = sPVar.sP + ((f18 - f12) / 2.0f);
            if (zChv) {
                f15 = sPVar.Sj + fHS;
            } else if (zBml) {
                f15 = ((sPVar.Sj + f17) - fTz) - f11;
            }
        } else if (TextUtils.equals(strGY, "3")) {
            f15 = sPVar.Sj + ((f17 - f11) / 2.0f);
            f16 = sPVar.sP + ((f18 - f12) / 2.0f);
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(f15, f16);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.EjP.uA Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVar, sP.TKC tkc, sP.TKC tkc2) {
        float fHS = vSVar.HS();
        float fTFd = vSVar.TFd();
        float fTz = vSVar.tz();
        float fMZN = vSVar.mZN();
        boolean zChv = vSVar.Chv();
        boolean zBml = vSVar.Bml();
        boolean zANB = vSVar.aNB();
        boolean zCX = vSVar.cX();
        if (!zChv) {
            if (zBml) {
                float f11 = this.EjP.Sj;
                fHS = ((f11 != 0.0f ? Math.min(f11, tkc.Sj) : tkc.Sj) - fTz) - tkc2.Sj;
            } else {
                fHS = 0.0f;
            }
        }
        if (!zANB) {
            if (zCX) {
                float f12 = this.EjP.sP;
                if (f12 == 0.0f) {
                    f12 = tkc.sP;
                }
                fTFd = (f12 - fMZN) - tkc2.sP;
            } else {
                fTFd = 0.0f;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(fHS, fTFd);
    }

    /* JADX WARN: Code duplicated, block: B:136:0x031d  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:90:0x01fa  */
    public com.bytedance.sdk.component.adexpress.dynamic.EjP.sP Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar, float f11) {
        float fSj;
        float fSj2;
        float f12;
        float f13;
        float fSj3;
        float fSj4;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar2;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVarSj;
        float f14;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar;
        sP.TKC tkcSj;
        sP.TKC tkcSj2;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar3 = sPVar;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = sPVar3.vS;
        if (dq2 == null) {
            return sPVar3;
        }
        dq2.dx();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        if (listDNu == null || listDNu.size() <= 0) {
            return sPVar3;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        float fDNu = vSVarHiB.dNu();
        float fUvD = vSVarHiB.uvD();
        float fSef = vSVarHiB.sef();
        float fZq = vSVarHiB.Zq();
        float fAa = vSVarHiB.aa();
        String strJb = vSVarHiB.jb();
        String strEi = vSVarHiB.Ei();
        float f15 = sPVar3.Sj + fZq;
        float f16 = sPVar3.sP + fDNu;
        float f17 = fAa * 2.0f;
        float f18 = ((sPVar3.TKC - fZq) - fUvD) - f17;
        float f19 = ((sPVar3.EjP - fDNu) - fSef) - f17;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar2 = new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(f15, f16);
        if (sPVar3.Jcg == null) {
            sPVar3.Jcg = new ArrayList();
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        float f20 = 0.0f;
        while (it.hasNext()) {
            sP.TKC tkcSj3 = this.sP.Sj(it.next());
            if (tkcSj3 != null) {
                f20 += tkcSj3.sP;
            }
        }
        String str = "space-between";
        String str2 = "space-around";
        if (f20 >= f19) {
            fSj = 0.0f;
            fSj2 = 0.0f;
        } else {
            if (TextUtils.equals(strEi, TtmlNode.CENTER)) {
                fSj2 = (f19 - f20) / 2.0f;
            } else if (TextUtils.equals(strEi, "flex-end")) {
                fSj2 = f19 - f20;
            } else if (TextUtils.equals(strEi, "space-around")) {
                fSj2 = TEQ.Sj((f19 - f20) / (listDNu.size() + 1));
                fSj = fSj2;
            } else {
                if (!TextUtils.equals(strEi, "space-between") || listDNu.size() <= 1) {
                    fSj = 0.0f;
                } else {
                    fSj = TEQ.Sj((f19 - f20) / (listDNu.size() - 1));
                }
                fSj2 = 0.0f;
            }
            fSj = 0.0f;
        }
        uAVar2.sP += fSj2;
        float f21 = f11;
        int i11 = 0;
        while (i11 < listDNu.size()) {
            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list = listDNu.get(i11);
            i11++;
            List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> list2 = listDNu;
            if (i11 >= sPVar3.Jcg.size()) {
                int size = (i11 - sPVar3.Jcg.size()) + 1;
                int i12 = 0;
                while (i12 < size) {
                    sPVar3.Jcg.add(new ArrayList());
                    i12++;
                    size = size;
                    fSj = fSj;
                }
                f12 = fSj;
            } else {
                f12 = fSj;
            }
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it2 = list.iterator();
            float f22 = 0.0f;
            while (true) {
                f13 = f15;
                if (!it2.hasNext()) {
                    break;
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next = it2.next();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB2 = next.TEQ().HiB();
                String strLqL = vSVarHiB2.LqL();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it3 = it2;
                int iEZ = vSVarHiB2.EZ();
                if (!TextUtils.equals(strLqL, "flex") && iEZ != 1 && iEZ != 2 && (tkcSj2 = this.sP.Sj(next)) != null) {
                    f22 += tkcSj2.Sj;
                }
                f15 = f13;
                it2 = it3;
            }
            float fMax = Math.max(f18 - f22, 0.0f);
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it4 = list.iterator();
            float f23 = 0.0f;
            while (it4.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next2 = it4.next();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB3 = next2.TEQ().HiB();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it5 = it4;
                if (vSVarHiB3.EZ() != 1 && vSVarHiB3.EZ() != 2 && (tkcSj = this.sP.Sj(next2)) != null) {
                    f23 += tkcSj.Sj;
                }
                it4 = it5;
            }
            if (f23 >= f18) {
                fSj3 = 0.0f;
                fSj4 = 0.0f;
            } else {
                if (TextUtils.equals(strJb, TtmlNode.CENTER)) {
                    fSj3 = (f18 - f23) / 2.0f;
                } else if (TextUtils.equals(strJb, "flex-end")) {
                    fSj3 = f18 - f23;
                } else if (TextUtils.equals(strJb, str2)) {
                    fSj3 = TEQ.Sj((f18 - f23) / (list.size() + 1));
                    fSj4 = fSj3;
                } else if (!TextUtils.equals(strJb, str) || list.size() <= 1) {
                    fSj3 = 0.0f;
                } else {
                    fSj4 = TEQ.Sj((f18 - f23) / (list.size() - 1.0f));
                    fSj3 = 0.0f;
                }
                fSj4 = 0.0f;
            }
            uAVar2.Sj += fSj3;
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it6 = list.iterator();
            float fMax2 = 0.0f;
            while (it6.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next3 = it6.next();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it7 = it6;
                float f24 = this.sP.Sj(next3) != null ? this.sP.Sj(next3).sP : 0.0f;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB4 = next3.TEQ().HiB();
                float f25 = f18;
                fMax2 = Math.max(fMax2, (vSVarHiB4.EZ() == 1 || vSVarHiB4.EZ() == 2) ? 0.0f : f24);
                it6 = it7;
                f18 = f25;
            }
            float f26 = f18;
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it8 = list.iterator();
            float f27 = f21;
            while (it8.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next4 = it8.next();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it9 = it8;
                sP.TKC tkcSj4 = this.sP.Sj(next4);
                float f28 = f27;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB5 = next4.TEQ().HiB();
                String str3 = str;
                float fDb = vSVarHiB5.db();
                String str4 = str2;
                float fUHs = vSVarHiB5.UHs();
                String str5 = strJb;
                float fNdK = vSVarHiB5.ndK();
                float f29 = fSj4;
                float fQRN = vSVarHiB5.qRN();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar3 = uAVar2;
                float f30 = tkcSj4 == null ? 0.0f : tkcSj4.Sj;
                float f31 = tkcSj4 == null ? 0.0f : tkcSj4.sP;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = dq2;
                float f32 = TextUtils.equals(dq2.TKC(), "root") ? i11 : f28;
                int i13 = i11;
                if (vSVarHiB5.EZ() == 1) {
                    sPVar2 = sPVar;
                    uAVarSj = Sj(sPVar2, vSVarHiB5, (f30 - fUHs) - fQRN, (f31 - fDb) - fNdK);
                } else {
                    sPVar2 = sPVar;
                    uAVarSj = uAVar3;
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVarSj2 = vSVarHiB5.EZ() == 2 ? Sj(vSVarHiB5, this.sP.Sj(this.TKC), new sP.TKC((f30 - fUHs) - fQRN, (f31 - fDb) - fNdK)) : uAVarSj;
                String strHcZ = vSVarHiB.HcZ();
                if (fMax2 > f31 && !TextUtils.equals(strHcZ, "flex-start")) {
                    strHcZ.hashCode();
                    if (strHcZ.equals(TtmlNode.CENTER)) {
                        f14 = (fMax2 - f31) / 2.0f;
                    } else {
                        f14 = !strHcZ.equals("flex-end") ? 0.0f : fMax2 - f31;
                    }
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar4 = new com.bytedance.sdk.component.adexpress.dynamic.EjP.sP();
                sPVar4.Sj = uAVarSj2.Sj + fQRN;
                sPVar4.sP = uAVarSj2.sP + fDb + f14;
                sPVar4.TKC = (f30 - fUHs) - fQRN;
                sPVar4.EjP = (f31 - fDb) - fNdK;
                sPVar4.HiB = sPVar2.HiB + "." + next4.TKC();
                sPVar4.Dq = sPVar2;
                sPVar4.vS = next4;
                float f33 = fMax;
                sPVar4.uA = f33;
                list = list;
                sPVar4.TEQ = list;
                next4.TKC(sPVar4.Sj);
                sPVar4.vS.EjP(sPVar4.sP);
                sPVar4.vS.HiB(sPVar4.TKC);
                sPVar4.vS.vS(sPVar4.EjP);
                float f34 = f32;
                i11 = i13;
                sPVar2.Jcg.get(i11).add(Sj(sPVar4, f34));
                if (vSVarHiB5.EZ() == 1) {
                    uAVar = uAVar3;
                } else if (vSVarHiB5.EZ() != 2) {
                    uAVar = uAVar3;
                    uAVar.Sj += f30 + f29;
                } else {
                    uAVar = uAVar3;
                }
                f27 = f34;
                fMax = f33;
                uAVar2 = uAVar;
                str = str3;
                str2 = str4;
                strJb = str5;
                fSj4 = f29;
                dq2 = dq3;
                it8 = it9;
            }
            com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar4 = uAVar2;
            f15 = f13;
            uAVar4.Sj = f15;
            uAVar4.sP += fMax2 + f12;
            sPVar3 = sPVar;
            str = str;
            listDNu = list2;
            fSj = f12;
            f21 = f27;
            f18 = f26;
            dq2 = dq2;
        }
        return sPVar3;
    }

    public void Sj() {
        this.sP.Sj();
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f11, float f12) {
        if (dq2 != null) {
            this.TKC = dq2;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = this.TKC;
        float fDq = dq3.Dq();
        float fUA = dq3.uA();
        float f13 = TextUtils.equals(dq3.TEQ().HiB().ley(), "fixed") ? fUA : 65536.0f;
        this.sP.Sj();
        this.sP.TKC(dq3, fDq, f13);
        sP.TKC tkcSj = this.sP.Sj(dq3);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar = new com.bytedance.sdk.component.adexpress.dynamic.EjP.sP();
        sPVar.Sj = f11;
        sPVar.sP = f12;
        if (tkcSj != null) {
            fDq = tkcSj.Sj;
        }
        sPVar.TKC = fDq;
        if (tkcSj != null) {
            fUA = tkcSj.sP;
        }
        sPVar.EjP = fUA;
        sPVar.HiB = "root";
        sPVar.uA = 1280.0f;
        sPVar.vS = dq3;
        dq3.TKC(f11);
        sPVar.vS.EjP(sPVar.sP);
        sPVar.vS.HiB(sPVar.TKC);
        sPVar.vS.vS(sPVar.EjP);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVarSj = Sj(sPVar, 0.0f);
        this.Sj = sPVarSj;
        Sj(sPVarSj);
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar) {
        if (sPVar == null) {
            return;
        }
        sPVar.vS.TEQ().sP();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP>> list = sPVar.Jcg;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP> it = list2.iterator();
                while (it.hasNext()) {
                    Sj(it.next());
                }
            }
        }
    }

    public void Sj(Sj sj2) {
        this.EjP = sj2;
    }
}
