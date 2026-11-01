package androidx.compose.foundation.text.modifiers;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0036a f3273a = new C0036a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f3274b = b(Float.NaN, Float.NaN);

    /* JADX INFO: renamed from: androidx.compose.foundation.text.modifiers.a$a, reason: collision with other inner class name */
    public static final class C0036a {
        private C0036a() {
        }

        public /* synthetic */ C0036a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return a.f3274b;
        }
    }

    public static long b(float f11, float f12) {
        return c((((long) Float.floatToRawIntBits(f12)) & 4294967295L) | (Float.floatToRawIntBits(f11) << 32));
    }

    private static long c(long j11) {
        return j11;
    }

    public static long d(o0.e eVar) {
        return b(eVar.getDensity(), eVar.C0());
    }

    public static final boolean e(long j11, long j12) {
        return j11 == j12;
    }

    public static final float f(long j11) {
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static final float g(long j11) {
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }

    public static String h(long j11) {
        return "InlineDensity(density=" + f(j11) + ", fontScale=" + g(j11) + ')';
    }
}
