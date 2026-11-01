package ab;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f471a;

    public h(float f11) {
        this.f471a = f11 - 0.001f;
    }

    @Override // ab.g
    boolean a() {
        return true;
    }

    @Override // ab.g
    public void b(float f11, float f12, float f13, p pVar) {
        float fSqrt = (float) ((((double) this.f471a) * Math.sqrt(2.0d)) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.f471a, 2.0d) - Math.pow(fSqrt, 2.0d));
        pVar.n(f12 - fSqrt, ((float) (-((((double) this.f471a) * Math.sqrt(2.0d)) - ((double) this.f471a)))) + fSqrt2);
        pVar.m(f12, (float) (-((((double) this.f471a) * Math.sqrt(2.0d)) - ((double) this.f471a))));
        pVar.m(f12 + fSqrt, ((float) (-((((double) this.f471a) * Math.sqrt(2.0d)) - ((double) this.f471a)))) + fSqrt2);
    }
}
