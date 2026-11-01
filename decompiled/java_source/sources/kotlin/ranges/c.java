package kotlin.ranges;

/* JADX INFO: loaded from: classes7.dex */
final class c implements OpenEndRange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f67372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f67373b;

    public c(float f11, float f12) {
        this.f67372a = f11;
        this.f67373b = f12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ boolean a(Comparable comparable) {
        return b(((Number) comparable).floatValue());
    }

    public boolean b(float f11) {
        return f11 >= this.f67372a && f11 < this.f67373b;
    }

    public boolean c() {
        return this.f67372a >= this.f67373b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!c() || !((c) obj).c()) {
                c cVar = (c) obj;
                if (this.f67372a != cVar.f67372a || this.f67373b != cVar.f67373b) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (c()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f67372a) * 31) + Float.floatToIntBits(this.f67373b);
    }

    public String toString() {
        return this.f67372a + "..<" + this.f67373b;
    }
}
