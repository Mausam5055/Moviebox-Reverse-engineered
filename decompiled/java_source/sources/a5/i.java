package a5;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f242a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal f243b = new ThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Character f244c = ',';

    final char a(o0 o0Var, Object obj, char c11) {
        ThreadLocal threadLocal = f242a;
        o0 o0Var2 = (o0) threadLocal.get();
        threadLocal.set(o0Var);
        ThreadLocal threadLocal2 = f243b;
        threadLocal2.set(Character.valueOf(c11));
        b(obj);
        threadLocal.set(o0Var2);
        return ((Character) threadLocal2.get()).charValue();
    }

    public abstract void b(Object obj);
}
