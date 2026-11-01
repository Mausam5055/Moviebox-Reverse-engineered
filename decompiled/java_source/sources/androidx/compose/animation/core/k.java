package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class k extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2457b;

    public k(float f11) {
        super(null);
        this.f2456a = f11;
        this.f2457b = 1;
    }

    @Override // androidx.compose.animation.core.o
    public float a(int i11) {
        if (i11 == 0) {
            return this.f2456a;
        }
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.o
    public int b() {
        return this.f2457b;
    }

    @Override // androidx.compose.animation.core.o
    public void d() {
        this.f2456a = 0.0f;
    }

    @Override // androidx.compose.animation.core.o
    public void e(int i11, float f11) {
        if (i11 == 0) {
            this.f2456a = f11;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof k) && ((k) obj).f2456a == this.f2456a;
    }

    public final float f() {
        return this.f2456a;
    }

    @Override // androidx.compose.animation.core.o
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public k c() {
        return new k(0.0f);
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f2456a);
    }

    public String toString() {
        return "AnimationVector1D: value = " + this.f2456a;
    }
}
