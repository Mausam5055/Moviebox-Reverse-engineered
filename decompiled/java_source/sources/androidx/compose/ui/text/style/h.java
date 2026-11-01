package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6400b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6401c = i(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6402d = i(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6403e = i(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6404f = i(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f6405g = i(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f6406h = i(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f6407i = i(Integer.MIN_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6408a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return h.f6403e;
        }

        public final int b() {
            return h.f6406h;
        }

        public final int c() {
            return h.f6404f;
        }

        public final int d() {
            return h.f6401c;
        }

        public final int e() {
            return h.f6402d;
        }

        public final int f() {
            return h.f6405g;
        }

        public final int g() {
            return h.f6407i;
        }
    }

    private /* synthetic */ h(int i11) {
        this.f6408a = i11;
    }

    public static final /* synthetic */ h h(int i11) {
        return new h(i11);
    }

    public static int i(int i11) {
        return i11;
    }

    public static boolean j(int i11, Object obj) {
        return (obj instanceof h) && i11 == ((h) obj).n();
    }

    public static final boolean k(int i11, int i12) {
        return i11 == i12;
    }

    public static int l(int i11) {
        return i11;
    }

    public static String m(int i11) {
        if (k(i11, f6401c)) {
            return "Left";
        }
        if (k(i11, f6402d)) {
            return "Right";
        }
        if (k(i11, f6403e)) {
            return "Center";
        }
        if (k(i11, f6404f)) {
            return "Justify";
        }
        if (k(i11, f6405g)) {
            return "Start";
        }
        if (k(i11, f6406h)) {
            return "End";
        }
        return k(i11, f6407i) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return j(this.f6408a, obj);
    }

    public int hashCode() {
        return l(this.f6408a);
    }

    public final /* synthetic */ int n() {
        return this.f6408a;
    }

    public String toString() {
        return m(this.f6408a);
    }
}
