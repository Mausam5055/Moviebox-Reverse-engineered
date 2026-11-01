package p0;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f72230a = new d();

    private d() {
    }

    public final float a(float f11, float f12, float f13, float f14, float f15) {
        return b(f11, f12, Math.max(0.0f, Math.min(1.0f, c(f13, f14, f15))));
    }

    public final float b(float f11, float f12, float f13) {
        return f11 + ((f12 - f11) * f13);
    }

    public final float c(float f11, float f12, float f13) {
        if (f11 == f12) {
            return 0.0f;
        }
        return (f13 - f11) / (f12 - f11);
    }
}
