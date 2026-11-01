package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class p0 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v0 f2481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s0 f2482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f2483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f2484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f2485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f2486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o f2487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f2488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o f2489i;

    public p0(g gVar, s0 s0Var, Object obj, Object obj2, o oVar) {
        this(gVar.a(s0Var), s0Var, obj, obj2, oVar);
    }

    public p0(v0 v0Var, s0 s0Var, Object obj, Object obj2, o oVar) {
        o oVarE;
        this.f2481a = v0Var;
        this.f2482b = s0Var;
        this.f2483c = obj2;
        this.f2484d = obj;
        this.f2485e = (o) e().a().invoke(obj);
        this.f2486f = (o) e().a().invoke(obj2);
        this.f2487g = (oVar == null || (oVarE = p.e(oVar)) == null) ? p.g((o) e().a().invoke(obj)) : oVarE;
        this.f2488h = -1L;
    }

    private final o h() {
        o oVar = this.f2489i;
        if (oVar != null) {
            return oVar;
        }
        o oVarC = this.f2481a.c(this.f2485e, this.f2486f, this.f2487g);
        this.f2489i = oVarC;
        return oVarC;
    }

    @Override // androidx.compose.animation.core.c
    public boolean a() {
        return this.f2481a.a();
    }

    @Override // androidx.compose.animation.core.c
    public o b(long j11) {
        return !c(j11) ? this.f2481a.e(j11, this.f2485e, this.f2486f, this.f2487g) : h();
    }

    @Override // androidx.compose.animation.core.c
    public /* synthetic */ boolean c(long j11) {
        return b.a(this, j11);
    }

    @Override // androidx.compose.animation.core.c
    public long d() {
        if (this.f2488h < 0) {
            this.f2488h = this.f2481a.f(this.f2485e, this.f2486f, this.f2487g);
        }
        return this.f2488h;
    }

    @Override // androidx.compose.animation.core.c
    public s0 e() {
        return this.f2482b;
    }

    @Override // androidx.compose.animation.core.c
    public Object f(long j11) {
        if (c(j11)) {
            return g();
        }
        o oVarG = this.f2481a.g(j11, this.f2485e, this.f2486f, this.f2487g);
        int iB = oVarG.b();
        for (int i11 = 0; i11 < iB; i11++) {
            if (Float.isNaN(oVarG.a(i11))) {
                k0.b("AnimationVector cannot contain a NaN. " + oVarG + ". Animation: " + this + ", playTimeNanos: " + j11);
            }
        }
        return e().b().invoke(oVarG);
    }

    @Override // androidx.compose.animation.core.c
    public Object g() {
        return this.f2483c;
    }

    public final Object i() {
        return this.f2484d;
    }

    public String toString() {
        return "TargetBasedAnimation: " + i() + " -> " + g() + ",initial velocity: " + this.f2487g + ", duration: " + d.b(this) + " ms,animationSpec: " + this.f2481a;
    }
}
