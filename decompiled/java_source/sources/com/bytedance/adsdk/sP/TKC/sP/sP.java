package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TKC {
    private final boolean EjP;
    private final boolean HiB;
    private final String Sj;
    private final com.bytedance.adsdk.sP.TKC.Sj.vS TKC;
    private final com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> sP;

    public sP(String str, com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmk, com.bytedance.adsdk.sP.TKC.Sj.vS vSVar, boolean z10, boolean z11) {
        this.Sj = str;
        this.sP = fmk;
        this.TKC = vSVar;
        this.EjP = z10;
        this.HiB = z11;
    }

    public boolean EjP() {
        return this.EjP;
    }

    public boolean HiB() {
        return this.HiB;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.vS(uAVar, sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.vS TKC() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> sP() {
        return this.sP;
    }
}
