package androidx.compose.ui.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5193a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f5194b = m0.a(Float.NaN, Float.NaN);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static long a(long j11) {
        return j11;
    }

    public static final float b(long j11) {
        if (!(j11 != f5194b)) {
            g0.a.b("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static final float c(long j11) {
        if (!(j11 != f5194b)) {
            g0.a.b("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }
}
