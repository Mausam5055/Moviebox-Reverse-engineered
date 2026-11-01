package w4;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f77589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f77590b;

    public d() {
        this(1.0f, 1.0f);
    }

    public d(float f11, float f12) {
        this.f77589a = f11;
        this.f77590b = f12;
    }

    public boolean a(float f11, float f12) {
        return this.f77589a == f11 && this.f77590b == f12;
    }

    public float b() {
        return this.f77589a;
    }

    public float c() {
        return this.f77590b;
    }

    public void d(float f11, float f12) {
        this.f77589a = f11;
        this.f77590b = f12;
    }

    public String toString() {
        return b() + "x" + c();
    }
}
