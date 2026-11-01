package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected b f6797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int[] f6798b = new int[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float[] f6799c = new float[10];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6801e;

    private static class a {
        static void a(int[] iArr, float[] fArr, int i11, int i12) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i12;
            iArr2[1] = i11;
            int i13 = 2;
            while (i13 > 0) {
                int i14 = iArr2[i13 - 1];
                int i15 = i13 - 2;
                int i16 = iArr2[i15];
                if (i14 < i16) {
                    int iB = b(iArr, fArr, i14, i16);
                    iArr2[i15] = iB - 1;
                    iArr2[i13 - 1] = i14;
                    int i17 = i13 + 1;
                    iArr2[i13] = i16;
                    i13 += 2;
                    iArr2[i17] = iB + 1;
                } else {
                    i13 = i15;
                }
            }
        }

        private static int b(int[] iArr, float[] fArr, int i11, int i12) {
            int i13 = iArr[i12];
            int i14 = i11;
            while (i11 < i12) {
                if (iArr[i11] <= i13) {
                    c(iArr, fArr, i14, i11);
                    i14++;
                }
                i11++;
            }
            c(iArr, fArr, i14, i12);
            return i14;
        }

        private static void c(int[] iArr, float[] fArr, int i11, int i12) {
            int i13 = iArr[i11];
            iArr[i11] = iArr[i12];
            iArr[i12] = i13;
            float f11 = fArr[i11];
            fArr[i11] = fArr[i12];
            fArr[i12] = f11;
        }
    }

    public float a(float f11) {
        return (float) this.f6797a.c(f11, 0);
    }

    public float b(float f11) {
        return (float) this.f6797a.f(f11, 0);
    }

    public void c(int i11, float f11) {
        int[] iArr = this.f6798b;
        if (iArr.length < this.f6800d + 1) {
            this.f6798b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f6799c;
            this.f6799c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f6798b;
        int i12 = this.f6800d;
        iArr2[i12] = i11;
        this.f6799c[i12] = f11;
        this.f6800d = i12 + 1;
    }

    public void d(String str) {
        this.f6801e = str;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    public void e(int i11) {
        int i12 = this.f6800d;
        if (i12 == 0) {
            return;
        }
        a.a(this.f6798b, this.f6799c, 0, i12 - 1);
        int i13 = 1;
        for (int i14 = 1; i14 < this.f6800d; i14++) {
            int[] iArr = this.f6798b;
            if (iArr[i14 - 1] != iArr[i14]) {
                i13++;
            }
        }
        double[] dArr = new double[i13];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i13, 1);
        int i15 = 0;
        for (int i16 = 0; i16 < this.f6800d; i16++) {
            if (i16 > 0) {
                int[] iArr2 = this.f6798b;
                if (iArr2[i16] != iArr2[i16 - 1]) {
                    dArr[i15] = ((double) this.f6798b[i16]) * 0.01d;
                    dArr2[i15][0] = this.f6799c[i16];
                    i15++;
                }
            } else {
                dArr[i15] = ((double) this.f6798b[i16]) * 0.01d;
                dArr2[i15][0] = this.f6799c[i16];
                i15++;
            }
        }
        this.f6797a = b.a(i11, dArr, dArr2);
    }

    public String toString() {
        String str = this.f6801e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i11 = 0; i11 < this.f6800d; i11++) {
            str = str + "[" + this.f6798b[i11] + " , " + decimalFormat.format(this.f6799c[i11]) + "] ";
        }
        return str;
    }
}
