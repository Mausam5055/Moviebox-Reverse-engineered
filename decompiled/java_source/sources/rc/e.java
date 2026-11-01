package rc;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements uz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f74306a;

    public e(a aVar) {
        this.f74306a = aVar;
    }

    public static e a(a aVar) {
        return new e(aVar);
    }

    public static ic.b c(a aVar) {
        return (ic.b) hz.b.c(aVar.d());
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ic.b get() {
        return c(this.f74306a);
    }
}
