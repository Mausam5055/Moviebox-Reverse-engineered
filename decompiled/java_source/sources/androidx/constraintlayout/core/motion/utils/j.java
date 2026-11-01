package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class j implements l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f6804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f6805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f6806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f6807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f6808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f6809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f6810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f6811j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    double f6802a = 0.5d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6803b = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f6812k = 0;

    private void b(double d11) {
        double d12 = this.f6804c;
        double d13 = this.f6802a;
        int iSqrt = (int) ((9.0d / ((Math.sqrt(d12 / ((double) this.f6810i)) * d11) * 4.0d)) + 1.0d);
        double d14 = d11 / ((double) iSqrt);
        int i11 = 0;
        while (i11 < iSqrt) {
            float f11 = this.f6808g;
            double d15 = this.f6805d;
            float f12 = this.f6809h;
            double d16 = d12;
            double d17 = ((-d12) * (((double) f11) - d15)) - (((double) f12) * d13);
            float f13 = this.f6810i;
            double d18 = d13;
            double d19 = ((double) f12) + (((d17 / ((double) f13)) * d14) / 2.0d);
            double d20 = ((((-((((double) f11) + ((d14 * d19) / 2.0d)) - d15)) * d16) - (d19 * d18)) / ((double) f13)) * d14;
            float f14 = (float) (((double) f12) + d20);
            this.f6809h = f14;
            float f15 = (float) (((double) f11) + ((((double) f12) + (d20 / 2.0d)) * d14));
            this.f6808g = f15;
            int i12 = this.f6812k;
            if (i12 > 0) {
                if (f15 < 0.0f && (i12 & 1) == 1) {
                    this.f6808g = -f15;
                    this.f6809h = -f14;
                }
                float f16 = this.f6808g;
                if (f16 > 1.0f && (i12 & 2) == 2) {
                    this.f6808g = 2.0f - f16;
                    this.f6809h = -this.f6809h;
                }
            }
            i11++;
            d12 = d16;
            d13 = d18;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public float a() {
        return 0.0f;
    }

    public void c(float f11, float f12, float f13, float f14, float f15, float f16, float f17, int i11) {
        this.f6805d = f12;
        this.f6802a = f16;
        this.f6803b = false;
        this.f6808g = f11;
        this.f6806e = f13;
        this.f6804c = f15;
        this.f6810i = f14;
        this.f6811j = f17;
        this.f6812k = i11;
        this.f6807f = 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public float getInterpolation(float f11) {
        b(f11 - this.f6807f);
        this.f6807f = f11;
        return this.f6808g;
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public boolean isStopped() {
        double d11 = ((double) this.f6808g) - this.f6805d;
        double d12 = this.f6804c;
        double d13 = this.f6809h;
        return Math.sqrt((((d13 * d13) * ((double) this.f6810i)) + ((d12 * d11) * d11)) / d12) <= ((double) this.f6811j);
    }
}
