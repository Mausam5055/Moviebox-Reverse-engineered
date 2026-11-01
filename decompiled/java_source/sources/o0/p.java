package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70615b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70616c = c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70617a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return p.f70616c;
        }
    }

    private /* synthetic */ p(long j11) {
        this.f70617a = j11;
    }

    public static final /* synthetic */ p b(long j11) {
        return new p(j11);
    }

    public static long c(long j11) {
        return j11;
    }

    public static final long d(long j11, int i11, int i12) {
        return c((((long) i11) << 32) | (((long) i12) & 4294967295L));
    }

    public static /* synthetic */ long e(long j11, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = (int) (j11 >> 32);
        }
        if ((i13 & 2) != 0) {
            i12 = (int) (4294967295L & j11);
        }
        return d(j11, i11, i12);
    }

    public static boolean f(long j11, Object obj) {
        return (obj instanceof p) && j11 == ((p) obj).n();
    }

    public static final boolean g(long j11, long j12) {
        return j11 == j12;
    }

    public static final int h(long j11) {
        return (int) (j11 >> 32);
    }

    public static final int i(long j11) {
        return (int) (j11 & 4294967295L);
    }

    public static int j(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static final long k(long j11, long j12) {
        return c((((long) (((int) (j11 >> 32)) - ((int) (j12 >> 32)))) << 32) | (((long) (((int) (j11 & 4294967295L)) - ((int) (j12 & 4294967295L)))) & 4294967295L));
    }

    public static final long l(long j11, long j12) {
        return c((((long) (((int) (j11 >> 32)) + ((int) (j12 >> 32)))) << 32) | (((long) (((int) (j11 & 4294967295L)) + ((int) (j12 & 4294967295L)))) & 4294967295L));
    }

    public static String m(long j11) {
        return '(' + h(j11) + ", " + i(j11) + ')';
    }

    public boolean equals(Object obj) {
        return f(this.f70617a, obj);
    }

    public int hashCode() {
        return j(this.f70617a);
    }

    public final /* synthetic */ long n() {
        return this.f70617a;
    }

    public String toString() {
        return m(this.f70617a);
    }
}
