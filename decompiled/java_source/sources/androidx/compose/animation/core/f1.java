package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class f1 implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f2441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c1 f2442d;

    public f1() {
        this(0, 0, null, 7, null);
    }

    public f1(int i11, int i12, z zVar) {
        this.f2439a = i11;
        this.f2440b = i12;
        this.f2441c = zVar;
        this.f2442d = new c1(new g0(d(), b(), zVar));
    }

    public /* synthetic */ f1(int i11, int i12, z zVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 300 : i11, (i13 & 2) != 0 ? 0 : i12, (i13 & 4) != 0 ? b0.c() : zVar);
    }

    @Override // androidx.compose.animation.core.v0
    public /* synthetic */ boolean a() {
        return a1.a(this);
    }

    @Override // androidx.compose.animation.core.z0
    public int b() {
        return this.f2440b;
    }

    @Override // androidx.compose.animation.core.v0
    public /* synthetic */ o c(o oVar, o oVar2, o oVar3) {
        return u0.a(this, oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.z0
    public int d() {
        return this.f2439a;
    }

    @Override // androidx.compose.animation.core.v0
    public o e(long j11, o oVar, o oVar2, o oVar3) {
        return this.f2442d.e(j11, oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.v0
    public /* synthetic */ long f(o oVar, o oVar2, o oVar3) {
        return y0.a(this, oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.v0
    public o g(long j11, o oVar, o oVar2, o oVar3) {
        return this.f2442d.g(j11, oVar, oVar2, oVar3);
    }
}
