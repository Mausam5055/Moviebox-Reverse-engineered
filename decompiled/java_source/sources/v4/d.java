package v4;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static float a(float f11) {
        return f11 <= 0.04045f ? f11 / 12.92f : (float) Math.pow((f11 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float b(float f11) {
        return f11 <= 0.0031308f ? f11 * 12.92f : (float) ((Math.pow(f11, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int c(float f11, int i11, int i12) {
        if (i11 == i12 || f11 <= 0.0f) {
            return i11;
        }
        if (f11 >= 1.0f) {
            return i12;
        }
        float f12 = ((i11 >> 24) & 255) / 255.0f;
        float fA = a(((i11 >> 16) & 255) / 255.0f);
        float fA2 = a(((i11 >> 8) & 255) / 255.0f);
        float fA3 = a((i11 & 255) / 255.0f);
        float fA4 = a(((i12 >> 16) & 255) / 255.0f);
        float f13 = f12 + (((((i12 >> 24) & 255) / 255.0f) - f12) * f11);
        float fA5 = fA2 + ((a(((i12 >> 8) & 255) / 255.0f) - fA2) * f11);
        float fA6 = fA3 + (f11 * (a((i12 & 255) / 255.0f) - fA3));
        return (Math.round(b(fA + ((fA4 - fA) * f11)) * 255.0f) << 16) | (Math.round(f13 * 255.0f) << 24) | (Math.round(b(fA5) * 255.0f) << 8) | Math.round(b(fA6) * 255.0f);
    }
}
