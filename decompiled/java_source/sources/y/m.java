package y;

import androidx.collection.s;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f78491b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f78492c = d(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f78493d = d(9205357640488583168L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f78494a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return m.f78493d;
        }

        public final long b() {
            return m.f78492c;
        }
    }

    private /* synthetic */ m(long j11) {
        this.f78494a = j11;
    }

    public static final /* synthetic */ m c(long j11) {
        return new m(j11);
    }

    public static long d(long j11) {
        return j11;
    }

    public static boolean e(long j11, Object obj) {
        return (obj instanceof m) && j11 == ((m) obj).m();
    }

    public static final boolean f(long j11, long j12) {
        return j11 == j12;
    }

    public static final float g(long j11) {
        if (j11 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }

    public static final float h(long j11) {
        if (j11 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Math.min(Float.intBitsToFloat((int) ((j11 >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j11 & 2147483647L)));
    }

    public static final float i(long j11) {
        if (j11 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static int j(long j11) {
        return s.a(j11);
    }

    public static final boolean k(long j11) {
        if (j11 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        long j12 = j11 & (~((((-9223372034707292160L) & j11) >>> 31) * ((long) (-1))));
        return ((j12 & 4294967295L) & (j12 >>> 32)) == 0;
    }

    public static String l(long j11) {
        if (j11 == 9205357640488583168L) {
            return "Size.Unspecified";
        }
        return "Size(" + c.a(i(j11), 1) + ", " + c.a(g(j11), 1) + ')';
    }

    public boolean equals(Object obj) {
        return e(this.f78494a, obj);
    }

    public int hashCode() {
        return j(this.f78494a);
    }

    public final /* synthetic */ long m() {
        return this.f78494a;
    }

    public String toString() {
        return l(this.f78494a);
    }
}
