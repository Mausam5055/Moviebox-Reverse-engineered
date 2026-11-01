package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class b0 implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f3672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c0 f3673b;

    public b0(Function1 function1) {
        this.f3672a = function1;
    }

    @Override // androidx.compose.runtime.b2
    public void onAbandoned() {
    }

    @Override // androidx.compose.runtime.b2
    public void onForgotten() {
        c0 c0Var = this.f3673b;
        if (c0Var != null) {
            c0Var.dispose();
        }
        this.f3673b = null;
    }

    @Override // androidx.compose.runtime.b2
    public void onRemembered() {
        this.f3673b = (c0) this.f3672a.invoke(g0.f3733a);
    }
}
