package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class t0 implements s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f2495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f2496b;

    public t0(Function1 function1, Function1 function2) {
        this.f2495a = function1;
        this.f2496b = function2;
    }

    @Override // androidx.compose.animation.core.s0
    public Function1 a() {
        return this.f2495a;
    }

    @Override // androidx.compose.animation.core.s0
    public Function1 b() {
        return this.f2496b;
    }
}
