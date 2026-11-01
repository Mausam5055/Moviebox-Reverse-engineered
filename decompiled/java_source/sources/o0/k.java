package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70608b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70609c = b(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f70610d = b(9205357640488583168L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70611a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ k(long j11) {
        this.f70611a = j11;
    }

    public static final /* synthetic */ k a(long j11) {
        return new k(j11);
    }

    public static long b(long j11) {
        return j11;
    }

    public static boolean c(long j11, Object obj) {
        return (obj instanceof k) && j11 == ((k) obj).h();
    }

    public static final float d(long j11) {
        return i.g(Float.intBitsToFloat((int) (j11 >> 32)));
    }

    public static final float e(long j11) {
        return i.g(Float.intBitsToFloat((int) (j11 & 4294967295L)));
    }

    public static int f(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String g(long j11) {
        if (j11 == 9205357640488583168L) {
            return "DpOffset.Unspecified";
        }
        return '(' + ((Object) i.k(d(j11))) + ", " + ((Object) i.k(e(j11))) + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f70611a, obj);
    }

    public final /* synthetic */ long h() {
        return this.f70611a;
    }

    public int hashCode() {
        return f(this.f70611a);
    }

    public String toString() {
        return g(this.f70611a);
    }
}
