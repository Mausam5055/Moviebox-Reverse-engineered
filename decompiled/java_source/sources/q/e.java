package q;

import y.m;

/* JADX INFO: loaded from: classes2.dex */
final class e implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f73041a;

    public e(float f11) {
        this.f73041a = f11;
        if (f11 < 0.0f || f11 > 100.0f) {
            throw new IllegalArgumentException("The percent should be in the range of [0, 100]");
        }
    }

    @Override // q.b
    public float a(long j11, o0.e eVar) {
        return m.h(j11) * (this.f73041a / 100.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && Float.compare(this.f73041a, ((e) obj).f73041a) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f73041a);
    }

    public String toString() {
        return "CornerSize(size = " + this.f73041a + "%)";
    }
}
