package com.bytedance.sdk.openadsdk.component.reward;

import android.os.CountDownTimer;
import com.bytedance.sdk.openadsdk.core.model.sU;
import u5.b;
import u5.c;
import z5.a;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements b {
    private com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj Dq;
    private boolean HiB;
    private final a Jcg;
    private final Sj Sj;
    private final sU vS;
    private boolean sP = true;
    private long TKC = 0;
    private boolean EjP = false;

    private static class Sj implements t5.a {
        private final com.bytedance.sdk.openadsdk.EjP.Jcg Dq;
        private CountDownTimer EjP;
        private b.InterfaceC0935b HiB;
        private final a Jcg;
        private final long Sj;
        private int TKC = 0;
        private long sP;
        private long vS;

        public Sj(long j11, a aVar, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
            this.Sj = j11;
            this.Jcg = aVar;
            this.Dq = jcg;
        }

        @Override // t5.a
        public boolean Dq() {
            return this.TKC == 0;
        }

        @Override // t5.a
        public int EjP() {
            return 0;
        }

        public int Fmk() {
            return 0;
        }

        @Override // t5.a
        public int HiB() {
            return 0;
        }

        @Override // t5.a
        public boolean Jcg() {
            return this.TKC == 2;
        }

        public void Sj(long j11) {
            this.sP = j11;
        }

        public void Sj(b.InterfaceC0935b interfaceC0935b) {
            this.HiB = interfaceC0935b;
        }

        @Override // t5.a
        public boolean Sj() {
            return false;
        }

        public void TEQ() {
            this.TKC = 2;
            this.sP = this.vS;
            CountDownTimer countDownTimer = this.EjP;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.EjP = null;
            }
        }

        @Override // t5.a
        public boolean TKC() {
            return false;
        }

        public void Ym() {
            this.TKC = 0;
            CountDownTimer countDownTimer = this.EjP;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.EjP = null;
            }
            if (this.HiB != null) {
                this.HiB = null;
            }
        }

        public long Zq() {
            return this.vS;
        }

        public long aa() {
            return 0L;
        }

        @Override // t5.a
        public boolean sP() {
            return false;
        }

        public long sef() {
            return this.Sj;
        }

        public void uA() {
            if (this.TKC == 1) {
                return;
            }
            this.TKC = 1;
            final long jSef = sef();
            final long j11 = jSef - this.sP;
            CountDownTimer countDownTimer = new CountDownTimer(j11, 200L) { // from class: com.bytedance.sdk.openadsdk.component.reward.TKC.Sj.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    Sj.this.TKC = 4;
                    Sj.this.vS = jSef;
                    if (Sj.this.HiB != null) {
                        Sj.this.HiB.Sj(Sj.this.Zq(), 100);
                    }
                    com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
                    sj2.Sj(jSef);
                    sj2.TKC(jSef);
                    sj2.sP(Sj.this.aa());
                    sj2.EjP(Sj.this.Fmk());
                    com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(Sj.this.Jcg, sj2, Sj.this.Dq);
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j12) {
                    long j13 = (j11 - j12) + Sj.this.sP;
                    Sj.this.vS = j13;
                    if (Sj.this.HiB != null) {
                        Sj.this.HiB.Sj(j13, jSef);
                    }
                }
            };
            this.EjP = countDownTimer;
            countDownTimer.start();
        }

        @Override // t5.a
        public boolean vS() {
            return this.TKC == 1;
        }
    }

    public TKC(sU sUVar, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
        a aVar = new a() { // from class: com.bytedance.sdk.openadsdk.component.reward.TKC.1
        };
        this.Jcg = aVar;
        this.vS = sUVar;
        y5.b bVarUHs = sUVar.UHs();
        long j11 = 10;
        long jK = bVarUHs != null ? (long) bVarUHs.K() : 10L;
        if (jK <= 0) {
            bVarUHs.n(10.0d);
        } else {
            j11 = jK;
        }
        this.Sj = new Sj(j11 * 1000, aVar, jcg);
    }

    @Override // u5.b
    public long Dq() {
        return this.Sj.sef();
    }

    @Override // u5.b
    public void EjP() {
        TKC();
    }

    @Override // u5.b
    public void EjP(boolean z10) {
    }

    @Override // u5.b
    public c Fmk() {
        return null;
    }

    @Override // u5.b
    public long HiB() {
        return this.Sj.Zq();
    }

    @Override // u5.b
    public int Jcg() {
        return 0;
    }

    @Override // u5.b
    public void Sj() {
        this.Sj.TEQ();
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq());
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2);
        com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj = this.Dq;
        if (interfaceC0272Sj != null) {
            interfaceC0272Sj.Sj(2);
        }
    }

    @Override // u5.b
    public void Sj(long j11) {
        this.Sj.Sj(j11);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj) {
        this.Dq = interfaceC0272Sj;
    }

    @Override // u5.b
    public void Sj(b.a aVar) {
    }

    @Override // u5.b
    public void Sj(b.InterfaceC0935b interfaceC0935b) {
        this.Sj.Sj(interfaceC0935b);
    }

    @Override // u5.b
    public void Sj(b.d dVar) {
    }

    @Override // u5.b
    public void Sj(boolean z10) {
        this.sP = z10;
    }

    @Override // u5.b
    public void Sj(boolean z10, int i11) {
        TKC();
    }

    @Override // u5.b
    public void Sj(boolean z10, String str) {
        this.EjP = z10;
    }

    @Override // u5.b
    public boolean Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        this.EjP = tkc.Dq();
        if (tkc.Jcg() > 0) {
            this.Sj.Sj(tkc.Jcg());
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.vS, this.Jcg, tkc);
        this.Sj.uA();
        return true;
    }

    @Override // u5.b
    public int TEQ() {
        return c6.a.a(this.Sj.vS, this.Sj.Sj);
    }

    @Override // u5.b
    public void TKC() {
        this.Sj.Ym();
    }

    @Override // u5.b
    public void TKC(long j11) {
    }

    @Override // u5.b
    public void TKC(boolean z10) {
    }

    public a TzV() {
        return this.Jcg;
    }

    @Override // u5.b
    public boolean Ym() {
        return false;
    }

    @Override // u5.b
    public boolean Zq() {
        return this.HiB;
    }

    @Override // u5.b
    public t5.a aa() {
        return this.Sj;
    }

    @Override // u5.b
    public boolean dNu() {
        return false;
    }

    @Override // u5.b
    public void sP() {
        this.Sj.uA();
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq());
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(this.Jcg, sj2);
        com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0272Sj interfaceC0272Sj = this.Dq;
        if (interfaceC0272Sj != null) {
            interfaceC0272Sj.Sj(1);
        }
    }

    @Override // u5.b
    public void sP(long j11) {
        this.TKC = j11;
    }

    @Override // u5.b
    public void sP(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
    }

    @Override // u5.b
    public void sP(boolean z10) {
        this.HiB = z10;
    }

    @Override // u5.b
    public boolean sef() {
        return this.EjP;
    }

    @Override // u5.b
    public long uA() {
        return HiB();
    }

    @Override // u5.b
    public boolean uvD() {
        return false;
    }

    @Override // u5.b
    public long vS() {
        return 0L;
    }
}
