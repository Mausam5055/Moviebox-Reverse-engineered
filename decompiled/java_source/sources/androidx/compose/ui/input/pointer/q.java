package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5023a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f5024b = h(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f5025c = h(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f5026d = h(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f5027e = h(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f5028f = h(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f5029g = h(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f5030h = h(6);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return q.f5028f;
        }

        public final int b() {
            return q.f5029g;
        }

        public final int c() {
            return q.f5027e;
        }

        public final int d() {
            return q.f5025c;
        }

        public final int e() {
            return q.f5026d;
        }

        public final int f() {
            return q.f5030h;
        }

        public final int g() {
            return q.f5024b;
        }
    }

    private static int h(int i11) {
        return i11;
    }

    public static final boolean i(int i11, int i12) {
        return i11 == i12;
    }
}
