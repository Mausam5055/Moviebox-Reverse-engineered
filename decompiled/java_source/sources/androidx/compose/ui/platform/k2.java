package androidx.compose.ui.platform;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5839b;

    public k2(String str, Object obj) {
        this.f5838a = str;
        this.f5839b = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k2)) {
            return false;
        }
        k2 k2Var = (k2) obj;
        return Intrinsics.c(this.f5838a, k2Var.f5838a) && Intrinsics.c(this.f5839b, k2Var.f5839b);
    }

    public int hashCode() {
        int iHashCode = this.f5838a.hashCode() * 31;
        Object obj = this.f5839b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "ValueElement(name=" + this.f5838a + ", value=" + this.f5839b + ')';
    }
}
