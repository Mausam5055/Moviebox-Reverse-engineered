package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class dNu implements RiZ, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private com.bytedance.adsdk.sP.TKC.sP.sef EjP;
    private final com.bytedance.adsdk.sP.uA Sj;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> TKC;
    private final String sP;

    public dNu(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.Fmk fmk) {
        this.Sj = uAVar;
        this.sP = fmk.Sj();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = fmk.sP().Sj();
        this.TKC = Sj;
        sj2.Sj(Sj);
        Sj.Sj(this);
    }

    private static int Sj(int i11, int i12) {
        return i11 - (sP(i11, i12) * i12);
    }

    private static int sP(int i11, int i12) {
        int i13 = i11 / i12;
        return ((i11 ^ i12) >= 0 || i12 * i13 == i11) ? i13 : i13 - 1;
    }

    private com.bytedance.adsdk.sP.TKC.sP.sef sP(com.bytedance.adsdk.sP.TKC.sP.sef sefVar) {
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC = sefVar.TKC();
        boolean zSP = sefVar.sP();
        int size = listTKC.size() - 1;
        int i11 = 0;
        while (size >= 0) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = listTKC.get(size);
            com.bytedance.adsdk.sP.TKC.Sj sj3 = listTKC.get(Sj(size - 1, listTKC.size()));
            PointF pointFTKC = (size != 0 || zSP) ? sj3.TKC() : sefVar.Sj();
            i11 = (((size != 0 || zSP) ? sj3.sP() : pointFTKC).equals(pointFTKC) && sj2.Sj().equals(pointFTKC) && !(!sefVar.sP() && size == 0 && size == listTKC.size() - 1)) ? i11 + 2 : i11 + 1;
            size--;
        }
        com.bytedance.adsdk.sP.TKC.sP.sef sefVar2 = this.EjP;
        if (sefVar2 == null || sefVar2.TKC().size() != i11) {
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                arrayList.add(new com.bytedance.adsdk.sP.TKC.Sj());
            }
            this.EjP = new com.bytedance.adsdk.sP.TKC.sP.sef(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.EjP.Sj(zSP);
        return this.EjP;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x009f  */
    @Override // com.bytedance.adsdk.sP.Sj.Sj.RiZ
    public com.bytedance.adsdk.sP.TKC.sP.sef Sj(com.bytedance.adsdk.sP.TKC.sP.sef sefVar) {
        boolean z10;
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC = sefVar.TKC();
        if (listTKC.size() <= 2) {
            return sefVar;
        }
        float fFloatValue = this.TKC.Jcg().floatValue();
        if (fFloatValue == 0.0f) {
            return sefVar;
        }
        com.bytedance.adsdk.sP.TKC.sP.sef sefVarSP = sP(sefVar);
        sefVarSP.Sj(sefVar.Sj().x, sefVar.Sj().y);
        List<com.bytedance.adsdk.sP.TKC.Sj> listTKC2 = sefVarSP.TKC();
        boolean zSP = sefVar.sP();
        int i11 = 0;
        int i12 = 0;
        while (i11 < listTKC.size()) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = listTKC.get(i11);
            com.bytedance.adsdk.sP.TKC.Sj sj3 = listTKC.get(Sj(i11 - 1, listTKC.size()));
            com.bytedance.adsdk.sP.TKC.Sj sj4 = listTKC.get(Sj(i11 - 2, listTKC.size()));
            PointF pointFTKC = (i11 != 0 || zSP) ? sj3.TKC() : sefVar.Sj();
            PointF pointFSP = (i11 != 0 || zSP) ? sj3.sP() : pointFTKC;
            PointF pointFSj = sj2.Sj();
            PointF pointFTKC2 = sj4.TKC();
            PointF pointFTKC3 = sj2.TKC();
            if (!sefVar.sP() && i11 == 0) {
                z10 = i11 == listTKC.size() + (-1);
            }
            if (pointFSP.equals(pointFTKC) && pointFSj.equals(pointFTKC) && !z10) {
                float f11 = pointFTKC.x;
                float f12 = f11 - pointFTKC2.x;
                float f13 = pointFTKC.y;
                float f14 = f13 - pointFTKC2.y;
                float f15 = pointFTKC3.x - f11;
                float f16 = pointFTKC3.y - f13;
                float fHypot = (float) Math.hypot(f12, f14);
                float fHypot2 = (float) Math.hypot(f15, f16);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f17 = pointFTKC.x;
                float f18 = ((pointFTKC2.x - f17) * fMin) + f17;
                float f19 = pointFTKC.y;
                float f20 = ((pointFTKC2.y - f19) * fMin) + f19;
                float f21 = ((pointFTKC3.x - f17) * fMin2) + f17;
                float f22 = ((pointFTKC3.y - f19) * fMin2) + f19;
                float f23 = f18 - ((f18 - f17) * 0.5519f);
                float f24 = f20 - ((f20 - f19) * 0.5519f);
                float f25 = f21 - ((f21 - f17) * 0.5519f);
                float f26 = f22 - ((f22 - f19) * 0.5519f);
                com.bytedance.adsdk.sP.TKC.Sj sj5 = listTKC2.get(Sj(i12 - 1, listTKC2.size()));
                com.bytedance.adsdk.sP.TKC.Sj sj6 = listTKC2.get(i12);
                sj5.sP(f18, f20);
                sj5.TKC(f18, f20);
                if (i11 == 0) {
                    sefVarSP.Sj(f18, f20);
                }
                sj6.Sj(f23, f24);
                com.bytedance.adsdk.sP.TKC.Sj sj7 = listTKC2.get(i12 + 1);
                sj6.sP(f25, f26);
                sj6.TKC(f21, f22);
                sj7.Sj(f21, f22);
                i12 += 2;
            } else {
                com.bytedance.adsdk.sP.TKC.Sj sj8 = listTKC2.get(Sj(i12 - 1, listTKC2.size()));
                com.bytedance.adsdk.sP.TKC.Sj sj9 = listTKC2.get(i12);
                sj8.sP(sj3.sP().x, sj3.sP().y);
                sj8.TKC(sj3.TKC().x, sj3.TKC().y);
                sj9.Sj(sj2.Sj().x, sj2.Sj().y);
                i12++;
            }
            i11++;
            listTKC = listTKC;
        }
        return sefVarSP;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        this.Sj.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
    }

    public com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sP() {
        return this.TKC;
    }
}
