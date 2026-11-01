package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4998a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4999b = f(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f5000c = f(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f5001d = f(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f5002e = f(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f5003f = f(4);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return h0.f5003f;
        }

        public final int b() {
            return h0.f5001d;
        }

        public final int c() {
            return h0.f5002e;
        }

        public final int d() {
            return h0.f5000c;
        }

        public final int e() {
            return h0.f4999b;
        }
    }

    private static int f(int i11) {
        return i11;
    }

    public static final boolean g(int i11, int i12) {
        return i11 == i12;
    }

    public static int h(int i11) {
        return i11;
    }

    public static String i(int i11) {
        if (i11 == 1) {
            return "Touch";
        }
        if (i11 == 2) {
            return "Mouse";
        }
        if (i11 != 3) {
            return i11 != 4 ? "Unknown" : "Eraser";
        }
        return "Stylus";
    }
}
