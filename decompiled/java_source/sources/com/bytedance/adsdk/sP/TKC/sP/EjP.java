package com.bytedance.adsdk.sP.TKC.sP;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private final float[] Sj;
    private final int[] sP;

    public EjP(float[] fArr, int[] iArr) {
        this.Sj = fArr;
        this.sP = iArr;
    }

    private int Sj(float f11) {
        int iBinarySearch = Arrays.binarySearch(this.Sj, f11);
        if (iBinarySearch >= 0) {
            return this.sP[iBinarySearch];
        }
        int i11 = -(iBinarySearch + 1);
        if (i11 == 0) {
            return this.sP[0];
        }
        int[] iArr = this.sP;
        if (i11 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.Sj;
        int i12 = i11 - 1;
        float f12 = fArr[i12];
        return com.bytedance.adsdk.sP.vS.sP.Sj((f11 - f12) / (fArr[i11] - f12), iArr[i12], iArr[i11]);
    }

    public EjP Sj(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i11 = 0; i11 < fArr.length; i11++) {
            iArr[i11] = Sj(fArr[i11]);
        }
        return new EjP(fArr, iArr);
    }

    public void Sj(EjP ejP, EjP ejP2, float f11) {
        if (ejP.sP.length == ejP2.sP.length) {
            for (int i11 = 0; i11 < ejP.sP.length; i11++) {
                this.Sj[i11] = com.bytedance.adsdk.sP.vS.HiB.Sj(ejP.Sj[i11], ejP2.Sj[i11], f11);
                this.sP[i11] = com.bytedance.adsdk.sP.vS.sP.Sj(f11, ejP.sP[i11], ejP2.sP[i11]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + ejP.sP.length + " vs " + ejP2.sP.length + ")");
    }

    public float[] Sj() {
        return this.Sj;
    }

    public int TKC() {
        return this.sP.length;
    }

    public int[] sP() {
        return this.sP;
    }
}
