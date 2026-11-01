package androidx.compose.ui.layout;

/* JADX INFO: loaded from: classes.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5176a = a.f5177a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f5177a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final e f5178b = new C0051a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final e f5179c = new C0052e();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final e f5180d = new c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final e f5181e = new d();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final e f5182f = new f();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final g f5183g = new g(1.0f);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final e f5184h = new b();

        /* JADX INFO: renamed from: androidx.compose.ui.layout.e$a$a, reason: collision with other inner class name */
        public static final class C0051a implements e {
            C0051a() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                float f11 = androidx.compose.ui.layout.f.f(j11, j12);
                return m0.a(f11, f11);
            }
        }

        public static final class b implements e {
            b() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                return m0.a(androidx.compose.ui.layout.f.h(j11, j12), androidx.compose.ui.layout.f.e(j11, j12));
            }
        }

        public static final class c implements e {
            c() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                float fE = androidx.compose.ui.layout.f.e(j11, j12);
                return m0.a(fE, fE);
            }
        }

        public static final class d implements e {
            d() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                float fH = androidx.compose.ui.layout.f.h(j11, j12);
                return m0.a(fH, fH);
            }
        }

        /* JADX INFO: renamed from: androidx.compose.ui.layout.e$a$e, reason: collision with other inner class name */
        public static final class C0052e implements e {
            C0052e() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                float fG = androidx.compose.ui.layout.f.g(j11, j12);
                return m0.a(fG, fG);
            }
        }

        public static final class f implements e {
            f() {
            }

            @Override // androidx.compose.ui.layout.e
            public long a(long j11, long j12) {
                if (y.m.i(j11) <= y.m.i(j12) && y.m.g(j11) <= y.m.g(j12)) {
                    return m0.a(1.0f, 1.0f);
                }
                float fG = androidx.compose.ui.layout.f.g(j11, j12);
                return m0.a(fG, fG);
            }
        }

        private a() {
        }

        public final e a() {
            return f5179c;
        }

        public final e b() {
            return f5182f;
        }
    }

    long a(long j11, long j12);
}
