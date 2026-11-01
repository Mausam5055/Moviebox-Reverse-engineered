package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public interface d {

    public interface a {
        boolean a();
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f5168a = new a(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f5169b = g(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f5170c = g(2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f5171d = g(3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f5172e = g(4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f5173f = g(5);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final int f5174g = g(6);

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f5173f;
            }

            public final int b() {
                return b.f5170c;
            }

            public final int c() {
                return b.f5169b;
            }

            public final int d() {
                return b.f5174g;
            }

            public final int e() {
                return b.f5171d;
            }

            public final int f() {
                return b.f5172e;
            }
        }

        public static int g(int i11) {
            return i11;
        }

        public static final boolean h(int i11, int i12) {
            return i11 == i12;
        }
    }

    Object a(int i11, Function1 function1);
}
