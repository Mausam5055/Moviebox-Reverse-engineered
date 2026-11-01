package v;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f76956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f76957b;

    /* JADX WARN: Illegal instructions before constructor call */
    public a() {
        w.c cVar = w.c.f77487a;
        this(cVar, cVar);
    }

    public a(Object obj) {
        this(obj, w.c.f77487a);
    }

    public a(Object obj, Object obj2) {
        this.f76956a = obj;
        this.f76957b = obj2;
    }

    public final boolean a() {
        return this.f76957b != w.c.f77487a;
    }

    public final boolean b() {
        return this.f76956a != w.c.f77487a;
    }

    public final Object c() {
        return this.f76957b;
    }

    public final Object d() {
        return this.f76956a;
    }

    public final a e(Object obj) {
        return new a(this.f76956a, obj);
    }

    public final a f(Object obj) {
        return new a(obj, this.f76957b);
    }
}
