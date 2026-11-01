package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.openadsdk.core.model.sU;
import y5.a;

/* JADX INFO: loaded from: classes2.dex */
public class Zq {
    private com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC EjP;
    private sU HiB;
    private long Sj;
    private int TKC;
    private String sP;

    public static class Sj {
        private int Dq;
        private int HiB;
        private int Jcg;
        private a Ym;
        private int uA;
        private int vS;
        private long Sj = 0;
        private long sP = 0;
        private long TKC = 0;
        private boolean EjP = false;
        private boolean TEQ = false;

        private void Fmk() {
            long j11 = this.TKC;
            if (j11 > 0) {
                long j12 = this.Sj;
                if (j12 > j11) {
                    long j13 = j12 % j11;
                    this.Sj = j13;
                    if (j13 == 0) {
                        this.Sj = j11;
                    }
                }
            }
        }

        public int Dq() {
            return this.Dq;
        }

        public int EjP() {
            return this.HiB;
        }

        public void EjP(int i11) {
            this.uA = i11;
        }

        public int HiB() {
            return this.vS;
        }

        public int Jcg() {
            return this.Jcg;
        }

        public long Sj() {
            return this.Sj;
        }

        public void Sj(int i11) {
            this.HiB = i11;
        }

        public void Sj(long j11) {
            this.Sj = j11;
            Fmk();
        }

        public void Sj(a aVar) {
            this.Ym = aVar;
        }

        public void Sj(boolean z10) {
            this.EjP = z10;
        }

        public boolean TEQ() {
            return this.TEQ;
        }

        public long TKC() {
            return this.TKC;
        }

        public void TKC(int i11) {
            this.Jcg = i11;
        }

        public void TKC(long j11) {
            this.TKC = j11;
            Fmk();
        }

        public boolean Ym() {
            return this.EjP;
        }

        public a aa() {
            return this.Ym;
        }

        public long sP() {
            return this.sP;
        }

        public void sP(int i11) {
            this.vS = i11;
        }

        public void sP(long j11) {
            this.sP = j11;
        }

        public int uA() {
            return this.uA;
        }

        public int vS() {
            long j11 = this.TKC;
            if (j11 <= 0) {
                return 0;
            }
            return Math.min((int) ((this.Sj * 100) / j11), 100);
        }
    }

    public Zq(long j11, String str, int i11, com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, sU sUVar) {
        this.Sj = j11;
        this.sP = str;
        this.TKC = i11;
        this.EjP = tkc;
        this.HiB = sUVar;
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC EjP() {
        return this.EjP;
    }

    public sU HiB() {
        return this.HiB;
    }

    public long Sj() {
        return this.Sj;
    }

    public int TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }
}
