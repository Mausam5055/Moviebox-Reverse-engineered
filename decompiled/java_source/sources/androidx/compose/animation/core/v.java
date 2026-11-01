package androidx.compose.animation.core;

import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class v implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x0 f2503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s0 f2504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f2505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o f2506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f2507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o f2508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f2509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f2510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f2511i;

    public v(w wVar, s0 s0Var, Object obj, o oVar) {
        this(wVar.a(s0Var), s0Var, obj, oVar);
    }

    public v(x0 x0Var, s0 s0Var, Object obj, o oVar) {
        this.f2503a = x0Var;
        this.f2504b = s0Var;
        this.f2505c = obj;
        o oVar2 = (o) e().a().invoke(obj);
        this.f2506d = oVar2;
        this.f2507e = p.e(oVar);
        this.f2509g = e().b().invoke(x0Var.d(oVar2, oVar));
        this.f2510h = x0Var.c(oVar2, oVar);
        o oVarE = p.e(x0Var.b(d(), oVar2, oVar));
        this.f2508f = oVarE;
        int iB = oVarE.b();
        for (int i11 = 0; i11 < iB; i11++) {
            o oVar3 = this.f2508f;
            oVar3.e(i11, RangesKt.l(oVar3.a(i11), -this.f2503a.a(), this.f2503a.a()));
        }
    }

    @Override // androidx.compose.animation.core.c
    public boolean a() {
        return this.f2511i;
    }

    @Override // androidx.compose.animation.core.c
    public o b(long j11) {
        return !c(j11) ? this.f2503a.b(j11, this.f2506d, this.f2507e) : this.f2508f;
    }

    @Override // androidx.compose.animation.core.c
    public /* synthetic */ boolean c(long j11) {
        return b.a(this, j11);
    }

    @Override // androidx.compose.animation.core.c
    public long d() {
        return this.f2510h;
    }

    @Override // androidx.compose.animation.core.c
    public s0 e() {
        return this.f2504b;
    }

    @Override // androidx.compose.animation.core.c
    public Object f(long j11) {
        return !c(j11) ? e().b().invoke(this.f2503a.e(j11, this.f2506d, this.f2507e)) : g();
    }

    @Override // androidx.compose.animation.core.c
    public Object g() {
        return this.f2509g;
    }
}
