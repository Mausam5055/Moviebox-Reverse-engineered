package com.bytedance.adsdk.sP.TKC.sP;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private final boolean EjP;
    private final Sj Sj;
    private final com.bytedance.adsdk.sP.TKC.Sj.EjP TKC;
    private final com.bytedance.adsdk.sP.TKC.Sj.Dq sP;

    public enum Sj {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Dq(Sj sj2, com.bytedance.adsdk.sP.TKC.Sj.Dq dq2, com.bytedance.adsdk.sP.TKC.Sj.EjP ejP, boolean z10) {
        this.Sj = sj2;
        this.sP = dq2;
        this.TKC = ejP;
        this.EjP = z10;
    }

    public boolean EjP() {
        return this.EjP;
    }

    public Sj Sj() {
        return this.Sj;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.EjP TKC() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Dq sP() {
        return this.sP;
    }
}
