package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c3 implements g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3677a;

    public c3(Object obj) {
        this.f3677a = obj;
    }

    @Override // androidx.compose.runtime.g3
    public Object a(n1 n1Var) {
        return this.f3677a;
    }

    public final Object b() {
        return this.f3677a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c3) && Intrinsics.c(this.f3677a, ((c3) obj).f3677a);
    }

    public int hashCode() {
        Object obj = this.f3677a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "StaticValueHolder(value=" + this.f3677a + ')';
    }
}
