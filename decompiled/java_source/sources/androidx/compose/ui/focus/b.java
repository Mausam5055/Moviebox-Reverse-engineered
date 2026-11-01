package androidx.compose.ui.focus;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4237b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4238c = j(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4239d = j(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4240e = j(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f4241f = j(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f4242g = j(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f4243h = j(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f4244i = j(7);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f4245j = j(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4246a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return b.f4243h;
        }

        public final int b() {
            return b.f4244i;
        }

        public final int c() {
            return b.f4245j;
        }

        public final int d() {
            return b.f4240e;
        }

        public final int e() {
            return b.f4238c;
        }

        public final int f() {
            return b.f4239d;
        }

        public final int g() {
            return b.f4241f;
        }

        public final int h() {
            return b.f4242g;
        }
    }

    private /* synthetic */ b(int i11) {
        this.f4246a = i11;
    }

    public static final /* synthetic */ b i(int i11) {
        return new b(i11);
    }

    public static int j(int i11) {
        return i11;
    }

    public static boolean k(int i11, Object obj) {
        return (obj instanceof b) && i11 == ((b) obj).o();
    }

    public static final boolean l(int i11, int i12) {
        return i11 == i12;
    }

    public static int m(int i11) {
        return i11;
    }

    public static String n(int i11) {
        if (l(i11, f4238c)) {
            return "Next";
        }
        if (l(i11, f4239d)) {
            return "Previous";
        }
        if (l(i11, f4240e)) {
            return "Left";
        }
        if (l(i11, f4241f)) {
            return "Right";
        }
        if (l(i11, f4242g)) {
            return "Up";
        }
        if (l(i11, f4243h)) {
            return "Down";
        }
        if (l(i11, f4244i)) {
            return "Enter";
        }
        return l(i11, f4245j) ? "Exit" : "Invalid FocusDirection";
    }

    public boolean equals(Object obj) {
        return k(this.f4246a, obj);
    }

    public int hashCode() {
        return m(this.f4246a);
    }

    public final /* synthetic */ int o() {
        return this.f4246a;
    }

    public String toString() {
        return n(this.f4246a);
    }
}
