package androidx.compose.material.ripple;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f3495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f3496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f3497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f3498d;

    public c(float f11, float f12, float f13, float f14) {
        this.f3495a = f11;
        this.f3496b = f12;
        this.f3497c = f13;
        this.f3498d = f14;
    }

    public final float a() {
        return this.f3495a;
    }

    public final float b() {
        return this.f3496b;
    }

    public final float c() {
        return this.f3497c;
    }

    public final float d() {
        return this.f3498d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3495a == cVar.f3495a && this.f3496b == cVar.f3496b && this.f3497c == cVar.f3497c && this.f3498d == cVar.f3498d;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f3495a) * 31) + Float.floatToIntBits(this.f3496b)) * 31) + Float.floatToIntBits(this.f3497c)) * 31) + Float.floatToIntBits(this.f3498d);
    }

    public String toString() {
        return "RippleAlpha(draggedAlpha=" + this.f3495a + ", focusedAlpha=" + this.f3496b + ", hoveredAlpha=" + this.f3497c + ", pressedAlpha=" + this.f3498d + ')';
    }
}
