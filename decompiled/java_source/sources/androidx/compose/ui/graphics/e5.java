package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class e5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4436a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f4437b = f5.a(0.5f, 0.5f);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return e5.f4437b;
        }
    }

    public static long b(long j11) {
        return j11;
    }

    public static final boolean c(long j11, long j12) {
        return j11 == j12;
    }

    public static final float d(long j11) {
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static final float e(long j11) {
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }

    public static int f(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String g(long j11) {
        return "TransformOrigin(packedValue=" + j11 + ')';
    }
}
