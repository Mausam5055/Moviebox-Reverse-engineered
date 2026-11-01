package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    double[] f6789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f6790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    f f6791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f6792f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float[] f6787a = new float[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    double[] f6788b = new double[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    double f6793g = 6.283185307179586d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6794h = false;

    public void a(double d11, float f11) {
        int length = this.f6787a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.f6788b, d11);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.f6788b = Arrays.copyOf(this.f6788b, length);
        this.f6787a = Arrays.copyOf(this.f6787a, length);
        this.f6789c = new double[length];
        double[] dArr = this.f6788b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.f6788b[iBinarySearch] = d11;
        this.f6787a[iBinarySearch] = f11;
        this.f6794h = false;
    }

    double b(double d11) {
        if (d11 <= 0.0d) {
            d11 = 1.0E-5d;
        } else if (d11 >= 1.0d) {
            d11 = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f6788b, d11);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i11 = -iBinarySearch;
        int i12 = i11 - 1;
        float[] fArr = this.f6787a;
        float f11 = fArr[i12];
        int i13 = i11 - 2;
        float f12 = fArr[i13];
        double[] dArr = this.f6788b;
        double d12 = dArr[i12];
        double d13 = dArr[i13];
        double d14 = ((double) (f11 - f12)) / (d12 - d13);
        return (d11 * d14) + (((double) f12) - (d14 * d13));
    }

    double c(double d11) {
        if (d11 < 0.0d) {
            d11 = 0.0d;
        } else if (d11 > 1.0d) {
            d11 = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f6788b, d11);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i11 = -iBinarySearch;
        int i12 = i11 - 1;
        float[] fArr = this.f6787a;
        float f11 = fArr[i12];
        int i13 = i11 - 2;
        float f12 = fArr[i13];
        double[] dArr = this.f6788b;
        double d12 = dArr[i12];
        double d13 = dArr[i13];
        double d14 = ((double) (f11 - f12)) / (d12 - d13);
        return this.f6789c[i13] + ((((double) f12) - (d14 * d13)) * (d11 - d13)) + ((d14 * ((d11 * d11) - (d13 * d13))) / 2.0d);
    }

    public double d(double d11, double d12, double d13) {
        double dC = d12 + c(d11);
        double dB = b(d11) + d13;
        switch (this.f6792f) {
            case 1:
                return 0.0d;
            case 2:
                return dB * 4.0d * Math.signum((((dC * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return dB * 2.0d;
            case 4:
                return (-dB) * 2.0d;
            case 5:
                double d14 = this.f6793g;
                return (-d14) * dB * Math.sin(d14 * dC);
            case 6:
                return dB * 4.0d * ((((dC * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.f6791e.f(dC % 1.0d, 0);
            default:
                double d15 = this.f6793g;
                return dB * d15 * Math.cos(d15 * dC);
        }
    }

    public double e(double d11, double d12) {
        double dAbs;
        double dC = c(d11) + d12;
        switch (this.f6792f) {
            case 1:
                return Math.signum(0.5d - (dC % 1.0d));
            case 2:
                dAbs = Math.abs((((dC * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((dC * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((dC * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f6793g * (d12 + dC));
            case 6:
                double dAbs2 = 1.0d - Math.abs(((dC * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.f6791e.c(dC % 1.0d, 0);
            default:
                return Math.sin(this.f6793g * dC);
        }
        return 1.0d - dAbs;
    }

    public void f() {
        double d11 = 0.0d;
        int i11 = 0;
        while (true) {
            float[] fArr = this.f6787a;
            if (i11 >= fArr.length) {
                break;
            }
            d11 += (double) fArr[i11];
            i11++;
        }
        double d12 = 0.0d;
        int i12 = 1;
        while (true) {
            float[] fArr2 = this.f6787a;
            if (i12 >= fArr2.length) {
                break;
            }
            int i13 = i12 - 1;
            float f11 = (fArr2[i13] + fArr2[i12]) / 2.0f;
            double[] dArr = this.f6788b;
            d12 += (dArr[i12] - dArr[i13]) * ((double) f11);
            i12++;
        }
        int i14 = 0;
        while (true) {
            float[] fArr3 = this.f6787a;
            if (i14 >= fArr3.length) {
                break;
            }
            fArr3[i14] = (float) (((double) fArr3[i14]) * (d11 / d12));
            i14++;
        }
        this.f6789c[0] = 0.0d;
        int i15 = 1;
        while (true) {
            float[] fArr4 = this.f6787a;
            if (i15 >= fArr4.length) {
                this.f6794h = true;
                return;
            }
            int i16 = i15 - 1;
            float f12 = (fArr4[i16] + fArr4[i15]) / 2.0f;
            double[] dArr2 = this.f6788b;
            double d13 = dArr2[i15] - dArr2[i16];
            double[] dArr3 = this.f6789c;
            dArr3[i15] = dArr3[i16] + (d13 * ((double) f12));
            i15++;
        }
    }

    public void g(int i11, String str) {
        this.f6792f = i11;
        this.f6790d = str;
        if (str != null) {
            this.f6791e = f.i(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f6788b) + " period=" + Arrays.toString(this.f6787a);
    }
}
