package o0;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class h implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f70600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f70601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p0.a f70602c;

    public h(float f11, float f12, p0.a aVar) {
        this.f70600a = f11;
        this.f70601b = f12;
        this.f70602c = aVar;
    }

    @Override // o0.n
    public float C0() {
        return this.f70601b;
    }

    @Override // o0.e
    public /* synthetic */ float E0(float f11) {
        return d.e(this, f11);
    }

    @Override // o0.n
    public long H(float f11) {
        return x.b(this.f70602c.a(f11));
    }

    @Override // o0.n
    public float J(long j11) {
        if (y.g(w.g(j11), y.f70632b.b())) {
            return i.g(this.f70602c.b(w.h(j11)));
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    @Override // o0.e
    public /* synthetic */ long Q(float f11) {
        return d.g(this, f11);
    }

    @Override // o0.e
    public /* synthetic */ long Q0(long j11) {
        return d.f(this, j11);
    }

    @Override // o0.e
    public /* synthetic */ int c0(float f11) {
        return d.a(this, f11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Float.compare(this.f70600a, hVar.f70600a) == 0 && Float.compare(this.f70601b, hVar.f70601b) == 0 && Intrinsics.c(this.f70602c, hVar.f70602c);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f70600a;
    }

    @Override // o0.e
    public /* synthetic */ float h0(long j11) {
        return d.d(this, j11);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f70600a) * 31) + Float.floatToIntBits(this.f70601b)) * 31) + this.f70602c.hashCode();
    }

    public String toString() {
        return "DensityWithConverter(density=" + this.f70600a + ", fontScale=" + this.f70601b + ", converter=" + this.f70602c + ')';
    }

    @Override // o0.e
    public /* synthetic */ float x0(int i11) {
        return d.c(this, i11);
    }

    @Override // o0.e
    public /* synthetic */ float y0(float f11) {
        return d.b(this, f11);
    }
}
