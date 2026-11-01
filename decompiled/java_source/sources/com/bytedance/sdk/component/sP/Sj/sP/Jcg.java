package com.bytedance.sdk.component.sP.Sj.sP;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class Jcg extends EjP {
    final transient int[] Dq;
    final transient byte[][] Jcg;

    Jcg(Sj sj2, int i11) {
        super(null);
        uA.Sj(sj2.sP, 0L, i11);
        HiB hiB = sj2.Sj;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = hiB.TKC;
            int i16 = hiB.sP;
            if (i15 == i16) {
                throw new AssertionError("s.limit == s.pos");
            }
            i13 += i15 - i16;
            i14++;
            hiB = hiB.vS;
        }
        this.Jcg = new byte[i14][];
        this.Dq = new int[i14 * 2];
        HiB hiB2 = sj2.Sj;
        int i17 = 0;
        while (i12 < i11) {
            byte[][] bArr = this.Jcg;
            bArr[i17] = hiB2.Sj;
            int i18 = hiB2.TKC;
            int i19 = hiB2.sP;
            i12 += i18 - i19;
            if (i12 > i11) {
                i12 = i11;
            }
            int[] iArr = this.Dq;
            iArr[i17] = i12;
            iArr[bArr.length + i17] = i19;
            hiB2.EjP = true;
            i17++;
            hiB2 = hiB2.vS;
        }
    }

    private EjP HiB() {
        return new EjP(EjP());
    }

    private int sP(int i11) {
        int iBinarySearch = Arrays.binarySearch(this.Dq, 0, this.Jcg.length, i11 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public byte[] EjP() {
        int[] iArr = this.Dq;
        byte[][] bArr = this.Jcg;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            int[] iArr2 = this.Dq;
            int i13 = iArr2[length + i11];
            int i14 = iArr2[i11];
            System.arraycopy(this.Jcg[i11], i13, bArr2, i12, i14 - i12);
            i11++;
            i12 = i14;
        }
        return bArr2;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public byte Sj(int i11) {
        uA.Sj(this.Dq[this.Jcg.length - 1], i11, 1L);
        int iSP = sP(i11);
        int i12 = iSP == 0 ? 0 : this.Dq[iSP - 1];
        int[] iArr = this.Dq;
        byte[][] bArr = this.Jcg;
        return bArr[iSP][(i11 - i12) + iArr[bArr.length + iSP]];
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public EjP Sj(int i11, int i12) {
        return HiB().Sj(i11, i12);
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public String Sj() {
        return HiB().Sj();
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public boolean Sj(int i11, EjP ejP, int i12, int i13) {
        if (i11 < 0 || i11 > TKC() - i13) {
            return false;
        }
        int iSP = sP(i11);
        while (i13 > 0) {
            int i14 = iSP == 0 ? 0 : this.Dq[iSP - 1];
            int iMin = Math.min(i13, ((this.Dq[iSP] - i14) + i14) - i11);
            int[] iArr = this.Dq;
            byte[][] bArr = this.Jcg;
            if (!ejP.Sj(i12, bArr[iSP], (i11 - i14) + iArr[bArr.length + iSP], iMin)) {
                return false;
            }
            i11 += iMin;
            i12 += iMin;
            i13 -= iMin;
            iSP++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public boolean Sj(int i11, byte[] bArr, int i12, int i13) {
        if (i11 < 0 || i11 > TKC() - i13 || i12 < 0 || i12 > bArr.length - i13) {
            return false;
        }
        int iSP = sP(i11);
        while (i13 > 0) {
            int i14 = iSP == 0 ? 0 : this.Dq[iSP - 1];
            int iMin = Math.min(i13, ((this.Dq[iSP] - i14) + i14) - i11);
            int[] iArr = this.Dq;
            byte[][] bArr2 = this.Jcg;
            if (!uA.Sj(bArr2[iSP], (i11 - i14) + iArr[bArr2.length + iSP], bArr, i12, iMin)) {
                return false;
            }
            i11 += iMin;
            i12 += iMin;
            i13 -= iMin;
            iSP++;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public int TKC() {
        return this.Dq[this.Jcg.length - 1];
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EjP) {
            EjP ejP = (EjP) obj;
            if (ejP.TKC() == TKC() && Sj(0, ejP, 0, TKC())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public int hashCode() {
        int i11 = this.HiB;
        if (i11 != 0) {
            return i11;
        }
        int length = this.Jcg.length;
        int i12 = 0;
        int i13 = 1;
        int i14 = 0;
        while (i12 < length) {
            byte[] bArr = this.Jcg[i12];
            int[] iArr = this.Dq;
            int i15 = iArr[length + i12];
            int i16 = iArr[i12];
            int i17 = (i16 - i14) + i15;
            while (i15 < i17) {
                i13 = (i13 * 31) + bArr[i15];
                i15++;
            }
            i12++;
            i14 = i16;
        }
        this.HiB = i13;
        return i13;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public String sP() {
        return HiB().sP();
    }

    @Override // com.bytedance.sdk.component.sP.Sj.sP.EjP
    public String toString() {
        return HiB().toString();
    }
}
