package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class m extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f2462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2464d;

    public m(float f11, float f12, float f13) {
        super(null);
        this.f2461a = f11;
        this.f2462b = f12;
        this.f2463c = f13;
        this.f2464d = 3;
    }

    @Override // androidx.compose.animation.core.o
    public float a(int i11) {
        if (i11 == 0) {
            return this.f2461a;
        }
        if (i11 == 1) {
            return this.f2462b;
        }
        if (i11 != 2) {
            return 0.0f;
        }
        return this.f2463c;
    }

    @Override // androidx.compose.animation.core.o
    public int b() {
        return this.f2464d;
    }

    @Override // androidx.compose.animation.core.o
    public void d() {
        this.f2461a = 0.0f;
        this.f2462b = 0.0f;
        this.f2463c = 0.0f;
    }

    @Override // androidx.compose.animation.core.o
    public void e(int i11, float f11) {
        if (i11 == 0) {
            this.f2461a = f11;
        } else if (i11 == 1) {
            this.f2462b = f11;
        } else {
            if (i11 != 2) {
                return;
            }
            this.f2463c = f11;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (mVar.f2461a == this.f2461a && mVar.f2462b == this.f2462b && mVar.f2463c == this.f2463c) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.animation.core.o
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public m c() {
        return new m(0.0f, 0.0f, 0.0f);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f2461a) * 31) + Float.floatToIntBits(this.f2462b)) * 31) + Float.floatToIntBits(this.f2463c);
    }

    public String toString() {
        return "AnimationVector3D: v1 = " + this.f2461a + ", v2 = " + this.f2462b + ", v3 = " + this.f2463c;
    }
}
