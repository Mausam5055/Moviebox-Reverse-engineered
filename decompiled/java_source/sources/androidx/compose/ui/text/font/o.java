package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6143b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6144c = f(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6145d = f(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6146e = f(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6147f = f(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6148a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return o.f6145d;
        }

        public final int b() {
            return o.f6144c;
        }

        public final int c() {
            return o.f6147f;
        }

        public final int d() {
            return o.f6146e;
        }
    }

    private /* synthetic */ o(int i11) {
        this.f6148a = i11;
    }

    public static final /* synthetic */ o e(int i11) {
        return new o(i11);
    }

    public static int f(int i11) {
        return i11;
    }

    public static boolean g(int i11, Object obj) {
        return (obj instanceof o) && i11 == ((o) obj).k();
    }

    public static final boolean h(int i11, int i12) {
        return i11 == i12;
    }

    public static int i(int i11) {
        return i11;
    }

    public static String j(int i11) {
        if (h(i11, f6144c)) {
            return "None";
        }
        if (h(i11, f6145d)) {
            return "All";
        }
        if (h(i11, f6146e)) {
            return "Weight";
        }
        return h(i11, f6147f) ? "Style" : "Invalid";
    }

    public boolean equals(Object obj) {
        return g(this.f6148a, obj);
    }

    public int hashCode() {
        return i(this.f6148a);
    }

    public final /* synthetic */ int k() {
        return this.f6148a;
    }

    public String toString() {
        return j(this.f6148a);
    }
}
