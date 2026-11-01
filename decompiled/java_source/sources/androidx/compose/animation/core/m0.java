package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2465a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f2468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f2469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f2470f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f2466b = Math.sqrt(50.0d);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f2471g = 1.0f;

    public m0(float f11) {
        this.f2465a = f11;
    }

    private final void c() {
        if (this.f2467c) {
            return;
        }
        if (this.f2465a == n0.b()) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        float f11 = this.f2471g;
        double d11 = ((double) f11) * ((double) f11);
        if (f11 > 1.0f) {
            double d12 = this.f2466b;
            double d13 = d11 - ((double) 1);
            this.f2468d = (((double) (-f11)) * d12) + (d12 * Math.sqrt(d13));
            double d14 = -this.f2471g;
            double d15 = this.f2466b;
            this.f2469e = (d14 * d15) - (d15 * Math.sqrt(d13));
        } else if (f11 >= 0.0f && f11 < 1.0f) {
            this.f2470f = this.f2466b * Math.sqrt(((double) 1) - d11);
        }
        this.f2467c = true;
    }

    public final float a() {
        return this.f2471g;
    }

    public final float b() {
        double d11 = this.f2466b;
        return (float) (d11 * d11);
    }

    public final void d(float f11) {
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f2471g = f11;
        this.f2467c = false;
    }

    public final void e(float f11) {
        this.f2465a = f11;
    }

    public final void f(float f11) {
        if (b() <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f2466b = Math.sqrt(f11);
        this.f2467c = false;
    }

    public final long g(float f11, float f12, long j11) {
        double dCos;
        double dExp;
        c();
        float f13 = f11 - this.f2465a;
        double d11 = j11 / 1000.0d;
        float f14 = this.f2471g;
        if (f14 > 1.0f) {
            double d12 = f13;
            double d13 = this.f2469e;
            double d14 = f12;
            double d15 = this.f2468d;
            double d16 = d12 - (((d13 * d12) - d14) / (d13 - d15));
            double d17 = ((d12 * d13) - d14) / (d13 - d15);
            dExp = (Math.exp(d13 * d11) * d16) + (Math.exp(this.f2468d * d11) * d17);
            double d18 = this.f2469e;
            double dExp2 = d16 * d18 * Math.exp(d18 * d11);
            double d19 = this.f2468d;
            dCos = dExp2 + (d17 * d19 * Math.exp(d19 * d11));
        } else if (f14 == 1.0f) {
            double d20 = this.f2466b;
            double d21 = f13;
            double d22 = ((double) f12) + (d20 * d21);
            double d23 = d21 + (d22 * d11);
            double dExp3 = Math.exp((-d20) * d11) * d23;
            double dExp4 = d23 * Math.exp((-this.f2466b) * d11);
            double d24 = this.f2466b;
            dCos = (dExp4 * (-d24)) + (d22 * Math.exp((-d24) * d11));
            dExp = dExp3;
        } else {
            double d25 = ((double) 1) / this.f2470f;
            double d26 = this.f2466b;
            double d27 = f13;
            double d28 = d25 * ((((double) f14) * d26 * d27) + ((double) f12));
            double dExp5 = Math.exp(((double) (-f14)) * d26 * d11) * ((Math.cos(this.f2470f * d11) * d27) + (Math.sin(this.f2470f * d11) * d28));
            double d29 = this.f2466b;
            float f15 = this.f2471g;
            double d30 = (-d29) * dExp5 * ((double) f15);
            double dExp6 = Math.exp(((double) (-f15)) * d29 * d11);
            double d31 = this.f2470f;
            double dSin = (-d31) * d27 * Math.sin(d31 * d11);
            double d32 = this.f2470f;
            dCos = d30 + (dExp6 * (dSin + (d28 * d32 * Math.cos(d32 * d11))));
            dExp = dExp5;
        }
        return n0.a((float) (dExp + ((double) this.f2465a)), (float) dCos);
    }
}
