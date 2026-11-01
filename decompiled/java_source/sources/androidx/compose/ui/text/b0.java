package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6083b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f6084c = c0.a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f6085a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return b0.f6084c;
        }
    }

    private /* synthetic */ b0(long j11) {
        this.f6085a = j11;
    }

    public static final /* synthetic */ b0 b(long j11) {
        return new b0(j11);
    }

    public static long c(long j11) {
        return j11;
    }

    public static boolean d(long j11, Object obj) {
        return (obj instanceof b0) && j11 == ((b0) obj).n();
    }

    public static final boolean e(long j11, long j12) {
        return j11 == j12;
    }

    public static final boolean f(long j11) {
        return k(j11) == g(j11);
    }

    public static final int g(long j11) {
        return (int) (j11 & 4294967295L);
    }

    public static final int h(long j11) {
        return i(j11) - j(j11);
    }

    public static final int i(long j11) {
        return k(j11) > g(j11) ? k(j11) : g(j11);
    }

    public static final int j(long j11) {
        return k(j11) > g(j11) ? g(j11) : k(j11);
    }

    public static final int k(long j11) {
        return (int) (j11 >> 32);
    }

    public static int l(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String m(long j11) {
        return "TextRange(" + k(j11) + ", " + g(j11) + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f6085a, obj);
    }

    public int hashCode() {
        return l(this.f6085a);
    }

    public final /* synthetic */ long n() {
        return this.f6085a;
    }

    public String toString() {
        return m(this.f6085a);
    }
}
