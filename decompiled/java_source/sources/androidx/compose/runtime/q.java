package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g3 f3871a;

    private q(Function0 function0) {
        this.f3871a = new s0(function0);
    }

    public /* synthetic */ q(Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0);
    }

    public g3 a() {
        return this.f3871a;
    }

    public abstract g3 b(t1 t1Var, g3 g3Var);
}
