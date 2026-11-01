package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public abstract class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f67908a = kotlinx.coroutines.internal.a0.f("kotlinx.coroutines.main.delay", false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final t0 f67909b = b();

    public static final t0 a() {
        return f67909b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final t0 b() {
        if (!f67908a) {
            return DefaultExecutor.INSTANCE;
        }
        a2 a2VarC = y0.c();
        return (kotlinx.coroutines.internal.p.c(a2VarC) || !(a2VarC instanceof t0)) ? DefaultExecutor.INSTANCE : (t0) a2VarC;
    }
}
