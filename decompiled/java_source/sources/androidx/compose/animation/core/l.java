package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class l extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2460c;

    public l(float f11, float f12) {
        super(null);
        this.f2458a = f11;
        this.f2459b = f12;
        this.f2460c = 2;
    }

    @Override // androidx.compose.animation.core.o
    public float a(int i11) {
        if (i11 == 0) {
            return this.f2458a;
        }
        if (i11 != 1) {
            return 0.0f;
        }
        return this.f2459b;
    }

    @Override // androidx.compose.animation.core.o
    public int b() {
        return this.f2460c;
    }

    @Override // androidx.compose.animation.core.o
    public void d() {
        this.f2458a = 0.0f;
        this.f2459b = 0.0f;
    }

    @Override // androidx.compose.animation.core.o
    public void e(int i11, float f11) {
        if (i11 == 0) {
            this.f2458a = f11;
        } else {
            if (i11 != 1) {
                return;
            }
            this.f2459b = f11;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (lVar.f2458a == this.f2458a && lVar.f2459b == this.f2459b) {
                return true;
            }
        }
        return false;
    }

    public final float f() {
        return this.f2458a;
    }

    public final float g() {
        return this.f2459b;
    }

    @Override // androidx.compose.animation.core.o
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public l c() {
        return new l(0.0f, 0.0f);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f2458a) * 31) + Float.floatToIntBits(this.f2459b);
    }

    public String toString() {
        return "AnimationVector2D: v1 = " + this.f2458a + ", v2 = " + this.f2459b;
    }
}
