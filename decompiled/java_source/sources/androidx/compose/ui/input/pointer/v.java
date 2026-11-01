package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5055a;

    private /* synthetic */ v(long j11) {
        this.f5055a = j11;
    }

    public static final /* synthetic */ v a(long j11) {
        return new v(j11);
    }

    public static long b(long j11) {
        return j11;
    }

    public static boolean c(long j11, Object obj) {
        return (obj instanceof v) && j11 == ((v) obj).g();
    }

    public static final boolean d(long j11, long j12) {
        return j11 == j12;
    }

    public static int e(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String f(long j11) {
        return "PointerId(value=" + j11 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f5055a, obj);
    }

    public final /* synthetic */ long g() {
        return this.f5055a;
    }

    public int hashCode() {
        return e(this.f5055a);
    }

    public String toString() {
        return f(this.f5055a);
    }
}
