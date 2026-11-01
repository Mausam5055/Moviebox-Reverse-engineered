package o0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {
    public static final long a(float f11, float f12) {
        return k.b((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static final long b(float f11, float f12) {
        return l.b((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }
}
