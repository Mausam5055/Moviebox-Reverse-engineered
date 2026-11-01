package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class d5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4430a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4431b = d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4432c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4433d = d(2);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return d5.f4433d;
        }

        public final int b() {
            return d5.f4431b;
        }

        public final int c() {
            return d5.f4432c;
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
        if (e(i11, f4431b)) {
            return "Miter";
        }
        if (e(i11, f4432c)) {
            return "Round";
        }
        return e(i11, f4433d) ? "Bevel" : "Unknown";
    }
}
