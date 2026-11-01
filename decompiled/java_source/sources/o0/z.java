package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70637b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70638c = c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70639a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return z.f70638c;
        }
    }

    private /* synthetic */ z(long j11) {
        this.f70639a = j11;
    }

    public static final /* synthetic */ z b(long j11) {
        return new z(j11);
    }

    public static long c(long j11) {
        return j11;
    }

    public static final long d(long j11, float f11, float f12) {
        return c((((long) Float.floatToRawIntBits(f11)) << 32) | (((long) Float.floatToRawIntBits(f12)) & 4294967295L));
    }

    public static /* synthetic */ long e(long j11, float f11, float f12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = Float.intBitsToFloat((int) (j11 >> 32));
        }
        if ((i11 & 2) != 0) {
            f12 = Float.intBitsToFloat((int) (4294967295L & j11));
        }
        return d(j11, f11, f12);
    }

    public static boolean f(long j11, Object obj) {
        return (obj instanceof z) && j11 == ((z) obj).n();
    }

    public static final boolean g(long j11, long j12) {
        return j11 == j12;
    }

    public static final float h(long j11) {
        return Float.intBitsToFloat((int) (j11 >> 32));
    }

    public static final float i(long j11) {
        return Float.intBitsToFloat((int) (j11 & 4294967295L));
    }

    public static int j(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static final long k(long j11, long j12) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j11 >> 32)) - Float.intBitsToFloat((int) (j12 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j11 & 4294967295L)) - Float.intBitsToFloat((int) (j12 & 4294967295L));
        return c((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L));
    }

    public static final long l(long j11, long j12) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j11 >> 32)) + Float.intBitsToFloat((int) (j12 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j11 & 4294967295L)) + Float.intBitsToFloat((int) (j12 & 4294967295L));
        return c((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L));
    }

    public static String m(long j11) {
        return '(' + h(j11) + ", " + i(j11) + ") px/sec";
    }

    public boolean equals(Object obj) {
        return f(this.f70639a, obj);
    }

    public int hashCode() {
        return j(this.f70639a);
    }

    public final /* synthetic */ long n() {
        return this.f70639a;
    }

    public String toString() {
        return m(this.f70639a);
    }
}
