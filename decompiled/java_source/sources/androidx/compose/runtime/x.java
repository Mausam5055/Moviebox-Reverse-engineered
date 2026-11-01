package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x implements g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f4064a;

    public x(Function1 function1) {
        this.f4064a = function1;
    }

    @Override // androidx.compose.runtime.g3
    public Object a(n1 n1Var) {
        return this.f4064a.invoke(n1Var);
    }

    public final Function1 b() {
        return this.f4064a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && Intrinsics.c(this.f4064a, ((x) obj).f4064a);
    }

    public int hashCode() {
        return this.f4064a.hashCode();
    }

    public String toString() {
        return "ComputedValueHolder(compute=" + this.f4064a + ')';
    }
}
