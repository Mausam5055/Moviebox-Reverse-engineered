package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {
    public static long a(long j11) {
        return j11;
    }

    public static final float b(long j11) {
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static final float c(long j11) {
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }
}
