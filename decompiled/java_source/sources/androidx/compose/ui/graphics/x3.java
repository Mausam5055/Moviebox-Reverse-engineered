package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class x3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4879a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4880b = c(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4881c = c(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4882d = c(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4883e = c(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return x3.f4881c;
        }

        public final int b() {
            return x3.f4880b;
        }
    }

    public static int c(int i11) {
        return i11;
    }

    public static final boolean d(int i11, int i12) {
        return i11 == i12;
    }

    public static int e(int i11) {
        return i11;
    }

    public static String f(int i11) {
        if (d(i11, f4880b)) {
            return "None";
        }
        if (d(i11, f4881c)) {
            return "Low";
        }
        if (d(i11, f4882d)) {
            return "Medium";
        }
        return d(i11, f4883e) ? "High" : "Unknown";
    }
}
