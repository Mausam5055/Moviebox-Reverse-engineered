package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class e1 implements b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f2423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ c1 f2425c;

    public e1(float f11, float f12, o oVar) {
        this(f11, f12, w0.b(oVar, f11, f12));
    }

    private e1(float f11, float f12, q qVar) {
        this.f2423a = f11;
        this.f2424b = f12;
        this.f2425c = new c1(qVar);
    }

    @Override // androidx.compose.animation.core.v0
    public boolean a() {
        return this.f2425c.a();
    }

    @Override // androidx.compose.animation.core.v0
    public o c(o oVar, o oVar2, o oVar3) {
        return this.f2425c.c(oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.v0
    public o e(long j11, o oVar, o oVar2, o oVar3) {
        return this.f2425c.e(j11, oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.v0
    public long f(o oVar, o oVar2, o oVar3) {
        return this.f2425c.f(oVar, oVar2, oVar3);
    }

    @Override // androidx.compose.animation.core.v0
    public o g(long j11, o oVar, o oVar2, o oVar3) {
        return this.f2425c.g(j11, oVar, oVar2, oVar3);
    }
}
