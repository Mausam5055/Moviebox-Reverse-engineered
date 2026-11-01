package com.bytedance.sdk.component.sP.Sj.sP;

/* JADX INFO: loaded from: classes2.dex */
final class HiB {
    boolean EjP;
    boolean HiB;
    HiB Jcg;
    final byte[] Sj;
    int TKC;
    int sP;
    HiB vS;

    HiB() {
        this.Sj = new byte[8192];
        this.HiB = true;
        this.EjP = false;
    }

    HiB(byte[] bArr, int i11, int i12, boolean z10, boolean z11) {
        this.Sj = bArr;
        this.sP = i11;
        this.TKC = i12;
        this.EjP = z10;
        this.HiB = z11;
    }

    final HiB Sj() {
        this.EjP = true;
        return new HiB(this.Sj, this.sP, this.TKC, true, false);
    }

    public final HiB Sj(HiB hiB) {
        hiB.Jcg = this;
        hiB.vS = this.vS;
        this.vS.Jcg = hiB;
        this.vS = hiB;
        return hiB;
    }

    public final HiB sP() {
        HiB hiB = this.vS;
        HiB hiB2 = hiB != this ? hiB : null;
        HiB hiB3 = this.Jcg;
        if (hiB3 != null) {
            hiB3.vS = hiB;
        }
        HiB hiB4 = this.vS;
        if (hiB4 != null) {
            hiB4.Jcg = hiB3;
        }
        this.vS = null;
        this.Jcg = null;
        return hiB2;
    }
}
