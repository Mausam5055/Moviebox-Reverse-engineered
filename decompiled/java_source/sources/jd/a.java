package jd;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public static float a(float f11, float f12, float f13, float f14) {
        double d11 = f11 - f13;
        double d12 = f12 - f14;
        return (float) Math.sqrt((d11 * d11) + (d12 * d12));
    }

    public static float b(int i11, int i12, int i13, int i14) {
        double d11 = i11 - i13;
        double d12 = i12 - i14;
        return (float) Math.sqrt((d11 * d11) + (d12 * d12));
    }

    public static int c(float f11) {
        return (int) (f11 + (f11 < 0.0f ? -0.5f : 0.5f));
    }

    public static int d(int[] iArr) {
        int i11 = 0;
        for (int i12 : iArr) {
            i11 += i12;
        }
        return i11;
    }
}
