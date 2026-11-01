package c0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0156a f16967b = new C0156a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f16968c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f16969d = d(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f16970a;

    /* JADX INFO: renamed from: c0.a$a, reason: collision with other inner class name */
    public static final class C0156a {
        private C0156a() {
        }

        public /* synthetic */ C0156a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return a.f16969d;
        }

        public final int b() {
            return a.f16968c;
        }
    }

    private /* synthetic */ a(int i11) {
        this.f16970a = i11;
    }

    public static final /* synthetic */ a c(int i11) {
        return new a(i11);
    }

    public static int d(int i11) {
        return i11;
    }

    public static boolean e(int i11, Object obj) {
        return (obj instanceof a) && i11 == ((a) obj).i();
    }

    public static final boolean f(int i11, int i12) {
        return i11 == i12;
    }

    public static int g(int i11) {
        return i11;
    }

    public static String h(int i11) {
        if (f(i11, f16968c)) {
            return "Touch";
        }
        return f(i11, f16969d) ? "Keyboard" : "Error";
    }

    public boolean equals(Object obj) {
        return e(this.f16970a, obj);
    }

    public int hashCode() {
        return g(this.f16970a);
    }

    public final /* synthetic */ int i() {
        return this.f16970a;
    }

    public String toString() {
        return h(this.f16970a);
    }
}
