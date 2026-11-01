package u8;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements uz.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f76684c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile uz.a f76685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f76686b = f76684c;

    private a(uz.a aVar) {
        this.f76685a = aVar;
    }

    public static uz.a a(uz.a aVar) {
        d.b(aVar);
        return aVar instanceof a ? aVar : new a(aVar);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj == f76684c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // uz.a
    public Object get() {
        Object obj = this.f76686b;
        Object obj2 = f76684c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f76686b;
                    if (obj == obj2) {
                        obj = this.f76685a.get();
                        this.f76686b = b(this.f76686b, obj);
                        this.f76685a = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
