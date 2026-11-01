package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class w3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4874a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4875b = d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4876c = d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4877d = d(2);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return w3.f4875b;
        }

        public final int b() {
            return w3.f4877d;
        }

        public final int c() {
            return w3.f4876c;
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
        return "CompositingStrategy(value=" + i11 + ')';
    }
}
