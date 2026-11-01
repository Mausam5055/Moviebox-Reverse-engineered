package rc;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74309a;

    public h(a aVar) {
        this.f74309a = aVar;
    }

    public static h a(a aVar) {
        return new h(aVar);
    }

    public static ic.b c(a aVar) {
        return (ic.b) hz.b.c(aVar.g());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ic.b get() {
        return c(this.f74309a);
    }
}
