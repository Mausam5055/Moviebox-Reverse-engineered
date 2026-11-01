package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f2445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f2446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f2447e;

    public g0() {
        this(0, 0, null, 7, null);
    }

    public g0(int i11, int i12, z zVar) {
        this.f2443a = i11;
        this.f2444b = i12;
        this.f2445c = zVar;
        this.f2446d = ((long) i11) * 1000000;
        this.f2447e = ((long) i12) * 1000000;
    }

    public /* synthetic */ g0(int i11, int i12, z zVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 300 : i11, (i13 & 2) != 0 ? 0 : i12, (i13 & 4) != 0 ? b0.c() : zVar);
    }

    private final long f(long j11) {
        return RangesKt.n(j11 - this.f2447e, 0L, this.f2446d);
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
    public /* synthetic */ float b(float f11, float f12, float f13) {
        return c0.a(this, f11, f12, f13);
    }

    @Override // androidx.compose.animation.core.d0
    public float c(long j11, float f11, float f12, float f13) {
        float f14 = this.f2443a == 0 ? 1.0f : f(j11) / this.f2446d;
        z zVar = this.f2445c;
        if (f14 < 0.0f) {
            f14 = 0.0f;
        }
        return VectorConvertersKt.k(f11, f12, zVar.a(f14 <= 1.0f ? f14 : 1.0f));
    }

    @Override // androidx.compose.animation.core.d0
    public float d(long j11, float f11, float f12, float f13) {
        long jF = f(j11);
        if (jF < 0) {
            return 0.0f;
        }
        if (jF == 0) {
            return f13;
        }
        return (c(jF, f11, f12, f13) - c(jF - 1000000, f11, f12, f13)) * 1000.0f;
    }

    @Override // androidx.compose.animation.core.d0
    public long e(float f11, float f12, float f13) {
        return ((long) (this.f2444b + this.f2443a)) * 1000000;
    }
}
