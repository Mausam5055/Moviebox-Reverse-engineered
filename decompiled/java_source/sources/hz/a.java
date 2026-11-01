package hz;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements uz.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f64846c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile uz.a f64847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f64848b = f64846c;

    private a(uz.a aVar) {
        this.f64847a = aVar;
    }

    public static uz.a a(uz.a aVar) {
        b.b(aVar);
        return aVar instanceof a ? aVar : new a(aVar);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj == f64846c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // uz.a
    public Object get() {
        Object obj = this.f64848b;
        Object obj2 = f64846c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f64848b;
                    if (obj == obj2) {
                        obj = this.f64847a.get();
                        this.f64848b = b(this.f64848b, obj);
                        this.f64847a = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
