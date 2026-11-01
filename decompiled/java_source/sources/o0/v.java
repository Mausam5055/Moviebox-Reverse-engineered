package o0;

/* JADX INFO: loaded from: classes2.dex */
final class v implements p0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f70627a;

    public v(float f11) {
        this.f70627a = f11;
    }

    @Override // p0.a
    public float a(float f11) {
        return f11 / this.f70627a;
    }

    @Override // p0.a
    public float b(float f11) {
        return f11 * this.f70627a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && Float.compare(this.f70627a, ((v) obj).f70627a) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f70627a);
    }

    public String toString() {
        return "LinearFontScaleConverter(fontScale=" + this.f70627a + ')';
    }
}
