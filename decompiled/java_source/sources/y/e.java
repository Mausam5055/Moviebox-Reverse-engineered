package y;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f78466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f78467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f78468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f78469d;

    public e(float f11, float f12, float f13, float f14) {
        this.f78466a = f11;
        this.f78467b = f12;
        this.f78468c = f13;
        this.f78469d = f14;
    }

    public final float a() {
        return this.f78469d;
    }

    public final float b() {
        return this.f78466a;
    }

    public final float c() {
        return this.f78468c;
    }

    public final float d() {
        return this.f78467b;
    }

    public final void e(float f11, float f12, float f13, float f14) {
        this.f78466a = Math.max(f11, this.f78466a);
        this.f78467b = Math.max(f12, this.f78467b);
        this.f78468c = Math.min(f13, this.f78468c);
        this.f78469d = Math.min(f14, this.f78469d);
    }

    public final boolean f() {
        return this.f78466a >= this.f78468c || this.f78467b >= this.f78469d;
    }

    public final void g(float f11, float f12, float f13, float f14) {
        this.f78466a = f11;
        this.f78467b = f12;
        this.f78468c = f13;
        this.f78469d = f14;
    }

    public final void h(float f11) {
        this.f78469d = f11;
    }

    public final void i(float f11) {
        this.f78466a = f11;
    }

    public final void j(float f11) {
        this.f78468c = f11;
    }

    public final void k(float f11) {
        this.f78467b = f11;
    }

    public String toString() {
        return "MutableRect(" + c.a(this.f78466a, 1) + ", " + c.a(this.f78467b, 1) + ", " + c.a(this.f78468c, 1) + ", " + c.a(this.f78469d, 1) + ')';
    }
}
