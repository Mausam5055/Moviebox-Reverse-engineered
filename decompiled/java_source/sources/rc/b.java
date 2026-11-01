package rc;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74303a;

    public b(a aVar) {
        this.f74303a = aVar;
    }

    public static b a(a aVar) {
        return new b(aVar);
    }

    public static com.google.firebase.perf.config.a c(a aVar) {
        return (com.google.firebase.perf.config.a) hz.b.c(aVar.a());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.google.firebase.perf.config.a get() {
        return c(this.f74303a);
    }
}
