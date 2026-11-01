package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3803a;

    public l1(String str) {
        this.f3803a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l1) && Intrinsics.c(this.f3803a, ((l1) obj).f3803a);
    }

    public int hashCode() {
        return this.f3803a.hashCode();
    }

    public String toString() {
        return "OpaqueKey(key=" + this.f3803a + ')';
    }
}
