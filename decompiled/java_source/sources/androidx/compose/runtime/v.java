package androidx.compose.runtime;

/* JADX INFO: loaded from: classes.dex */
public final class v implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f4053a;

    public v(kotlinx.coroutines.n0 n0Var) {
        this.f4053a = n0Var;
    }

    public final kotlinx.coroutines.n0 a() {
        return this.f4053a;
    }

    @Override // androidx.compose.runtime.b2
    public void onAbandoned() {
        kotlinx.coroutines.o0.c(this.f4053a, new LeftCompositionCancellationException());
    }

    @Override // androidx.compose.runtime.b2
    public void onForgotten() {
        kotlinx.coroutines.o0.c(this.f4053a, new LeftCompositionCancellationException());
    }

    @Override // androidx.compose.runtime.b2
    public void onRemembered() {
    }
}
