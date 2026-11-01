package lr;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0832b f69021e = new C0832b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final b f69022f = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f69023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f69024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f69025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f69026d;

    public static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f69029c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f69027a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f69028b = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f69030d = new c();

        public final b a() {
            return new b(this, null);
        }

        public final boolean b() {
            return this.f69029c;
        }

        public final boolean c() {
            return this.f69027a;
        }

        public final boolean d() {
            return this.f69028b;
        }

        public final d e() {
            return this.f69030d;
        }
    }

    /* JADX INFO: renamed from: lr.b$b, reason: collision with other inner class name */
    public static final class C0832b {
        private C0832b() {
        }

        public /* synthetic */ C0832b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return b.f69022f;
        }
    }

    public static final class c implements d {
        @Override // lr.b.d
        public boolean a() {
            return d.a.c(this);
        }

        @Override // lr.b.d
        public boolean b() {
            return d.a.d(this);
        }

        @Override // lr.b.d
        public boolean c() {
            return d.a.b(this);
        }

        @Override // lr.b.d
        public int d() {
            return d.a.a(this);
        }
    }

    public interface d {

        public static final class a {
            public static int a(d dVar) {
                return 40;
            }

            public static boolean b(d dVar) {
                return false;
            }

            public static boolean c(d dVar) {
                return false;
            }

            public static boolean d(d dVar) {
                return false;
            }
        }

        boolean a();

        boolean b();

        boolean c();

        int d();
    }

    private b(a aVar) {
        this.f69023a = aVar.c();
        this.f69024b = aVar.d();
        this.f69025c = aVar.b();
        this.f69026d = aVar.e();
    }

    public /* synthetic */ b(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final boolean b() {
        return this.f69025c;
    }

    public final boolean c() {
        return this.f69023a;
    }

    public final d d() {
        return this.f69026d;
    }
}
