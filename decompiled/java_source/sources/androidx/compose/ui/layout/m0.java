package androidx.compose.ui.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 {
    public static final long a(float f11, float f12) {
        return l0.a((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static final long b(long j11, long j12) {
        return y.n.a(y.m.i(j11) * l0.b(j12), y.m.g(j11) * l0.c(j12));
    }
}
