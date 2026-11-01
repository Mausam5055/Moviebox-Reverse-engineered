package q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final float a(float f11) {
        float fIntBitsToFloat = Float.intBitsToFloat(((int) ((((long) Float.floatToRawIntBits(f11)) & 8589934591L) / ((long) 3))) + 709952852);
        float f12 = fIntBitsToFloat - ((fIntBitsToFloat - (f11 / (fIntBitsToFloat * fIntBitsToFloat))) * 0.33333334f);
        return f12 - ((f12 - (f11 / (f12 * f12))) * 0.33333334f);
    }

    public static final float b(float f11, float f12, float f13) {
        return ((1 - f13) * f11) + (f13 * f12);
    }
}
