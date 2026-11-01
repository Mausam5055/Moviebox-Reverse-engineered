package rc;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74304a;

    public c(a aVar) {
        this.f74304a = aVar;
    }

    public static c a(a aVar) {
        return new c(aVar);
    }

    public static com.google.firebase.f c(a aVar) {
        return (com.google.firebase.f) hz.b.c(aVar.b());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.google.firebase.f get() {
        return c(this.f74304a);
    }
}
