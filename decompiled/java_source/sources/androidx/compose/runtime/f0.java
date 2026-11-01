package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f0 implements g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i1 f3731a;

    public f0(i1 i1Var) {
        this.f3731a = i1Var;
    }

    @Override // androidx.compose.runtime.g3
    public Object a(n1 n1Var) {
        return this.f3731a.getValue();
    }

    public final i1 b() {
        return this.f3731a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f0) && Intrinsics.c(this.f3731a, ((f0) obj).f3731a);
    }

    public int hashCode() {
        return this.f3731a.hashCode();
    }

    public String toString() {
        return "DynamicValueHolder(state=" + this.f3731a + ')';
    }
}
