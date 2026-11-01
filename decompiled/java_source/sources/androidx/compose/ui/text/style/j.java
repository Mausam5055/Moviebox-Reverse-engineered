package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6414b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6415c = h(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6416d = h(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6417e = h(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6418f = h(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f6419g = h(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f6420h = h(Integer.MIN_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6421a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return j.f6417e;
        }

        public final int b() {
            return j.f6418f;
        }

        public final int c() {
            return j.f6419g;
        }

        public final int d() {
            return j.f6415c;
        }

        public final int e() {
            return j.f6416d;
        }

        public final int f() {
            return j.f6420h;
        }
    }

    private /* synthetic */ j(int i11) {
        this.f6421a = i11;
    }

    public static final /* synthetic */ j g(int i11) {
        return new j(i11);
    }

    public static int h(int i11) {
        return i11;
    }

    public static boolean i(int i11, Object obj) {
        return (obj instanceof j) && i11 == ((j) obj).m();
    }

    public static final boolean j(int i11, int i12) {
        return i11 == i12;
    }

    public static int k(int i11) {
        return i11;
    }

    public static String l(int i11) {
        if (j(i11, f6415c)) {
            return "Ltr";
        }
        if (j(i11, f6416d)) {
            return "Rtl";
        }
        if (j(i11, f6417e)) {
            return "Content";
        }
        if (j(i11, f6418f)) {
            return "ContentOrLtr";
        }
        if (j(i11, f6419g)) {
            return "ContentOrRtl";
        }
        return j(i11, f6420h) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return i(this.f6421a, obj);
    }

    public int hashCode() {
        return k(this.f6421a);
    }

    public final /* synthetic */ int m() {
        return this.f6421a;
    }

    public String toString() {
        return l(this.f6421a);
    }
}
