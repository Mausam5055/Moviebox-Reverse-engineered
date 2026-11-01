package y;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {
    public static final long a(float f11, float f12) {
        return m.d((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static final long b(long j11) {
        if (j11 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return h.a(Float.intBitsToFloat((int) (j11 >> 32)) / 2.0f, Float.intBitsToFloat((int) (j11 & 4294967295L)) / 2.0f);
    }

    public static final i c(long j11) {
        return j.a(g.f78470b.c(), j11);
    }
}
