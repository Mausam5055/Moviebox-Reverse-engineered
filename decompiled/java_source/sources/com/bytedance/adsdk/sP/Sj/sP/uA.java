package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends com.bytedance.adsdk.sP.Jcg.Sj<PointF> {
    private Path TEQ;
    private final com.bytedance.adsdk.sP.Jcg.Sj<PointF> Ym;

    public uA(com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2) {
        super(jcg, sj2.Sj, sj2.sP, sj2.TKC, sj2.EjP, sj2.HiB, sj2.vS, sj2.Jcg);
        this.Ym = sj2;
        Sj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void Sj() {
        T t11;
        T t12;
        T t13 = this.sP;
        boolean z10 = (t13 == 0 || (t12 = this.Sj) == 0 || !((PointF) t12).equals(((PointF) t13).x, ((PointF) t13).y)) ? false : true;
        T t14 = this.Sj;
        if (t14 == 0 || (t11 = this.sP) == 0 || z10) {
            return;
        }
        com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2 = this.Ym;
        this.TEQ = com.bytedance.adsdk.sP.vS.vS.Sj((PointF) t14, (PointF) t11, sj2.Dq, sj2.uA);
    }

    Path sP() {
        return this.TEQ;
    }
}
