package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15872b;

    public x(String workSpecId, int i11) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15871a = workSpecId;
        this.f15872b = i11;
    }

    public final int a() {
        return this.f15872b;
    }

    public final String b() {
        return this.f15871a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Intrinsics.c(this.f15871a, xVar.f15871a) && this.f15872b == xVar.f15872b;
    }

    public int hashCode() {
        return (this.f15871a.hashCode() * 31) + this.f15872b;
    }

    public String toString() {
        return "WorkGenerationalId(workSpecId=" + this.f15871a + ", generation=" + this.f15872b + ')';
    }
}
