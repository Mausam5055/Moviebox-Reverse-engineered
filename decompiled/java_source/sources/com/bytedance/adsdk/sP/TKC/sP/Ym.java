package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class Ym implements TKC {
    private final com.bytedance.adsdk.sP.TKC.Sj.sP EjP;
    private final boolean HiB;
    private final String Sj;
    private final com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> TKC;
    private final com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> sP;

    public Ym(String str, com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmk, com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmk2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar, boolean z10) {
        this.Sj = str;
        this.sP = fmk;
        this.TKC = fmk2;
        this.EjP = sPVar;
        this.HiB = z10;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> EjP() {
        return this.sP;
    }

    public boolean HiB() {
        return this.HiB;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.Zq(uAVar, sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> TKC() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP sP() {
        return this.EjP;
    }

    public String toString() {
        return "RectangleShape{position=" + this.sP + ", size=" + this.TKC + '}';
    }
}
