package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6260a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6261b = e(-1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6262c = e(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6263d = e(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f6264e = e(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f6265f = e(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return t.f6263d;
        }

        public final int b() {
            return t.f6262c;
        }

        public final int c() {
            return t.f6265f;
        }

        public final int d() {
            return t.f6264e;
        }
    }

    private static int e(int i11) {
        return i11;
    }

    public static final boolean f(int i11, int i12) {
        return i11 == i12;
    }

    public static int g(int i11) {
        return i11;
    }

    public static String h(int i11) {
        if (f(i11, f6261b)) {
            return "Unspecified";
        }
        if (f(i11, f6262c)) {
            return "None";
        }
        if (f(i11, f6263d)) {
            return "Characters";
        }
        if (f(i11, f6264e)) {
            return "Words";
        }
        return f(i11, f6265f) ? "Sentences" : "Invalid";
    }
}
