package q7;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f73169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static a f73170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static e8.c f73171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static boolean f73172d;

    static void a() {
        if (!f73172d) {
            throw new IllegalStateException("Do you forget to initialize XLog?");
        }
    }

    public static void b(String str) {
        a();
        f73169a.a(str);
    }

    public static void c(String str) {
        a();
        f73169a.c(str);
    }

    public static void d(String str) {
        a();
        f73169a.e(str);
    }

    public static void e(a aVar) {
        f(aVar, b8.a.i());
    }

    public static void f(a aVar, e8.c... cVarArr) {
        if (f73172d) {
            b8.b.e().g("XLog is already initialized, do not initialize again");
        }
        f73172d = true;
        if (aVar == null) {
            throw new IllegalArgumentException("Please specify a LogConfiguration");
        }
        f73170b = aVar;
        e8.d dVar = new e8.d(cVarArr);
        f73171c = dVar;
        f73169a = new d(f73170b, dVar);
    }

    public static d.a g(String str) {
        return new d.a().x(str);
    }
}
