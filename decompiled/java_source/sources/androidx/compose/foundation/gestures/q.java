package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.w;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Orientation f2729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2730b;

    /* JADX WARN: Multi-variable type inference failed */
    public q() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public q(Orientation orientation) {
        this.f2729a = orientation;
        this.f2730b = y.g.f78470b.c();
    }

    public /* synthetic */ q(Orientation orientation, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : orientation);
    }

    private final long b(float f11) {
        if (this.f2729a == null) {
            long j11 = this.f2730b;
            return y.g.q(this.f2730b, y.g.s(y.g.h(j11, y.g.k(j11)), f11));
        }
        float fD = d(this.f2730b) - (Math.signum(d(this.f2730b)) * f11);
        float fC = c(this.f2730b);
        return this.f2729a == Orientation.Horizontal ? y.h.a(fD, fC) : y.h.a(fC, fD);
    }

    public final y.g a(w wVar, float f11) {
        long jR = y.g.r(this.f2730b, y.g.q(wVar.h(), wVar.k()));
        this.f2730b = jR;
        if ((this.f2729a == null ? y.g.k(jR) : Math.abs(d(jR))) >= f11) {
            return y.g.d(b(f11));
        }
        return null;
    }

    public final float c(long j11) {
        return this.f2729a == Orientation.Horizontal ? y.g.n(j11) : y.g.m(j11);
    }

    public final float d(long j11) {
        return this.f2729a == Orientation.Horizontal ? y.g.m(j11) : y.g.n(j11);
    }

    public final void e() {
        this.f2730b = y.g.f78470b.c();
    }
}
