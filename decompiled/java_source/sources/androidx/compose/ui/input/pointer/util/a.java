package androidx.compose.ui.input.pointer.util;

import e0.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.a0;
import o0.z;
import y.g;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VelocityTracker1D.Strategy f5050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final VelocityTracker1D f5051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final VelocityTracker1D f5052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f5054e;

    public a() {
        VelocityTracker1D.Strategy strategy = c.h() ? VelocityTracker1D.Strategy.Impulse : VelocityTracker1D.Strategy.Lsq2;
        this.f5050a = strategy;
        boolean z10 = false;
        int i11 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.f5051b = new VelocityTracker1D(z10, strategy, i11, defaultConstructorMarker);
        this.f5052c = new VelocityTracker1D(z10, strategy, i11, defaultConstructorMarker);
        this.f5053d = g.f78470b.c();
    }

    public final void a(long j11, long j12) {
        this.f5051b.a(j11, g.m(j12));
        this.f5052c.a(j11, g.n(j12));
    }

    public final long b(long j11) {
        if (!(z.h(j11) > 0.0f && z.i(j11) > 0.0f)) {
            g0.a.b("maximumVelocity should be a positive value. You specified=" + ((Object) z.m(j11)));
        }
        return a0.a(this.f5051b.d(z.h(j11)), this.f5052c.d(z.i(j11)));
    }

    public final long c() {
        return this.f5053d;
    }

    public final long d() {
        return this.f5054e;
    }

    public final void e() {
        this.f5051b.e();
        this.f5052c.e();
        this.f5054e = 0L;
    }

    public final void f(long j11) {
        this.f5053d = j11;
    }

    public final void g(long j11) {
        this.f5054e = j11;
    }
}
