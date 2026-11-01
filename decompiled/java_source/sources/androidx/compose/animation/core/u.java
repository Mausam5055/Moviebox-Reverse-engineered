package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class u implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f2500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f2501e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f2502f;

    public u(float f11, float f12, float f13, float f14) {
        this.f2497a = f11;
        this.f2498b = f12;
        this.f2499c = f13;
        this.f2500d = f14;
        if (!((Float.isNaN(f11) || Float.isNaN(f12) || Float.isNaN(f13) || Float.isNaN(f14)) ? false : true)) {
            k0.a("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: " + f11 + ", " + f12 + ", " + f13 + ", " + f14 + '.');
        }
        long jB = androidx.compose.ui.graphics.b1.b(0.0f, f12, f14, 1.0f, new float[5], 0);
        this.f2501e = Float.intBitsToFloat((int) (jB >> 32));
        this.f2502f = Float.intBitsToFloat((int) (jB & 4294967295L));
    }

    private final void b(float f11) {
        throw new IllegalArgumentException("The cubic curve with parameters (" + this.f2497a + ", " + this.f2498b + ", " + this.f2499c + ", " + this.f2500d + ") has no solution at " + f11);
    }

    @Override // androidx.compose.animation.core.z
    public float a(float f11) {
        if (f11 <= 0.0f || f11 >= 1.0f) {
            return f11;
        }
        float fE = androidx.compose.ui.graphics.b1.e(0.0f - f11, this.f2497a - f11, this.f2499c - f11, 1.0f - f11);
        if (Float.isNaN(fE)) {
            b(f11);
        }
        float fC = androidx.compose.ui.graphics.b1.c(this.f2498b, this.f2500d, fE);
        float f12 = this.f2501e;
        float f13 = this.f2502f;
        if (fC < f12) {
            fC = f12;
        }
        return fC > f13 ? f13 : fC;
    }

    public boolean equals(Object obj) {
        if (obj instanceof u) {
            u uVar = (u) obj;
            if (this.f2497a == uVar.f2497a && this.f2498b == uVar.f2498b && this.f2499c == uVar.f2499c && this.f2500d == uVar.f2500d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f2497a) * 31) + Float.floatToIntBits(this.f2498b)) * 31) + Float.floatToIntBits(this.f2499c)) * 31) + Float.floatToIntBits(this.f2500d);
    }

    public String toString() {
        return "CubicBezierEasing(a=" + this.f2497a + ", b=" + this.f2498b + ", c=" + this.f2499c + ", d=" + this.f2500d + ')';
    }
}
