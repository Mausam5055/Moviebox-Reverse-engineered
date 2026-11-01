package mb;

/* JADX INFO: loaded from: classes5.dex */
public class u implements ic.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f69497c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Object f69498a = f69497c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ic.b f69499b;

    public u(ic.b bVar) {
        this.f69499b = bVar;
    }

    @Override // ic.b
    public Object get() {
        Object obj = this.f69498a;
        Object obj2 = f69497c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f69498a;
                    if (obj == obj2) {
                        obj = this.f69499b.get();
                        this.f69498a = obj;
                        this.f69499b = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
