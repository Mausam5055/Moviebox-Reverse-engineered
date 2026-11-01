package z0;

import android.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f79123a = new ThreadLocal();

    public static void a(int i11, int i12, int i13, float[] fArr) {
        float f11;
        float fAbs;
        float f12 = i11 / 255.0f;
        float f13 = i12 / 255.0f;
        float f14 = i13 / 255.0f;
        float fMax = Math.max(f12, Math.max(f13, f14));
        float fMin = Math.min(f12, Math.min(f13, f14));
        float f15 = fMax - fMin;
        float f16 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f11 = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == f12) {
                f11 = ((f13 - f14) / f15) % 6.0f;
            } else {
                f11 = fMax == f13 ? ((f14 - f12) / f15) + 2.0f : 4.0f + ((f12 - f13) / f15);
            }
            fAbs = f15 / (1.0f - Math.abs((2.0f * f16) - 1.0f));
        }
        float f17 = (f11 * 60.0f) % 360.0f;
        if (f17 < 0.0f) {
            f17 += 360.0f;
        }
        fArr[0] = m(f17, 0.0f, 360.0f);
        fArr[1] = m(fAbs, 0.0f, 1.0f);
        fArr[2] = m(f16, 0.0f, 1.0f);
    }

    public static void b(int i11, int i12, int i13, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d11 = ((double) i11) / 255.0d;
        double dPow = d11 < 0.04045d ? d11 / 12.92d : Math.pow((d11 + 0.055d) / 1.055d, 2.4d);
        double d12 = ((double) i12) / 255.0d;
        double dPow2 = d12 < 0.04045d ? d12 / 12.92d : Math.pow((d12 + 0.055d) / 1.055d, 2.4d);
        double d13 = ((double) i13) / 255.0d;
        double dPow3 = d13 < 0.04045d ? d13 / 12.92d : Math.pow((d13 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.4124d * dPow) + (0.3576d * dPow2) + (0.1805d * dPow3)) * 100.0d;
        dArr[1] = ((0.2126d * dPow) + (0.7152d * dPow2) + (0.0722d * dPow3)) * 100.0d;
        dArr[2] = ((dPow * 0.0193d) + (dPow2 * 0.1192d) + (dPow3 * 0.9505d)) * 100.0d;
    }

    public static int c(double d11, double d12, double d13) {
        double d14 = (((3.2406d * d11) + ((-1.5372d) * d12)) + ((-0.4986d) * d13)) / 100.0d;
        double d15 = ((((-0.9689d) * d11) + (1.8758d * d12)) + (0.0415d * d13)) / 100.0d;
        double d16 = (((0.0557d * d11) + ((-0.204d) * d12)) + (1.057d * d13)) / 100.0d;
        return Color.rgb(n((int) Math.round((d14 > 0.0031308d ? (Math.pow(d14, 0.4166666666666667d) * 1.055d) - 0.055d : d14 * 12.92d) * 255.0d), 0, 255), n((int) Math.round((d15 > 0.0031308d ? (Math.pow(d15, 0.4166666666666667d) * 1.055d) - 0.055d : d15 * 12.92d) * 255.0d), 0, 255), n((int) Math.round((d16 > 0.0031308d ? (Math.pow(d16, 0.4166666666666667d) * 1.055d) - 0.055d : d16 * 12.92d) * 255.0d), 0, 255));
    }

    public static int d(int i11, int i12, float f11) {
        float f12 = 1.0f - f11;
        return Color.argb((int) ((Color.alpha(i11) * f12) + (Color.alpha(i12) * f11)), (int) ((Color.red(i11) * f12) + (Color.red(i12) * f11)), (int) ((Color.green(i11) * f12) + (Color.green(i12) * f11)), (int) ((Color.blue(i11) * f12) + (Color.blue(i12) * f11)));
    }

    public static double e(int i11, int i12) {
        if (Color.alpha(i12) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i12));
        }
        if (Color.alpha(i11) < 255) {
            i11 = k(i11, i12);
        }
        double dF = f(i11) + 0.05d;
        double dF2 = f(i12) + 0.05d;
        return Math.max(dF, dF2) / Math.min(dF, dF2);
    }

    public static double f(int i11) {
        double[] dArrO = o();
        i(i11, dArrO);
        return dArrO[1] / 100.0d;
    }

    public static int g(int i11, int i12, float f11) {
        int i13 = 255;
        if (Color.alpha(i12) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i12));
        }
        double d11 = f11;
        if (e(p(i11, 255), i12) < d11) {
            return -1;
        }
        int i14 = 0;
        for (int i15 = 0; i15 <= 10 && i13 - i14 > 1; i15++) {
            int i16 = (i14 + i13) / 2;
            if (e(p(i11, i16), i12) < d11) {
                i14 = i16;
            } else {
                i13 = i16;
            }
        }
        return i13;
    }

    public static void h(int i11, float[] fArr) {
        a(Color.red(i11), Color.green(i11), Color.blue(i11), fArr);
    }

    public static void i(int i11, double[] dArr) {
        b(Color.red(i11), Color.green(i11), Color.blue(i11), dArr);
    }

    private static int j(int i11, int i12) {
        return 255 - (((255 - i12) * (255 - i11)) / 255);
    }

    public static int k(int i11, int i12) {
        int iAlpha = Color.alpha(i12);
        int iAlpha2 = Color.alpha(i11);
        int iJ = j(iAlpha2, iAlpha);
        return Color.argb(iJ, l(Color.red(i11), iAlpha2, Color.red(i12), iAlpha, iJ), l(Color.green(i11), iAlpha2, Color.green(i12), iAlpha, iJ), l(Color.blue(i11), iAlpha2, Color.blue(i12), iAlpha, iJ));
    }

    private static int l(int i11, int i12, int i13, int i14, int i15) {
        if (i15 == 0) {
            return 0;
        }
        return (((i11 * 255) * i12) + ((i13 * i14) * (255 - i12))) / (i15 * 255);
    }

    private static float m(float f11, float f12, float f13) {
        return f11 < f12 ? f12 : Math.min(f11, f13);
    }

    private static int n(int i11, int i12, int i13) {
        return i11 < i12 ? i12 : Math.min(i11, i13);
    }

    private static double[] o() {
        ThreadLocal threadLocal = f79123a;
        double[] dArr = (double[]) threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    public static int p(int i11, int i12) {
        if (i12 < 0 || i12 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i11 & 16777215) | (i12 << 24);
    }
}
