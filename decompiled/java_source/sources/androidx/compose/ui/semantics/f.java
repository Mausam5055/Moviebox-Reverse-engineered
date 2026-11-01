package androidx.compose.ui.semantics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5964b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f5965c = i(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f5966d = i(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f5967e = i(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f5968f = i(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f5969g = i(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f5970h = i(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f5971i = i(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5972a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return f.f5965c;
        }

        public final int b() {
            return f.f5966d;
        }

        public final int c() {
            return f.f5971i;
        }

        public final int d() {
            return f.f5970h;
        }

        public final int e() {
            return f.f5968f;
        }

        public final int f() {
            return f.f5967e;
        }

        public final int g() {
            return f.f5969g;
        }
    }

    private /* synthetic */ f(int i11) {
        this.f5972a = i11;
    }

    public static final /* synthetic */ f h(int i11) {
        return new f(i11);
    }

    private static int i(int i11) {
        return i11;
    }

    public static boolean j(int i11, Object obj) {
        return (obj instanceof f) && i11 == ((f) obj).n();
    }

    public static final boolean k(int i11, int i12) {
        return i11 == i12;
    }

    public static int l(int i11) {
        return i11;
    }

    public static String m(int i11) {
        if (k(i11, f5965c)) {
            return "Button";
        }
        if (k(i11, f5966d)) {
            return "Checkbox";
        }
        if (k(i11, f5967e)) {
            return "Switch";
        }
        if (k(i11, f5968f)) {
            return "RadioButton";
        }
        if (k(i11, f5969g)) {
            return "Tab";
        }
        if (k(i11, f5970h)) {
            return "Image";
        }
        return k(i11, f5971i) ? "DropdownList" : "Unknown";
    }

    public boolean equals(Object obj) {
        return j(this.f5972a, obj);
    }

    public int hashCode() {
        return l(this.f5972a);
    }

    public final /* synthetic */ int n() {
        return this.f5972a;
    }

    public String toString() {
        return m(this.f5972a);
    }
}
