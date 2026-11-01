package ab;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f523b;

    public k(g gVar, float f11) {
        this.f522a = gVar;
        this.f523b = f11;
    }

    @Override // ab.g
    boolean a() {
        return this.f522a.a();
    }

    @Override // ab.g
    public void b(float f11, float f12, float f13, p pVar) {
        this.f522a.b(f11, f12 - this.f523b, f13, pVar);
    }
}
