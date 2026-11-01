package androidx.compose.animation;

import androidx.collection.s;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o0.e f2516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2517c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f2518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f2519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f2520c;

        public a(float f11, float f12, long j11) {
            this.f2518a = f11;
            this.f2519b = f12;
            this.f2520c = j11;
        }

        public final float a(long j11) {
            long j12 = this.f2520c;
            return this.f2519b * Math.signum(this.f2518a) * androidx.compose.animation.a.f2368a.b(j12 > 0 ? j11 / j12 : 1.0f).a();
        }

        public final float b(long j11) {
            long j12 = this.f2520c;
            return (((androidx.compose.animation.a.f2368a.b(j12 > 0 ? j11 / j12 : 1.0f).b() * Math.signum(this.f2518a)) * this.f2519b) / this.f2520c) * 1000.0f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.f2518a, aVar.f2518a) == 0 && Float.compare(this.f2519b, aVar.f2519b) == 0 && this.f2520c == aVar.f2520c;
        }

        public int hashCode() {
            return (((Float.floatToIntBits(this.f2518a) * 31) + Float.floatToIntBits(this.f2519b)) * 31) + s.a(this.f2520c);
        }

        public String toString() {
            return "FlingInfo(initialVelocity=" + this.f2518a + ", distance=" + this.f2519b + ", duration=" + this.f2520c + ')';
        }
    }

    public d(float f11, o0.e eVar) {
        this.f2515a = f11;
        this.f2516b = eVar;
        this.f2517c = a(eVar);
    }

    private final float a(o0.e eVar) {
        return e.c(0.84f, eVar.getDensity());
    }

    private final double e(float f11) {
        return androidx.compose.animation.a.f2368a.a(f11, this.f2515a * this.f2517c);
    }

    public final float b(float f11) {
        return (float) (((double) (this.f2515a * this.f2517c)) * Math.exp((((double) e.f2521a) / (((double) e.f2521a) - 1.0d)) * e(f11)));
    }

    public final long c(float f11) {
        return (long) (Math.exp(e(f11) / (((double) e.f2521a) - 1.0d)) * 1000.0d);
    }

    public final a d(float f11) {
        double dE = e(f11);
        double d11 = ((double) e.f2521a) - 1.0d;
        return new a(f11, (float) (((double) (this.f2515a * this.f2517c)) * Math.exp((((double) e.f2521a) / d11) * dE)), (long) (Math.exp(dE / d11) * 1000.0d));
    }
}
