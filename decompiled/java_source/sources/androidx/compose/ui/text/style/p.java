package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6442a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f6443b = d(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f6444c = d(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f6445d = d(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return p.f6443b;
        }

        public final int b() {
            return p.f6444c;
        }

        public final int c() {
            return p.f6445d;
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
        if (e(i11, f6443b)) {
            return "Clip";
        }
        if (e(i11, f6444c)) {
            return "Ellipsis";
        }
        return e(i11, f6445d) ? "Visible" : "Invalid";
    }
}
