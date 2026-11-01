package androidx.compose.ui.input.nestedscroll;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4939a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f4943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f4944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f4945g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f4941c;
        }

        public final int b() {
            return e.f4940b;
        }
    }

    static {
        int iC = c(1);
        f4940b = iC;
        int iC2 = c(2);
        f4941c = iC2;
        f4942d = iC;
        f4943e = iC2;
        f4944f = c(3);
        f4945g = iC;
    }

    public static int c(int i11) {
        return i11;
    }

    public static final boolean d(int i11, int i12) {
        return i11 == i12;
    }
}
