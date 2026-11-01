package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.Path;

/* JADX INFO: loaded from: classes2.dex */
public class Zq implements TKC {
    private final com.bytedance.adsdk.sP.TKC.Sj.Sj EjP;
    private final com.bytedance.adsdk.sP.TKC.Sj.EjP HiB;
    private final boolean Sj;
    private final String TKC;
    private final Path.FillType sP;
    private final boolean vS;

    public Zq(String str, boolean z10, Path.FillType fillType, com.bytedance.adsdk.sP.TKC.Sj.Sj sj2, com.bytedance.adsdk.sP.TKC.Sj.EjP ejP, boolean z11) {
        this.TKC = str;
        this.Sj = z10;
        this.sP = fillType;
        this.EjP = sj2;
        this.HiB = ejP;
        this.vS = z11;
    }

    public Path.FillType EjP() {
        return this.sP;
    }

    public boolean HiB() {
        return this.vS;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.Jcg(uAVar, sj2, this);
    }

    public String Sj() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.EjP TKC() {
        return this.HiB;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Sj sP() {
        return this.EjP;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.Sj + '}';
    }
}
