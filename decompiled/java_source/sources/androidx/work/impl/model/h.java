package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Long f15753b;

    public h(String key, Long l11) {
        Intrinsics.h(key, "key");
        this.f15752a = key;
        this.f15753b = l11;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(String key, boolean z10) {
        this(key, Long.valueOf(z10 ? 1L : 0L));
        Intrinsics.h(key, "key");
    }

    public final String a() {
        return this.f15752a;
    }

    public final Long b() {
        return this.f15753b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.c(this.f15752a, hVar.f15752a) && Intrinsics.c(this.f15753b, hVar.f15753b);
    }

    public int hashCode() {
        int iHashCode = this.f15752a.hashCode() * 31;
        Long l11 = this.f15753b;
        return iHashCode + (l11 == null ? 0 : l11.hashCode());
    }

    public String toString() {
        return "Preference(key=" + this.f15752a + ", value=" + this.f15753b + ')';
    }
}
