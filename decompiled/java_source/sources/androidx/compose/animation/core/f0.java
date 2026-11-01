package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class f0 implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f2438d;

    public f0() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    public f0(float f11, float f12, float f13) {
        this.f2435a = f11;
        this.f2436b = f12;
        this.f2437c = f13;
        m0 m0Var = new m0(1.0f);
        m0Var.d(f11);
        m0Var.f(f12);
        this.f2438d = m0Var;
    }

    public /* synthetic */ f0(float f11, float f12, float f13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1.0f : f11, (i11 & 2) != 0 ? 1500.0f : f12, (i11 & 4) != 0 ? 0.01f : f13);
    }

    @Override // androidx.compose.animation.core.d0, androidx.compose.animation.core.g
    public /* synthetic */ c1 a(s0 s0Var) {
        return c0.c(this, s0Var);
    }

    @Override // androidx.compose.animation.core.g
    public /* bridge */ /* synthetic */ v0 a(s0 s0Var) {
        return a(s0Var);
    }

    @Override // androidx.compose.animation.core.d0
    public float b(float f11, float f12, float f13) {
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.d0
    public float c(long j11, float f11, float f12, float f13) {
        this.f2438d.e(f12);
        return i0.b(this.f2438d.g(f11, f13, j11 / 1000000));
    }

    @Override // androidx.compose.animation.core.d0
    public float d(long j11, float f11, float f12, float f13) {
        this.f2438d.e(f12);
        return i0.c(this.f2438d.g(f11, f13, j11 / 1000000));
    }

    @Override // androidx.compose.animation.core.d0
    public long e(float f11, float f12, float f13) {
        float fB = this.f2438d.b();
        float fA = this.f2438d.a();
        float f14 = f11 - f12;
        float f15 = this.f2437c;
        return l0.b(fB, fA, f13 / f15, f14 / f15, 1.0f) * 1000000;
    }
}
