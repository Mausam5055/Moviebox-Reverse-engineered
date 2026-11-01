package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6362a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6363b = d(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6364c = d(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6365d = d(Integer.MIN_VALUE);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return d.f6364c;
        }

        public final int b() {
            return d.f6363b;
        }

        public final int c() {
            return d.f6365d;
        }
    }

    private static int d(int i11) {
        return i11;
    }

    public static final boolean e(int i11, int i12) {
        return i11 == i12;
    }

    public static int f(int i11) {
        return i11;
    }

    public static String g(int i11) {
        if (e(i11, f6363b)) {
            return "Hyphens.None";
        }
        if (e(i11, f6364c)) {
            return "Hyphens.Auto";
        }
        return e(i11, f6365d) ? "Hyphens.Unspecified" : "Invalid";
    }
}
