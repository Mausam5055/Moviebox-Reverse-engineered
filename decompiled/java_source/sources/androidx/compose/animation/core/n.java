package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class n extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2476e;

    public n(float f11, float f12, float f13, float f14) {
        super(null);
        this.f2472a = f11;
        this.f2473b = f12;
        this.f2474c = f13;
        this.f2475d = f14;
        this.f2476e = 4;
    }

    @Override // androidx.compose.animation.core.o
    public float a(int i11) {
        if (i11 == 0) {
            return this.f2472a;
        }
        if (i11 == 1) {
            return this.f2473b;
        }
        if (i11 == 2) {
            return this.f2474c;
        }
        if (i11 != 3) {
            return 0.0f;
        }
        return this.f2475d;
    }

    @Override // androidx.compose.animation.core.o
    public int b() {
        return this.f2476e;
    }

    @Override // androidx.compose.animation.core.o
    public void d() {
        this.f2472a = 0.0f;
        this.f2473b = 0.0f;
        this.f2474c = 0.0f;
        this.f2475d = 0.0f;
    }

    @Override // androidx.compose.animation.core.o
    public void e(int i11, float f11) {
        if (i11 == 0) {
            this.f2472a = f11;
            return;
        }
        if (i11 == 1) {
            this.f2473b = f11;
        } else if (i11 == 2) {
            this.f2474c = f11;
        } else {
            if (i11 != 3) {
                return;
            }
            this.f2475d = f11;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (nVar.f2472a == this.f2472a && nVar.f2473b == this.f2473b && nVar.f2474c == this.f2474c && nVar.f2475d == this.f2475d) {
                return true;
            }
        }
        return false;
    }

    public final float f() {
        return this.f2472a;
    }

    public final float g() {
        return this.f2473b;
    }

    public final float h() {
        return this.f2474c;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f2472a) * 31) + Float.floatToIntBits(this.f2473b)) * 31) + Float.floatToIntBits(this.f2474c)) * 31) + Float.floatToIntBits(this.f2475d);
    }

    public final float i() {
        return this.f2475d;
    }

    @Override // androidx.compose.animation.core.o
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public n c() {
        return new n(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public String toString() {
        return "AnimationVector4D: v1 = " + this.f2472a + ", v2 = " + this.f2473b + ", v3 = " + this.f2474c + ", v4 = " + this.f2475d;
    }
}
