package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f2477a = Float.MAX_VALUE;

    public static final long a(float f11, float f12) {
        return i0.a((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    public static final float b() {
        return f2477a;
    }
}
