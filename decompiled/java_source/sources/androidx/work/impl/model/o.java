package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15827c;

    public o(String workSpecId, int i11, int i12) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f15825a = workSpecId;
        this.f15826b = i11;
        this.f15827c = i12;
    }

    public final int a() {
        return this.f15826b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return Intrinsics.c(this.f15825a, oVar.f15825a) && this.f15826b == oVar.f15826b && this.f15827c == oVar.f15827c;
    }

    public int hashCode() {
        return (((this.f15825a.hashCode() * 31) + this.f15826b) * 31) + this.f15827c;
    }

    public String toString() {
        return "SystemIdInfo(workSpecId=" + this.f15825a + ", generation=" + this.f15826b + ", systemId=" + this.f15827c + ')';
    }
}
