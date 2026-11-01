package androidx.compose.animation;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2368a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float[] f2369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f2370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f2371d;

    /* JADX INFO: renamed from: androidx.compose.animation.a$a, reason: collision with other inner class name */
    public static final class C0028a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f2373b;

        public C0028a(float f11, float f12) {
            this.f2372a = f11;
            this.f2373b = f12;
        }

        public final float a() {
            return this.f2372a;
        }

        public final float b() {
            return this.f2373b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0028a)) {
                return false;
            }
            C0028a c0028a = (C0028a) obj;
            return Float.compare(this.f2372a, c0028a.f2372a) == 0 && Float.compare(this.f2373b, c0028a.f2373b) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f2372a) * 31) + Float.floatToIntBits(this.f2373b);
        }

        public String toString() {
            return "FlingResult(distanceCoefficient=" + this.f2372a + ", velocityCoefficient=" + this.f2373b + ')';
        }
    }

    static {
        float[] fArr = new float[101];
        f2369b = fArr;
        float[] fArr2 = new float[101];
        f2370c = fArr2;
        f.b(fArr, fArr2, 100);
        f2371d = 8;
    }

    private a() {
    }

    public final double a(float f11, float f12) {
        return Math.log(((double) (Math.abs(f11) * 0.35f)) / ((double) f12));
    }

    public final C0028a b(float f11) {
        float f12 = 0.0f;
        float f13 = 1.0f;
        float fL = RangesKt.l(f11, 0.0f, 1.0f);
        float f14 = 100;
        int i11 = (int) (f14 * fL);
        if (i11 < 100) {
            float f15 = i11 / f14;
            int i12 = i11 + 1;
            float f16 = i12 / f14;
            float[] fArr = f2369b;
            float f17 = fArr[i11];
            float f18 = (fArr[i12] - f17) / (f16 - f15);
            float f19 = ((fL - f15) * f18) + f17;
            f12 = f18;
            f13 = f19;
        }
        return new C0028a(f13, f12);
    }
}
