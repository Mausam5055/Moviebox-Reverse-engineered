package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class f4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4439b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4440c = g(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4441d = g(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4442e = g(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f4443f = g(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f4444g = g(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4445a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return f4.f4441d;
        }

        public final int b() {
            return f4.f4440c;
        }

        public final int c() {
            return f4.f4443f;
        }

        public final int d() {
            return f4.f4444g;
        }

        public final int e() {
            return f4.f4442e;
        }
    }

    private /* synthetic */ f4(int i11) {
        this.f4445a = i11;
    }

    public static final /* synthetic */ f4 f(int i11) {
        return new f4(i11);
    }

    public static int g(int i11) {
        return i11;
    }

    public static boolean h(int i11, Object obj) {
        return (obj instanceof f4) && i11 == ((f4) obj).l();
    }

    public static final boolean i(int i11, int i12) {
        return i11 == i12;
    }

    public static int j(int i11) {
        return i11;
    }

    public static String k(int i11) {
        if (i(i11, f4440c)) {
            return "Argb8888";
        }
        if (i(i11, f4441d)) {
            return "Alpha8";
        }
        if (i(i11, f4442e)) {
            return "Rgb565";
        }
        if (i(i11, f4443f)) {
            return "F16";
        }
        return i(i11, f4444g) ? "Gpu" : "Unknown";
    }

    public boolean equals(Object obj) {
        return h(this.f4445a, obj);
    }

    public int hashCode() {
        return j(this.f4445a);
    }

    public final /* synthetic */ int l() {
        return this.f4445a;
    }

    public String toString() {
        return k(this.f4445a);
    }
}
