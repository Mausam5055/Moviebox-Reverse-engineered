package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class sU extends Sj {
    private com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> Dq;
    private final com.bytedance.adsdk.sP.TKC.TKC.Sj EjP;
    private final String HiB;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Jcg;
    private final boolean vS;

    public sU(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.TzV tzV) {
        super(uAVar, sj2, tzV.Jcg().Sj(), tzV.Dq().Sj(), tzV.uA(), tzV.TKC(), tzV.EjP(), tzV.HiB(), tzV.vS());
        this.EjP = sj2;
        this.HiB = tzV.Sj();
        this.vS = tzV.TEQ();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj = tzV.sP().Sj();
        this.Jcg = Sj;
        Sj.Sj(this);
        sj2.Sj(Sj);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Sj, com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(Canvas canvas, Matrix matrix, int i11) {
        if (this.vS) {
            return;
        }
        this.sP.setColor(((com.bytedance.adsdk.sP.Sj.sP.sP) this.Jcg).uA());
        com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> sj2 = this.Dq;
        if (sj2 != null) {
            this.sP.setColorFilter(sj2.Jcg());
        }
        super.Sj(canvas, matrix, i11);
    }
}
