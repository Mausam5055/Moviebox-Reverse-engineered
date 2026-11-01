package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f4418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f4419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f4420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f4421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final double f4422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final double f4423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final double f4424g;

    public x(double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
        this.f4418a = d11;
        this.f4419b = d12;
        this.f4420c = d13;
        this.f4421d = d14;
        this.f4422e = d15;
        this.f4423f = d16;
        this.f4424g = d17;
        if (Double.isNaN(d12) || Double.isNaN(d13) || Double.isNaN(d14) || Double.isNaN(d15) || Double.isNaN(d16) || Double.isNaN(d17) || Double.isNaN(d11)) {
            throw new IllegalArgumentException("Parameters cannot be NaN");
        }
        if (d15 < 0.0d || d15 > 1.0d) {
            throw new IllegalArgumentException("Parameter d must be in the range [0..1], was " + d15);
        }
        if (d15 == 0.0d && (d12 == 0.0d || d11 == 0.0d)) {
            throw new IllegalArgumentException("Parameter a or g is zero, the transfer function is constant");
        }
        if (d15 >= 1.0d && d14 == 0.0d) {
            throw new IllegalArgumentException("Parameter c is zero, the transfer function is constant");
        }
        if ((d12 == 0.0d || d11 == 0.0d) && d14 == 0.0d) {
            throw new IllegalArgumentException("Parameter a or g is zero, and c is zero, the transfer function is constant");
        }
        if (d14 < 0.0d) {
            throw new IllegalArgumentException("The transfer function must be increasing");
        }
        if (d12 < 0.0d || d11 < 0.0d) {
            throw new IllegalArgumentException("The transfer function must be positive or increasing");
        }
    }

    public /* synthetic */ x(double d11, double d12, double d13, double d14, double d15, double d16, double d17, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(d11, d12, d13, d14, d15, (i11 & 32) != 0 ? 0.0d : d16, (i11 & 64) != 0 ? 0.0d : d17);
    }

    public final double a() {
        return this.f4419b;
    }

    public final double b() {
        return this.f4420c;
    }

    public final double c() {
        return this.f4421d;
    }

    public final double d() {
        return this.f4422e;
    }

    public final double e() {
        return this.f4423f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Double.compare(this.f4418a, xVar.f4418a) == 0 && Double.compare(this.f4419b, xVar.f4419b) == 0 && Double.compare(this.f4420c, xVar.f4420c) == 0 && Double.compare(this.f4421d, xVar.f4421d) == 0 && Double.compare(this.f4422e, xVar.f4422e) == 0 && Double.compare(this.f4423f, xVar.f4423f) == 0 && Double.compare(this.f4424g, xVar.f4424g) == 0;
    }

    public final double f() {
        return this.f4424g;
    }

    public final double g() {
        return this.f4418a;
    }

    public int hashCode() {
        return (((((((((((androidx.compose.animation.core.r.a(this.f4418a) * 31) + androidx.compose.animation.core.r.a(this.f4419b)) * 31) + androidx.compose.animation.core.r.a(this.f4420c)) * 31) + androidx.compose.animation.core.r.a(this.f4421d)) * 31) + androidx.compose.animation.core.r.a(this.f4422e)) * 31) + androidx.compose.animation.core.r.a(this.f4423f)) * 31) + androidx.compose.animation.core.r.a(this.f4424g);
    }

    public String toString() {
        return "TransferParameters(gamma=" + this.f4418a + ", a=" + this.f4419b + ", b=" + this.f4420c + ", c=" + this.f4421d + ", d=" + this.f4422e + ", e=" + this.f4423f + ", f=" + this.f4424g + ')';
    }
}
