package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class c5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4318a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4319b = d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4320c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4321d = d(2);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return c5.f4319b;
        }

        public final int b() {
            return c5.f4320c;
        }

        public final int c() {
            return c5.f4321d;
        }
    }

    public static int d(int i11) {
        return i11;
    }

    public static final boolean e(int i11, int i12) {
        return i11 == i12;
    }

    public static int f(int i11) {
        return i11;
    }

    public static String g(int i11) {
        if (e(i11, f4319b)) {
            return "Butt";
        }
        if (e(i11, f4320c)) {
            return "Round";
        }
        return e(i11, f4321d) ? "Square" : "Unknown";
    }
}
