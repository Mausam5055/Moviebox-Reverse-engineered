package y;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static final long a(float f11, float f12) {
        return a.b((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static /* synthetic */ long b(float f11, float f12, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f12 = f11;
        }
        return a(f11, f12);
    }
}
