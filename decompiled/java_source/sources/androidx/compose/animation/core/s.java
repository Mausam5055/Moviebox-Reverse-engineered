package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f2493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f2494b;

    public s(double d11, double d12) {
        this.f2493a = d11;
        this.f2494b = d12;
    }

    public final double e() {
        return this.f2494b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return Double.compare(this.f2493a, sVar.f2493a) == 0 && Double.compare(this.f2494b, sVar.f2494b) == 0;
    }

    public final double f() {
        return this.f2493a;
    }

    public int hashCode() {
        return (r.a(this.f2493a) * 31) + r.a(this.f2494b);
    }

    public String toString() {
        return "ComplexDouble(_real=" + this.f2493a + ", _imaginary=" + this.f2494b + ')';
    }
}
