package ov;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f72188b;

    public d(String userId, boolean z10) {
        Intrinsics.h(userId, "userId");
        this.f72187a = userId;
        this.f72188b = z10;
    }

    public final String a() {
        return this.f72187a;
    }

    public final boolean b() {
        return this.f72188b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f72187a, dVar.f72187a) && this.f72188b == dVar.f72188b;
    }

    public int hashCode() {
        return (this.f72187a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f72188b);
    }

    public String toString() {
        return "UGCSubscribeEvent(userId=" + this.f72187a + ", isSubscribed=" + this.f72188b + ")";
    }
}
