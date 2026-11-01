package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public final class o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2 f67904a = new o2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal f67905b = kotlinx.coroutines.internal.j0.a(new kotlinx.coroutines.internal.z("ThreadLocalEventLoop"));

    private o2() {
    }

    public final e1 a() {
        return (e1) f67905b.get();
    }

    public final e1 b() {
        ThreadLocal threadLocal = f67905b;
        e1 e1Var = (e1) threadLocal.get();
        if (e1Var != null) {
            return e1Var;
        }
        e1 e1VarA = g1.a();
        threadLocal.set(e1VarA);
        return e1VarA;
    }

    public final void c() {
        f67905b.set(null);
    }

    public final void d(e1 e1Var) {
        f67905b.set(e1Var);
    }
}
