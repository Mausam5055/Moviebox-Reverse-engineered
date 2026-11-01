package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ implements TKC {
    private final com.bytedance.adsdk.sP.TKC.Sj.sP Dq;
    private final com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> EjP;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP HiB;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP Jcg;
    private final String Sj;
    private final boolean TEQ;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP TKC;
    private final boolean Ym;
    private final Sj sP;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP uA;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP vS;

    public enum Sj {
        STAR(1),
        POLYGON(2);

        private final int TKC;

        Sj(int i11) {
            this.TKC = i11;
        }

        public static Sj Sj(int i11) {
            for (Sj sj2 : values()) {
                if (sj2.TKC == i11) {
                    return sj2;
                }
            }
            return null;
        }
    }

    public TEQ(String str, Sj sj2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar, com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmk, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar3, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar4, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar5, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar6, boolean z10, boolean z11) {
        this.Sj = str;
        this.sP = sj2;
        this.TKC = sPVar;
        this.EjP = fmk;
        this.HiB = sPVar2;
        this.vS = sPVar3;
        this.Jcg = sPVar4;
        this.Dq = sPVar5;
        this.uA = sPVar6;
        this.TEQ = z10;
        this.Ym = z11;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP Dq() {
        return this.Dq;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> EjP() {
        return this.EjP;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP HiB() {
        return this.HiB;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP Jcg() {
        return this.Jcg;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new com.bytedance.adsdk.sP.Sj.Sj.sef(uAVar, sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public boolean TEQ() {
        return this.TEQ;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP TKC() {
        return this.TKC;
    }

    public boolean Ym() {
        return this.Ym;
    }

    public Sj sP() {
        return this.sP;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP uA() {
        return this.uA;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP vS() {
        return this.vS;
    }
}
