package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6092b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6093c = e(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6094d = e(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6095e = e(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6096a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f6095e;
        }

        public final int b() {
            return e.f6093c;
        }

        public final int c() {
            return e.f6094d;
        }
    }

    private /* synthetic */ e(int i11) {
        this.f6096a = i11;
    }

    public static final /* synthetic */ e d(int i11) {
        return new e(i11);
    }

    private static int e(int i11) {
        return i11;
    }

    public static boolean f(int i11, Object obj) {
        return (obj instanceof e) && i11 == ((e) obj).j();
    }

    public static final boolean g(int i11, int i12) {
        return i11 == i12;
    }

    public static int h(int i11) {
        return i11;
    }

    public static String i(int i11) {
        if (i11 == f6093c) {
            return "EmojiSupportMatch.Default";
        }
        if (i11 == f6094d) {
            return "EmojiSupportMatch.None";
        }
        if (i11 == f6095e) {
            return "EmojiSupportMatch.All";
        }
        return "Invalid(value=" + i11 + ')';
    }

    public boolean equals(Object obj) {
        return f(this.f6096a, obj);
    }

    public int hashCode() {
        return h(this.f6096a);
    }

    public final /* synthetic */ int j() {
        return this.f6096a;
    }

    public String toString() {
        return i(this.f6096a);
    }
}
