package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3870b;

    public p0(Object obj, Object obj2) {
        this.f3869a = obj;
        this.f3870b = obj2;
    }

    private final int a(Object obj) {
        if (obj instanceof Enum) {
            return ((Enum) obj).ordinal();
        }
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p0)) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return Intrinsics.c(this.f3869a, p0Var.f3869a) && Intrinsics.c(this.f3870b, p0Var.f3870b);
    }

    public int hashCode() {
        return (a(this.f3869a) * 31) + a(this.f3870b);
    }

    public String toString() {
        return "JoinedKey(left=" + this.f3869a + ", right=" + this.f3870b + ')';
    }
}
