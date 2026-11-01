package androidx.compose.animation;

import androidx.compose.animation.core.e0;

/* JADX INFO: loaded from: classes.dex */
public final class g implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2522a;

    public g(o0.e eVar) {
        this.f2522a = new d(h.a(), eVar);
    }

    private final float f(float f11) {
        return this.f2522a.b(f11) * Math.signum(f11);
    }

    @Override // androidx.compose.animation.core.e0
    public float a() {
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.e0
    public float b(long j11, float f11, float f12) {
        return this.f2522a.d(f12).b(j11 / 1000000);
    }

    @Override // androidx.compose.animation.core.e0
    public long c(float f11, float f12) {
        return this.f2522a.c(f12) * 1000000;
    }

    @Override // androidx.compose.animation.core.e0
    public float d(float f11, float f12) {
        return f11 + f(f12);
    }

    @Override // androidx.compose.animation.core.e0
    public float e(long j11, float f11, float f12) {
        return f11 + this.f2522a.d(f12).a(j11 / 1000000);
    }
}
