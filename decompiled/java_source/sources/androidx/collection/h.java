package androidx.collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static long a(float f11, float f12) {
        return b((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static long b(long j11) {
        return j11;
    }
}
