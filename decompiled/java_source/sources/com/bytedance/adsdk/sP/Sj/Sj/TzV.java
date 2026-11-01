package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TzV implements Fmk, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private final com.bytedance.adsdk.sP.uA EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Fmk HiB;
    private final boolean TKC;
    private final String sP;
    private boolean vS;
    private final Path Sj = new Path();
    private final sP Jcg = new sP();

    public TzV(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.dNu dnu) {
        this.sP = dnu.Sj();
        this.TKC = dnu.TKC();
        this.EjP = uAVar;
        com.bytedance.adsdk.sP.Sj.sP.Fmk fmkSj = dnu.sP().Sj();
        this.HiB = fmkSj;
        sj2.Sj(fmkSj);
        fmkSj.Sj(this);
    }

    private void sP() {
        this.vS = false;
        this.EjP.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Fmk
    public Path EjP() {
        if (this.vS) {
            return this.Sj;
        }
        this.Sj.reset();
        if (this.TKC) {
            this.vS = true;
            return this.Sj;
        }
        Path pathJcg = this.HiB.Jcg();
        if (pathJcg == null) {
            return this.Sj;
        }
        this.Sj.set(pathJcg);
        this.Sj.setFillType(Path.FillType.EVEN_ODD);
        this.Jcg.Sj(this.Sj);
        this.vS = true;
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        sP();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < list.size(); i11++) {
            TKC tkc = list.get(i11);
            if (tkc instanceof dx) {
                dx dxVar = (dx) tkc;
                if (dxVar.sP() == com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj.SIMULTANEOUSLY) {
                    this.Jcg.Sj(dxVar);
                    dxVar.Sj(this);
                } else if (!(tkc instanceof RiZ)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((RiZ) tkc);
                }
            } else if (!(tkc instanceof RiZ)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((RiZ) tkc);
            }
        }
        this.HiB.Sj((List<RiZ>) arrayList);
    }
}
