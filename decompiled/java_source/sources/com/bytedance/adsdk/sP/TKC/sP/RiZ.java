package com.bytedance.adsdk.sP.TKC.sP;

import com.bytedance.adsdk.sP.Sj.Sj.dx;

/* JADX INFO: loaded from: classes2.dex */
public class RiZ implements TKC {
    private final com.bytedance.adsdk.sP.TKC.Sj.sP EjP;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP HiB;
    private final String Sj;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP TKC;
    private final Sj sP;
    private final boolean vS;

    public enum Sj {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Sj Sj(int i11) {
            if (i11 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i11 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(i11)));
        }
    }

    public RiZ(String str, Sj sj2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar3, boolean z10) {
        this.Sj = str;
        this.sP = sj2;
        this.TKC = sPVar;
        this.EjP = sPVar2;
        this.HiB = sPVar3;
        this.vS = z10;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP EjP() {
        return this.TKC;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP HiB() {
        return this.HiB;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new dx(sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP TKC() {
        return this.EjP;
    }

    public Sj sP() {
        return this.sP;
    }

    public String toString() {
        return "Trim Path: {start: " + this.TKC + ", end: " + this.EjP + ", offset: " + this.HiB + "}";
    }

    public boolean vS() {
        return this.vS;
    }
}
