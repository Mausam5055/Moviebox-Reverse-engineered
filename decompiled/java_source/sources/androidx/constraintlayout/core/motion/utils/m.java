package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class m implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f6814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f6816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f6817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f6818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f6819f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f6820g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f6821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f6822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f6824k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f6826m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f6827n;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f6825l = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f6828o = false;

    private float b(float f11) {
        this.f6828o = false;
        float f12 = this.f6817d;
        if (f11 <= f12) {
            float f13 = this.f6814a;
            return (f13 * f11) + ((((this.f6815b - f13) * f11) * f11) / (f12 * 2.0f));
        }
        int i11 = this.f6823j;
        if (i11 == 1) {
            return this.f6820g;
        }
        float f14 = f11 - f12;
        float f15 = this.f6818e;
        if (f14 < f15) {
            float f16 = this.f6820g;
            float f17 = this.f6815b;
            return f16 + (f17 * f14) + ((((this.f6816c - f17) * f14) * f14) / (f15 * 2.0f));
        }
        if (i11 == 2) {
            return this.f6821h;
        }
        float f18 = f14 - f15;
        float f19 = this.f6819f;
        if (f18 > f19) {
            this.f6828o = true;
            return this.f6822i;
        }
        float f20 = this.f6821h;
        float f21 = this.f6816c;
        return (f20 + (f21 * f18)) - (((f21 * f18) * f18) / (f19 * 2.0f));
    }

    private void e(float f11, float f12, float f13, float f14, float f15) {
        this.f6828o = false;
        if (f11 == 0.0f) {
            f11 = 1.0E-4f;
        }
        this.f6814a = f11;
        float f16 = f11 / f13;
        float f17 = (f16 * f11) / 2.0f;
        if (f11 < 0.0f) {
            float fSqrt = (float) Math.sqrt((f12 - ((((-f11) / f13) * f11) / 2.0f)) * f13);
            if (fSqrt < f14) {
                this.f6824k = "backward accelerate, decelerate";
                this.f6823j = 2;
                this.f6814a = f11;
                this.f6815b = fSqrt;
                this.f6816c = 0.0f;
                float f18 = (fSqrt - f11) / f13;
                this.f6817d = f18;
                this.f6818e = fSqrt / f13;
                this.f6820g = ((f11 + fSqrt) * f18) / 2.0f;
                this.f6821h = f12;
                this.f6822i = f12;
                return;
            }
            this.f6824k = "backward accelerate cruse decelerate";
            this.f6823j = 3;
            this.f6814a = f11;
            this.f6815b = f14;
            this.f6816c = f14;
            float f19 = (f14 - f11) / f13;
            this.f6817d = f19;
            float f20 = f14 / f13;
            this.f6819f = f20;
            float f21 = ((f11 + f14) * f19) / 2.0f;
            float f22 = (f20 * f14) / 2.0f;
            this.f6818e = ((f12 - f21) - f22) / f14;
            this.f6820g = f21;
            this.f6821h = f12 - f22;
            this.f6822i = f12;
            return;
        }
        if (f17 >= f12) {
            this.f6824k = "hard stop";
            this.f6823j = 1;
            this.f6814a = f11;
            this.f6815b = 0.0f;
            this.f6820g = f12;
            this.f6817d = (2.0f * f12) / f11;
            return;
        }
        float f23 = f12 - f17;
        float f24 = f23 / f11;
        if (f24 + f16 < f15) {
            this.f6824k = "cruse decelerate";
            this.f6823j = 2;
            this.f6814a = f11;
            this.f6815b = f11;
            this.f6816c = 0.0f;
            this.f6820g = f23;
            this.f6821h = f12;
            this.f6817d = f24;
            this.f6818e = f16;
            return;
        }
        float fSqrt2 = (float) Math.sqrt((f13 * f12) + ((f11 * f11) / 2.0f));
        float f25 = (fSqrt2 - f11) / f13;
        this.f6817d = f25;
        float f26 = fSqrt2 / f13;
        this.f6818e = f26;
        if (fSqrt2 < f14) {
            this.f6824k = "accelerate decelerate";
            this.f6823j = 2;
            this.f6814a = f11;
            this.f6815b = fSqrt2;
            this.f6816c = 0.0f;
            this.f6817d = f25;
            this.f6818e = f26;
            this.f6820g = ((f11 + fSqrt2) * f25) / 2.0f;
            this.f6821h = f12;
            return;
        }
        this.f6824k = "accelerate cruse decelerate";
        this.f6823j = 3;
        this.f6814a = f11;
        this.f6815b = f14;
        this.f6816c = f14;
        float f27 = (f14 - f11) / f13;
        this.f6817d = f27;
        float f28 = f14 / f13;
        this.f6819f = f28;
        float f29 = ((f11 + f14) * f27) / 2.0f;
        float f30 = (f28 * f14) / 2.0f;
        this.f6818e = ((f12 - f29) - f30) / f14;
        this.f6820g = f29;
        this.f6821h = f12 - f30;
        this.f6822i = f12;
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public float a() {
        return this.f6825l ? -d(this.f6827n) : d(this.f6827n);
    }

    public void c(float f11, float f12, float f13, float f14, float f15, float f16) {
        this.f6828o = false;
        this.f6826m = f11;
        boolean z10 = f11 > f12;
        this.f6825l = z10;
        if (z10) {
            e(-f13, f11 - f12, f15, f16, f14);
        } else {
            e(f13, f12 - f11, f15, f16, f14);
        }
    }

    public float d(float f11) {
        float f12 = this.f6817d;
        if (f11 <= f12) {
            float f13 = this.f6814a;
            return f13 + (((this.f6815b - f13) * f11) / f12);
        }
        int i11 = this.f6823j;
        if (i11 == 1) {
            return 0.0f;
        }
        float f14 = f11 - f12;
        float f15 = this.f6818e;
        if (f14 < f15) {
            float f16 = this.f6815b;
            return f16 + (((this.f6816c - f16) * f14) / f15);
        }
        if (i11 == 2) {
            return this.f6821h;
        }
        float f17 = f14 - f15;
        float f18 = this.f6819f;
        if (f17 >= f18) {
            return this.f6822i;
        }
        float f19 = this.f6816c;
        return f19 - ((f17 * f19) / f18);
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public float getInterpolation(float f11) {
        float fB = b(f11);
        this.f6827n = f11;
        return this.f6825l ? this.f6826m - fB : this.f6826m + fB;
    }

    @Override // androidx.constraintlayout.core.motion.utils.l
    public boolean isStopped() {
        return a() < 1.0E-5f && Math.abs(this.f6822i - this.f6827n) < 1.0E-5f;
    }
}
