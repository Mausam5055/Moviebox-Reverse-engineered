package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6266a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6267b = j(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6268c = j(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6269d = j(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6270e = j(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6271f = j(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f6272g = j(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f6273h = j(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f6274i = j(7);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f6275j = j(8);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f6276k = j(9);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return u.f6269d;
        }

        public final int b() {
            return u.f6276k;
        }

        public final int c() {
            return u.f6273h;
        }

        public final int d() {
            return u.f6270e;
        }

        public final int e() {
            return u.f6275j;
        }

        public final int f() {
            return u.f6274i;
        }

        public final int g() {
            return u.f6271f;
        }

        public final int h() {
            return u.f6268c;
        }

        public final int i() {
            return u.f6272g;
        }
    }

    private static int j(int i11) {
        return i11;
    }

    public static final boolean k(int i11, int i12) {
        return i11 == i12;
    }

    public static int l(int i11) {
        return i11;
    }

    public static String m(int i11) {
        if (k(i11, f6267b)) {
            return "Unspecified";
        }
        if (k(i11, f6268c)) {
            return "Text";
        }
        if (k(i11, f6269d)) {
            return "Ascii";
        }
        if (k(i11, f6270e)) {
            return "Number";
        }
        if (k(i11, f6271f)) {
            return "Phone";
        }
        if (k(i11, f6272g)) {
            return "Uri";
        }
        if (k(i11, f6273h)) {
            return "Email";
        }
        if (k(i11, f6274i)) {
            return "Password";
        }
        if (k(i11, f6275j)) {
            return "NumberPassword";
        }
        return k(i11, f6276k) ? "Decimal" : "Invalid";
    }
}
