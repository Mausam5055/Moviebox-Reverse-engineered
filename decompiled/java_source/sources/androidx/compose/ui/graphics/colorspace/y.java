package androidx.compose.ui.graphics.colorspace;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f4425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4426b;

    public y(float f11, float f12) {
        this.f4425a = f11;
        this.f4426b = f12;
    }

    public y(float f11, float f12, float f13) {
        this(f11, f12, f13, f11 + f12 + f13);
    }

    private y(float f11, float f12, float f13, float f14) {
        this(f11 / f14, f12 / f14);
    }

    public final float a() {
        return this.f4425a;
    }

    public final float b() {
        return this.f4426b;
    }

    public final float[] c() {
        float f11 = this.f4425a;
        float f12 = this.f4426b;
        return new float[]{f11 / f12, 1.0f, ((1.0f - f11) - f12) / f12};
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return Float.compare(this.f4425a, yVar.f4425a) == 0 && Float.compare(this.f4426b, yVar.f4426b) == 0;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f4425a) * 31) + Float.floatToIntBits(this.f4426b);
    }

    public String toString() {
        return "WhitePoint(x=" + this.f4425a + ", y=" + this.f4426b + ')';
    }
}
