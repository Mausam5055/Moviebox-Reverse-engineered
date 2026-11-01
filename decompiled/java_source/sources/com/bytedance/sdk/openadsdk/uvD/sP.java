package com.bytedance.sdk.openadsdk.uvD;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static int EjP = 2;
    public static int HiB = 3;
    public static int Sj = -1;
    public static int TKC = 1;
    public static int sP;
    private int vS = Sj;
    private long Jcg = 0;
    private long Dq = 0;
    private final List<TKC> uA = new ArrayList();
    private long TEQ = 0;

    public void EjP(long j11) {
        int i11 = this.vS;
        if (i11 == Sj || i11 != EjP) {
            return;
        }
        this.vS = TKC;
        this.uA.add(new TKC(this.TEQ, j11));
        this.TEQ = 0L;
    }

    public int Sj() {
        return this.vS;
    }

    public long Sj(long j11, long j12) {
        long j13;
        long j14;
        long jSP;
        long j15 = this.Dq;
        if (j15 != 0 && j11 > j15) {
            return 0L;
        }
        int i11 = 0;
        for (TKC tkc : this.uA) {
            if (tkc.sP() > j11) {
                if (j11 < tkc.Sj()) {
                    j14 = i11;
                    jSP = tkc.sP() - tkc.Sj();
                } else {
                    j14 = i11;
                    jSP = tkc.sP() - j11;
                }
                i11 = (int) (j14 + jSP);
            }
        }
        long j16 = this.Jcg;
        if (j16 < j11) {
            long j17 = this.TEQ;
            if (j17 == 0) {
                j17 = this.Dq;
                if (j17 == 0) {
                    j13 = j12 - j11;
                }
            } else if (j17 <= j11) {
                return 0L;
            }
            return (j17 - j11) - ((long) i11);
        }
        long j18 = this.TEQ;
        if (j18 == 0) {
            j18 = this.Dq;
            if (j18 == 0) {
                j13 = j12 - j16;
            }
        } else if (j18 <= j16) {
            return 0L;
        }
        return (j18 - j16) - ((long) i11);
        return j13 - ((long) i11);
    }

    public void Sj(long j11) {
        this.vS = sP;
        this.Jcg = j11;
    }

    public void TKC(long j11) {
        int i11;
        int i12 = this.vS;
        if (i12 == Sj || i12 == (i11 = EjP) || i12 == HiB) {
            return;
        }
        this.vS = i11;
        this.TEQ = j11;
    }

    public void sP(long j11) {
        int i11;
        int i12 = this.vS;
        if (i12 == Sj || i12 == (i11 = HiB)) {
            return;
        }
        this.vS = i11;
        this.Dq = j11;
    }
}
