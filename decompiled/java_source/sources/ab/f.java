package ab;

/* JADX INFO: loaded from: classes4.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f470a = -1.0f;

    @Override // ab.e
    public void b(p pVar, float f11, float f12, float f13) {
        pVar.o(0.0f, f13 * f12, 180.0f, 180.0f - f11);
        double d11 = f13;
        double d12 = f12;
        pVar.m((float) (Math.sin(Math.toRadians(f11)) * d11 * d12), (float) (Math.sin(Math.toRadians(90.0f - f11)) * d11 * d12));
    }
}
