package rc;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74305a;

    public d(a aVar) {
        this.f74305a = aVar;
    }

    public static d a(a aVar) {
        return new d(aVar);
    }

    public static jc.e c(a aVar) {
        return (jc.e) hz.b.c(aVar.c());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public jc.e get() {
        return c(this.f74305a);
    }
}
