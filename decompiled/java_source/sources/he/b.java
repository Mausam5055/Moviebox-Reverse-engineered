package he;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f64424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f64425b;

    public b() {
        d dVar = new d();
        this.f64424a = dVar;
        this.f64425b = new c(dVar);
    }

    public a a() {
        return this.f64425b;
    }

    public a b() {
        return this.f64424a;
    }
}
