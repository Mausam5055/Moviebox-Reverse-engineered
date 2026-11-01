package androidx.compose.animation.core;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class i implements a3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f2450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i1 f2451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f2452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f2453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f2454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2455f;

    public i(s0 s0Var, Object obj, o oVar, long j11, long j12, boolean z10) {
        o oVarE;
        this.f2450a = s0Var;
        this.f2451b = u2.c(obj, null, 2, null);
        this.f2452c = (oVar == null || (oVarE = p.e(oVar)) == null) ? j.i(s0Var, obj) : oVarE;
        this.f2453d = j11;
        this.f2454e = j12;
        this.f2455f = z10;
    }

    public /* synthetic */ i(s0 s0Var, Object obj, o oVar, long j11, long j12, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(s0Var, obj, (i11 & 4) != 0 ? null : oVar, (i11 & 8) != 0 ? Long.MIN_VALUE : j11, (i11 & 16) != 0 ? Long.MIN_VALUE : j12, (i11 & 32) != 0 ? false : z10);
    }

    public final long c() {
        return this.f2454e;
    }

    public final long d() {
        return this.f2453d;
    }

    public final s0 e() {
        return this.f2450a;
    }

    public final Object f() {
        return this.f2450a.b().invoke(this.f2452c);
    }

    public final o g() {
        return this.f2452c;
    }

    @Override // androidx.compose.runtime.a3
    public Object getValue() {
        return this.f2451b.getValue();
    }

    public final boolean h() {
        return this.f2455f;
    }

    public final void i(long j11) {
        this.f2454e = j11;
    }

    public final void j(long j11) {
        this.f2453d = j11;
    }

    public final void k(boolean z10) {
        this.f2455f = z10;
    }

    public void l(Object obj) {
        this.f2451b.setValue(obj);
    }

    public final void m(o oVar) {
        this.f2452c = oVar;
    }

    public String toString() {
        return "AnimationState(value=" + getValue() + ", velocity=" + f() + ", isRunning=" + this.f2455f + ", lastFrameTimeNanos=" + this.f2453d + ", finishedTimeNanos=" + this.f2454e + ')';
    }
}
