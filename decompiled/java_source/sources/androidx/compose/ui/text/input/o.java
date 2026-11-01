package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6240b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6241c = j(-1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6242d = j(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6243e = j(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6244f = j(2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f6245g = j(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f6246h = j(4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f6247i = j(5);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f6248j = j(6);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f6249k = j(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6250a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return o.f6242d;
        }

        public final int b() {
            return o.f6249k;
        }

        public final int c() {
            return o.f6244f;
        }

        public final int d() {
            return o.f6248j;
        }

        public final int e() {
            return o.f6243e;
        }

        public final int f() {
            return o.f6247i;
        }

        public final int g() {
            return o.f6245g;
        }

        public final int h() {
            return o.f6246h;
        }
    }

    private /* synthetic */ o(int i11) {
        this.f6250a = i11;
    }

    public static final /* synthetic */ o i(int i11) {
        return new o(i11);
    }

    private static int j(int i11) {
        return i11;
    }

    public static boolean k(int i11, Object obj) {
        return (obj instanceof o) && i11 == ((o) obj).o();
    }

    public static final boolean l(int i11, int i12) {
        return i11 == i12;
    }

    public static int m(int i11) {
        return i11;
    }

    public static String n(int i11) {
        if (l(i11, f6241c)) {
            return "Unspecified";
        }
        if (l(i11, f6243e)) {
            return "None";
        }
        if (l(i11, f6242d)) {
            return "Default";
        }
        if (l(i11, f6244f)) {
            return "Go";
        }
        if (l(i11, f6245g)) {
            return "Search";
        }
        if (l(i11, f6246h)) {
            return "Send";
        }
        if (l(i11, f6247i)) {
            return "Previous";
        }
        if (l(i11, f6248j)) {
            return "Next";
        }
        return l(i11, f6249k) ? "Done" : "Invalid";
    }

    public boolean equals(Object obj) {
        return k(this.f6250a, obj);
    }

    public int hashCode() {
        return m(this.f6250a);
    }

    public final /* synthetic */ int o() {
        return this.f6250a;
    }

    public String toString() {
        return n(this.f6250a);
    }
}
