package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class b5 extends j1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4291c;

    private b5(long j11) {
        super(null);
        this.f4291c = j11;
    }

    public /* synthetic */ b5(long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11);
    }

    @Override // androidx.compose.ui.graphics.j1
    public void a(long j11, m4 m4Var, float f11) {
        long jK;
        m4Var.setAlpha(1.0f);
        if (f11 == 1.0f) {
            jK = this.f4291c;
        } else {
            long j12 = this.f4291c;
            jK = u1.k(j12, u1.n(j12) * f11, 0.0f, 0.0f, 0.0f, 14, null);
        }
        m4Var.s(jK);
        if (m4Var.y() != null) {
            m4Var.x(null);
        }
    }

    public final long b() {
        return this.f4291c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b5) && u1.m(this.f4291c, ((b5) obj).f4291c);
    }

    public int hashCode() {
        return u1.s(this.f4291c);
    }

    public String toString() {
        return "SolidColor(value=" + ((Object) u1.t(this.f4291c)) + ')';
    }
}
