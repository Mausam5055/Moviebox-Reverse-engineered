package androidx.compose.runtime;

/* JADX INFO: loaded from: classes.dex */
final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecomposeScopeImpl f3864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f3866c;

    public o0(RecomposeScopeImpl recomposeScopeImpl, int i11, Object obj) {
        this.f3864a = recomposeScopeImpl;
        this.f3865b = i11;
        this.f3866c = obj;
    }

    public final Object a() {
        return this.f3866c;
    }

    public final int b() {
        return this.f3865b;
    }

    public final RecomposeScopeImpl c() {
        return this.f3864a;
    }

    public final boolean d() {
        return this.f3864a.u(this.f3866c);
    }

    public final void e(Object obj) {
        this.f3866c = obj;
    }
}
