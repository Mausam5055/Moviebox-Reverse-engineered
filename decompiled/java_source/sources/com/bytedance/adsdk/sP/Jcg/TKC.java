package com.bytedance.adsdk.sP.Jcg;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private float Sj;
    private float sP;

    public TKC() {
        this(1.0f, 1.0f);
    }

    public TKC(float f11, float f12) {
        this.Sj = f11;
        this.sP = f12;
    }

    public float Sj() {
        return this.Sj;
    }

    public void Sj(float f11, float f12) {
        this.Sj = f11;
        this.sP = f12;
    }

    public float sP() {
        return this.sP;
    }

    public boolean sP(float f11, float f12) {
        return this.Sj == f11 && this.sP == f12;
    }

    public String toString() {
        return Sj() + "x" + sP();
    }
}
