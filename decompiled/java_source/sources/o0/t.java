package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70624b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70625c = c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70626a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return t.f70625c;
        }
    }

    private /* synthetic */ t(long j11) {
        this.f70626a = j11;
    }

    public static final /* synthetic */ t b(long j11) {
        return new t(j11);
    }

    public static long c(long j11) {
        return j11;
    }

    public static boolean d(long j11, Object obj) {
        return (obj instanceof t) && j11 == ((t) obj).j();
    }

    public static final boolean e(long j11, long j12) {
        return j11 == j12;
    }

    public static final int f(long j11) {
        return (int) (j11 & 4294967295L);
    }

    public static final int g(long j11) {
        return (int) (j11 >> 32);
    }

    public static int h(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String i(long j11) {
        return g(j11) + " x " + f(j11);
    }

    public boolean equals(Object obj) {
        return d(this.f70626a, obj);
    }

    public int hashCode() {
        return h(this.f70626a);
    }

    public final /* synthetic */ long j() {
        return this.f70626a;
    }

    public String toString() {
        return i(this.f70626a);
    }
}
