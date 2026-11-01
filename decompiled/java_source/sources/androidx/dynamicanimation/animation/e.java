package androidx.dynamicanimation.animation;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    double f9022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    double f9023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f9025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f9026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f9027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f9028g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f9029h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private double f9030i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b.o f9031j;

    public e() {
        this.f9022a = Math.sqrt(1500.0d);
        this.f9023b = 0.5d;
        this.f9024c = false;
        this.f9030i = Double.MAX_VALUE;
        this.f9031j = new b.o();
    }

    public e(float f11) {
        this.f9022a = Math.sqrt(1500.0d);
        this.f9023b = 0.5d;
        this.f9024c = false;
        this.f9030i = Double.MAX_VALUE;
        this.f9031j = new b.o();
        this.f9030i = f11;
    }

    private void b() {
        if (this.f9024c) {
            return;
        }
        if (this.f9030i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d11 = this.f9023b;
        if (d11 > 1.0d) {
            double d12 = this.f9022a;
            this.f9027f = ((-d11) * d12) + (d12 * Math.sqrt((d11 * d11) - 1.0d));
            double d13 = this.f9023b;
            double d14 = this.f9022a;
            this.f9028g = ((-d13) * d14) - (d14 * Math.sqrt((d13 * d13) - 1.0d));
        } else if (d11 >= 0.0d && d11 < 1.0d) {
            this.f9029h = this.f9022a * Math.sqrt(1.0d - (d11 * d11));
        }
        this.f9024c = true;
    }

    public float a() {
        return (float) this.f9030i;
    }

    public boolean c(float f11, float f12) {
        return ((double) Math.abs(f12)) < this.f9026e && ((double) Math.abs(f11 - a())) < this.f9025d;
    }

    public e d(float f11) {
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f9023b = f11;
        this.f9024c = false;
        return this;
    }

    public e e(float f11) {
        this.f9030i = f11;
        return this;
    }

    public e f(float f11) {
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f9022a = Math.sqrt(f11);
        this.f9024c = false;
        return this;
    }

    void g(double d11) {
        double dAbs = Math.abs(d11);
        this.f9025d = dAbs;
        this.f9026e = dAbs * 62.5d;
    }

    b.o h(double d11, double d12, long j11) {
        double dCos;
        double dPow;
        b();
        double d13 = j11 / 1000.0d;
        double d14 = d11 - this.f9030i;
        double d15 = this.f9023b;
        if (d15 > 1.0d) {
            double d16 = this.f9028g;
            double d17 = this.f9027f;
            double d18 = d14 - (((d16 * d14) - d12) / (d16 - d17));
            double d19 = ((d14 * d16) - d12) / (d16 - d17);
            dPow = (Math.pow(2.718281828459045d, d16 * d13) * d18) + (Math.pow(2.718281828459045d, this.f9027f * d13) * d19);
            double d20 = this.f9028g;
            double dPow2 = d18 * d20 * Math.pow(2.718281828459045d, d20 * d13);
            double d21 = this.f9027f;
            dCos = dPow2 + (d19 * d21 * Math.pow(2.718281828459045d, d21 * d13));
        } else if (d15 == 1.0d) {
            double d22 = this.f9022a;
            double d23 = d12 + (d22 * d14);
            double d24 = d14 + (d23 * d13);
            dPow = Math.pow(2.718281828459045d, (-d22) * d13) * d24;
            double dPow3 = d24 * Math.pow(2.718281828459045d, (-this.f9022a) * d13);
            double d25 = this.f9022a;
            dCos = (d23 * Math.pow(2.718281828459045d, (-d25) * d13)) + (dPow3 * (-d25));
        } else {
            double d26 = 1.0d / this.f9029h;
            double d27 = this.f9022a;
            double d28 = d26 * ((d15 * d27 * d14) + d12);
            double dPow4 = Math.pow(2.718281828459045d, (-d15) * d27 * d13) * ((Math.cos(this.f9029h * d13) * d14) + (Math.sin(this.f9029h * d13) * d28));
            double d29 = this.f9022a;
            double d30 = this.f9023b;
            double d31 = (-d29) * dPow4 * d30;
            double dPow5 = Math.pow(2.718281828459045d, (-d30) * d29 * d13);
            double d32 = this.f9029h;
            double dSin = (-d32) * d14 * Math.sin(d32 * d13);
            double d33 = this.f9029h;
            dCos = d31 + (dPow5 * (dSin + (d28 * d33 * Math.cos(d33 * d13))));
            dPow = dPow4;
        }
        b.o oVar = this.f9031j;
        oVar.f9019a = (float) (dPow + this.f9030i);
        oVar.f9020b = (float) dCos;
        return oVar;
    }
}
