package com.bytedance.sdk.openadsdk.Zq.Sj;

import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    float Dq;
    float EjP;
    float Fmk;
    float HiB;
    float Jcg;
    String Sj;
    int TEQ;
    float TKC;
    float Ym;
    String Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    float f20950aa;
    int dNu;
    int sP;
    int sef;
    float uA;
    float uvD;
    int vS;
    int TzV = -1;
    String RiZ = "";

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.Zq.Sj.Sj$Sj, reason: collision with other inner class name */
    public static class C0245Sj {
        Sj Sj = new Sj();

        public C0245Sj Dq(float f11) {
            this.Sj.Dq(f11);
            return this;
        }

        public C0245Sj EjP(float f11) {
            this.Sj.EjP(f11);
            return this;
        }

        public C0245Sj HiB(float f11) {
            this.Sj.HiB(f11);
            return this;
        }

        public C0245Sj Jcg(float f11) {
            this.Sj.Jcg(f11);
            return this;
        }

        public C0245Sj Sj(float f11) {
            this.Sj.Sj(f11);
            return this;
        }

        public C0245Sj Sj(int i11) {
            this.Sj.sP(i11);
            return this;
        }

        public C0245Sj Sj(String str) {
            this.Sj.sP(str);
            return this;
        }

        public Sj Sj() {
            return this.Sj;
        }

        public C0245Sj TEQ(float f11) {
            this.Sj.TEQ(f11);
            return this;
        }

        public C0245Sj TKC(float f11) {
            this.Sj.TKC(f11);
            return this;
        }

        public C0245Sj TKC(int i11) {
            this.Sj.vS(i11);
            return this;
        }

        public C0245Sj sP(float f11) {
            this.Sj.sP(f11);
            return this;
        }

        public C0245Sj sP(int i11) {
            this.Sj.HiB(i11);
            return this;
        }

        public C0245Sj sP(String str) {
            this.Sj.TKC(str);
            return this;
        }

        public C0245Sj uA(float f11) {
            this.Sj.uA(f11);
            return this;
        }

        public C0245Sj vS(float f11) {
            this.Sj.vS(f11);
            return this;
        }
    }

    public int Dq() {
        return this.vS;
    }

    public void Dq(float f11) {
        this.f20950aa = f11;
    }

    public int EjP() {
        return this.sP;
    }

    public void EjP(float f11) {
        this.Jcg = f11;
    }

    public void EjP(int i11) {
        this.TEQ = i11;
    }

    public float Fmk() {
        return this.Ym;
    }

    public float HiB() {
        return this.TKC;
    }

    public void HiB(float f11) {
        this.Dq = f11;
    }

    public void HiB(int i11) {
        this.sef = i11;
    }

    public float Jcg() {
        return this.HiB;
    }

    public void Jcg(float f11) {
        this.Ym = f11;
    }

    public int RiZ() {
        return this.dNu;
    }

    public int Sj() {
        return this.TzV;
    }

    public void Sj(float f11) {
        this.TKC = f11;
    }

    public void Sj(int i11) {
        this.TzV = i11;
    }

    public void Sj(String str) {
        this.RiZ = str;
    }

    public float TEQ() {
        return this.Dq;
    }

    public void TEQ(float f11) {
        this.uvD = f11;
    }

    public String TKC() {
        return this.Sj;
    }

    public void TKC(float f11) {
        this.HiB = f11;
    }

    public void TKC(int i11) {
        this.vS = i11;
    }

    public void TKC(String str) {
        this.Zq = str;
    }

    public float TzV() {
        return this.uvD;
    }

    public float Ym() {
        return this.uA;
    }

    public BigDecimal Zq() {
        return new BigDecimal(this.Fmk).setScale(3, RoundingMode.HALF_UP);
    }

    public int aa() {
        return this.TEQ;
    }

    public String dNu() {
        return this.Zq;
    }

    public String sP() {
        return this.RiZ;
    }

    public void sP(float f11) {
        this.EjP = f11;
    }

    public void sP(int i11) {
        this.sP = i11;
    }

    public void sP(String str) {
        this.Sj = str;
    }

    public float sef() {
        return this.f20950aa;
    }

    public float uA() {
        return this.Jcg;
    }

    public void uA(float f11) {
        this.Fmk = f11;
    }

    public int uvD() {
        return this.sef;
    }

    public float vS() {
        return this.EjP;
    }

    public void vS(float f11) {
        this.uA = f11;
    }

    public void vS(int i11) {
        this.dNu = i11;
    }
}
