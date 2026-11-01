package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6139b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6140c = d(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6141d = d(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6142a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return n.f6141d;
        }

        public final int b() {
            return n.f6140c;
        }
    }

    private /* synthetic */ n(int i11) {
        this.f6142a = i11;
    }

    public static final /* synthetic */ n c(int i11) {
        return new n(i11);
    }

    public static int d(int i11) {
        return i11;
    }

    public static boolean e(int i11, Object obj) {
        return (obj instanceof n) && i11 == ((n) obj).i();
    }

    public static final boolean f(int i11, int i12) {
        return i11 == i12;
    }

    public static int g(int i11) {
        return i11;
    }

    public static String h(int i11) {
        if (f(i11, f6140c)) {
            return "Normal";
        }
        return f(i11, f6141d) ? "Italic" : "Invalid";
    }

    public boolean equals(Object obj) {
        return e(this.f6142a, obj);
    }

    public int hashCode() {
        return g(this.f6142a);
    }

    public final /* synthetic */ int i() {
        return this.f6142a;
    }

    public String toString() {
        return h(this.f6142a);
    }
}
