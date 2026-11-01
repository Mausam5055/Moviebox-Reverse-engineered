package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4344a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f4345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f4346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f4347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f4348e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return b.f4347d;
        }

        public final long b() {
            return b.f4345b;
        }

        public final long c() {
            return b.f4346c;
        }
    }

    static {
        long j11 = 3;
        long j12 = j11 << 32;
        f4345b = d((((long) 0) & 4294967295L) | j12);
        f4346c = d((((long) 1) & 4294967295L) | j12);
        f4347d = d(j12 | (((long) 2) & 4294967295L));
        f4348e = d((j11 & 4294967295L) | (((long) 4) << 32));
    }

    public static long d(long j11) {
        return j11;
    }

    public static final boolean e(long j11, long j12) {
        return j11 == j12;
    }

    public static final int f(long j11) {
        return (int) (j11 >> 32);
    }

    public static int g(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String h(long j11) {
        if (e(j11, f4345b)) {
            return "Rgb";
        }
        if (e(j11, f4346c)) {
            return "Xyz";
        }
        if (e(j11, f4347d)) {
            return "Lab";
        }
        return e(j11, f4348e) ? "Cmyk" : "Unknown";
    }
}
