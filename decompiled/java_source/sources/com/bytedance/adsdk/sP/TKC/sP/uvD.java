package com.bytedance.adsdk.sP.TKC.sP;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class uvD implements TKC {
    private final String Sj;
    private final boolean TKC;
    private final List<TKC> sP;

    public uvD(String str, List<TKC> list, boolean z10) {
        this.Sj = str;
        this.sP = list;
        this.TKC = z10;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.EjP(uAVar, sj2, this, jcg);
    }

    public String Sj() {
        return this.Sj;
    }

    public boolean TKC() {
        return this.TKC;
    }

    public List<TKC> sP() {
        return this.sP;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.Sj + "' Shapes: " + Arrays.toString(this.sP.toArray()) + '}';
    }
}
