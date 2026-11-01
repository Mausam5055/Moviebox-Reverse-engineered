package com.bytedance.sdk.component.vS.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private boolean Dq;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
    private long Fmk;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj HiB;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Jcg;
    private com.bytedance.sdk.component.vS.Sj.Sj.HiB Sj;
    private boolean TEQ;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20917aa;
    private com.bytedance.sdk.component.vS.Sj.sP.TKC sP;
    private HiB uA;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj vS;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.vS.Sj.Sj$Sj, reason: collision with other inner class name */
    public static class C0230Sj {
        private com.bytedance.sdk.component.vS.Sj.Sj.HiB Dq;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj HiB;
        private HiB Jcg;
        private com.bytedance.sdk.component.vS.Sj.sP.TKC Sj;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private long f20918aa;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sP;
        private boolean uA;
        private boolean vS;
        private int TEQ = 5000;
        private int Ym = 10;

        public C0230Sj Sj(int i11) {
            this.TEQ = i11;
            return this;
        }

        public C0230Sj Sj(long j11) {
            this.f20918aa = j11;
            return this;
        }

        public C0230Sj Sj(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.sP = sj2;
            return this;
        }

        public C0230Sj Sj(HiB hiB) {
            this.Jcg = hiB;
            return this;
        }

        public C0230Sj Sj(com.bytedance.sdk.component.vS.Sj.Sj.HiB hiB) {
            this.Dq = hiB;
            return this;
        }

        public C0230Sj Sj(com.bytedance.sdk.component.vS.Sj.sP.TKC tkc) {
            this.Sj = tkc;
            return this;
        }

        public C0230Sj Sj(boolean z10) {
            this.vS = z10;
            return this;
        }

        public Sj Sj() {
            Sj sj2 = new Sj();
            sj2.sP = this.Sj;
            sj2.TKC = this.sP;
            sj2.EjP = this.TKC;
            sj2.HiB = this.EjP;
            sj2.vS = this.HiB;
            sj2.Dq = this.vS;
            sj2.uA = this.Jcg;
            sj2.Sj = this.Dq;
            sj2.TEQ = this.uA;
            sj2.f20917aa = this.Ym;
            sj2.Ym = this.TEQ;
            sj2.Fmk = this.f20918aa;
            return sj2;
        }

        public C0230Sj TKC(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.EjP = sj2;
            return this;
        }

        public C0230Sj sP(int i11) {
            this.Ym = i11;
            return this;
        }

        public C0230Sj sP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.TKC = sj2;
            return this;
        }
    }

    private Sj() {
        this.Ym = 200;
        this.f20917aa = 10;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Dq() {
        return this.EjP;
    }

    public HiB EjP() {
        return this.uA;
    }

    public int Fmk() {
        return this.f20917aa;
    }

    public long HiB() {
        return this.Fmk;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Jcg() {
        return this.TKC;
    }

    public com.bytedance.sdk.component.vS.Sj.Sj.HiB Sj() {
        return this.Sj;
    }

    public com.bytedance.sdk.component.vS.Sj.sP.TKC TEQ() {
        return this.sP;
    }

    public boolean TKC() {
        return this.TEQ;
    }

    public boolean Ym() {
        return this.Dq;
    }

    public int aa() {
        return this.Ym;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sP() {
        return this.vS;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj uA() {
        return this.HiB;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj vS() {
        return this.Jcg;
    }
}
