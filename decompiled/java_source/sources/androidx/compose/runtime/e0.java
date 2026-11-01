package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends s1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q2 f3693b;

    public e0(q2 q2Var, Function0 function0) {
        super(function0);
        this.f3693b = q2Var;
    }

    @Override // androidx.compose.runtime.s1
    public t1 c(Object obj) {
        return new t1(this, obj, obj == null, this.f3693b, null, null, true);
    }
}
