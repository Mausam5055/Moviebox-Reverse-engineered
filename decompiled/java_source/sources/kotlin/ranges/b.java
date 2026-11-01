package kotlin.ranges;

/* JADX INFO: loaded from: classes7.dex */
final class b implements ClosedFloatingPointRange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f67370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f67371b;

    public b(float f11, float f12) {
        this.f67370a = f11;
        this.f67371b = f12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public /* bridge */ /* synthetic */ boolean a(Comparable comparable) {
        return b(((Number) comparable).floatValue());
    }

    public boolean b(float f11) {
        return f11 >= this.f67370a && f11 <= this.f67371b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public /* bridge */ /* synthetic */ boolean c(Comparable comparable, Comparable comparable2) {
        return g(((Number) comparable).floatValue(), ((Number) comparable2).floatValue());
    }

    @Override // kotlin.ranges.ClosedRange
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Float e() {
        return Float.valueOf(this.f67371b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            if (!isEmpty() || !((b) obj).isEmpty()) {
                b bVar = (b) obj;
                if (this.f67370a != bVar.f67370a || this.f67371b != bVar.f67371b) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Float j() {
        return Float.valueOf(this.f67370a);
    }

    public boolean g(float f11, float f12) {
        return f11 <= f12;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f67370a) * 31) + Float.floatToIntBits(this.f67371b);
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange
    public boolean isEmpty() {
        return this.f67370a > this.f67371b;
    }

    public String toString() {
        return this.f67370a + ".." + this.f67371b;
    }
}
