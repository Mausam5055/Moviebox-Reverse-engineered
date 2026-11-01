package y0;

/* JADX INFO: loaded from: classes2.dex */
final class l {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final l f78541k = k(b.f78506c, (float) ((((double) b.h(50.0f)) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f78542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f78543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f78544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f78545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f78546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f78547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float[] f78548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f78549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f78550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f78551j;

    private l(float f11, float f12, float f13, float f14, float f15, float f16, float[] fArr, float f17, float f18, float f19) {
        this.f78547f = f11;
        this.f78542a = f12;
        this.f78543b = f13;
        this.f78544c = f14;
        this.f78545d = f15;
        this.f78546e = f16;
        this.f78548g = fArr;
        this.f78549h = f17;
        this.f78550i = f18;
        this.f78551j = f19;
    }

    static l k(float[] fArr, float f11, float f12, float f13, boolean z10) {
        float[][] fArr2 = b.f78504a;
        float f14 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f15 = fArr3[0] * f14;
        float f16 = fArr[1];
        float f17 = f15 + (fArr3[1] * f16);
        float f18 = fArr[2];
        float f19 = f17 + (fArr3[2] * f18);
        float[] fArr4 = fArr2[1];
        float f20 = (fArr4[0] * f14) + (fArr4[1] * f16) + (fArr4[2] * f18);
        float[] fArr5 = fArr2[2];
        float f21 = (f14 * fArr5[0]) + (f16 * fArr5[1]) + (f18 * fArr5[2]);
        float f22 = (f13 / 10.0f) + 0.8f;
        float fD = ((double) f22) >= 0.9d ? b.d(0.59f, 0.69f, (f22 - 0.9f) * 10.0f) : b.d(0.525f, 0.59f, (f22 - 0.8f) * 10.0f);
        float fExp = z10 ? 1.0f : (1.0f - (((float) Math.exp(((-f11) - 42.0f) / 92.0f)) * 0.2777778f)) * f22;
        double d11 = fExp;
        if (d11 > 1.0d) {
            fExp = 1.0f;
        } else if (d11 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f19) * fExp) + 1.0f) - fExp, (((100.0f / f20) * fExp) + 1.0f) - fExp, (((100.0f / f21) * fExp) + 1.0f) - fExp};
        float f23 = 1.0f / ((5.0f * f11) + 1.0f);
        float f24 = f23 * f23 * f23 * f23;
        float f25 = 1.0f - f24;
        float fCbrt = (f24 * f11) + (0.1f * f25 * f25 * ((float) Math.cbrt(((double) f11) * 5.0d)));
        float fH = b.h(f12) / fArr[1];
        double d12 = fH;
        float fSqrt = ((float) Math.sqrt(d12)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d12, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f19)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f20)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f21)) / 100.0d, 0.42d)};
        float f26 = fArr7[0];
        float f27 = (f26 * 400.0f) / (f26 + 27.13f);
        float f28 = fArr7[1];
        float f29 = (f28 * 400.0f) / (f28 + 27.13f);
        float f30 = fArr7[2];
        float[] fArr8 = {f27, f29, (400.0f * f30) / (f30 + 27.13f)};
        return new l(fH, ((fArr8[0] * 2.0f) + fArr8[1] + (fArr8[2] * 0.05f)) * fPow, fPow, fPow, fD, f22, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    float a() {
        return this.f78542a;
    }

    float b() {
        return this.f78545d;
    }

    float c() {
        return this.f78549h;
    }

    float d() {
        return this.f78550i;
    }

    float e() {
        return this.f78547f;
    }

    float f() {
        return this.f78543b;
    }

    float g() {
        return this.f78546e;
    }

    float h() {
        return this.f78544c;
    }

    float[] i() {
        return this.f78548g;
    }

    float j() {
        return this.f78551j;
    }
}
