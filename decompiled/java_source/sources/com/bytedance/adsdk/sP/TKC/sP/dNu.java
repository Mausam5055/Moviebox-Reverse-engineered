package com.bytedance.adsdk.sP.TKC.sP;

/* JADX INFO: loaded from: classes2.dex */
public class dNu implements TKC {
    private final boolean EjP;
    private final String Sj;
    private final com.bytedance.adsdk.sP.TKC.Sj.Dq TKC;
    private final int sP;

    public dNu(String str, int i11, com.bytedance.adsdk.sP.TKC.Sj.Dq dq2, boolean z10) {
        this.Sj = str;
        this.sP = i11;
        this.TKC = dq2;
        this.EjP = z10;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.TzV(uAVar, sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public boolean TKC() {
        return this.EjP;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Dq sP() {
        return this.TKC;
    }

    public String toString() {
        return "ShapePath{name=" + this.Sj + ", index=" + this.sP + '}';
    }
}
