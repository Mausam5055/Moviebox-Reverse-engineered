package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70628b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final y[] f70629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f70630d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70631a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return w.f70630d;
        }
    }

    static {
        y.a aVar = y.f70632b;
        f70629c = new y[]{y.d(aVar.c()), y.d(aVar.b()), y.d(aVar.a())};
        f70630d = x.e(0L, Float.NaN);
    }

    private /* synthetic */ w(long j11) {
        this.f70631a = j11;
    }

    public static final /* synthetic */ w b(long j11) {
        return new w(j11);
    }

    public static long c(long j11) {
        return j11;
    }

    public static boolean d(long j11, Object obj) {
        return (obj instanceof w) && j11 == ((w) obj).k();
    }

    public static final boolean e(long j11, long j12) {
        return j11 == j12;
    }

    public static final long f(long j11) {
        return j11 & 1095216660480L;
    }

    public static final long g(long j11) {
        return f70629c[(int) (f(j11) >>> 32)].j();
    }

    public static final float h(long j11) {
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }

    public static int i(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String j(long j11) {
        long jG = g(j11);
        y.a aVar = y.f70632b;
        if (y.g(jG, aVar.c())) {
            return "Unspecified";
        }
        if (y.g(jG, aVar.b())) {
            return h(j11) + ".sp";
        }
        if (!y.g(jG, aVar.a())) {
            return "Invalid";
        }
        return h(j11) + ".em";
    }

    public boolean equals(Object obj) {
        return d(this.f70631a, obj);
    }

    public int hashCode() {
        return i(this.f70631a);
    }

    public final /* synthetic */ long k() {
        return this.f70631a;
    }

    public String toString() {
        return j(this.f70631a);
    }
}
