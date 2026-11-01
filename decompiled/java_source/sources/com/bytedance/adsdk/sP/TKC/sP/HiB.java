package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.Path;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements TKC {
    private final com.bytedance.adsdk.sP.TKC.Sj.sP Dq;
    private final com.bytedance.adsdk.sP.TKC.Sj.EjP EjP;
    private final com.bytedance.adsdk.sP.TKC.Sj.vS HiB;
    private final String Jcg;
    private final Jcg Sj;
    private final boolean TEQ;
    private final com.bytedance.adsdk.sP.TKC.Sj.TKC TKC;
    private final Path.FillType sP;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP uA;
    private final com.bytedance.adsdk.sP.TKC.Sj.vS vS;

    public HiB(String str, Jcg jcg, Path.FillType fillType, com.bytedance.adsdk.sP.TKC.Sj.TKC tkc, com.bytedance.adsdk.sP.TKC.Sj.EjP ejP, com.bytedance.adsdk.sP.TKC.Sj.vS vSVar, com.bytedance.adsdk.sP.TKC.Sj.vS vSVar2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2, boolean z10) {
        this.Sj = jcg;
        this.sP = fillType;
        this.TKC = tkc;
        this.EjP = ejP;
        this.HiB = vSVar;
        this.vS = vSVar2;
        this.Jcg = str;
        this.Dq = sPVar;
        this.uA = sPVar2;
        this.TEQ = z10;
    }

    public boolean Dq() {
        return this.TEQ;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.TKC EjP() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.EjP HiB() {
        return this.EjP;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.vS Jcg() {
        return this.vS;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.Dq(uAVar, jcg, sj2, this);
    }

    public String Sj() {
        return this.Jcg;
    }

    public Path.FillType TKC() {
        return this.sP;
    }

    public Jcg sP() {
        return this.Sj;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.vS vS() {
        return this.HiB;
    }
}
