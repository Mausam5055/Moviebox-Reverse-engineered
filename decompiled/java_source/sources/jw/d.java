package jw;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f66320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f66321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f66322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f66323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f66324e;

    public d(String name, String str, boolean z10, String str2, int i11) {
        Intrinsics.h(name, "name");
        this.f66320a = name;
        this.f66321b = str;
        this.f66322c = z10;
        this.f66323d = str2;
        this.f66324e = i11;
    }

    public final String a() {
        return this.f66323d;
    }

    public final String b() {
        return this.f66321b;
    }

    public final int c() {
        return this.f66324e;
    }

    public final String d() {
        return this.f66320a;
    }

    public final boolean e() {
        return this.f66322c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f66320a, dVar.f66320a) && Intrinsics.c(this.f66321b, dVar.f66321b) && this.f66322c == dVar.f66322c && Intrinsics.c(this.f66323d, dVar.f66323d) && this.f66324e == dVar.f66324e;
    }

    public int hashCode() {
        int iHashCode = this.f66320a.hashCode() * 31;
        String str = this.f66321b;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + androidx.compose.foundation.e.a(this.f66322c)) * 31;
        String str2 = this.f66323d;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f66324e;
    }

    public String toString() {
        return "LinkedDeviceUiModel(name=" + this.f66320a + ", lastLoginTime=" + this.f66321b + ", isCurrentDevice=" + this.f66322c + ", iconUrl=" + this.f66323d + ", localIconRes=" + this.f66324e + ")";
    }
}
