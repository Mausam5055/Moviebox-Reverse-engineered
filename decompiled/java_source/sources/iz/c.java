package iz;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f65679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f65680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f65681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f65682e;

    public c(int i11, String str, String codecName, String str2, int i12) {
        Intrinsics.h(codecName, "codecName");
        this.f65678a = i11;
        this.f65679b = str;
        this.f65680c = codecName;
        this.f65681d = str2;
        this.f65682e = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f65678a == cVar.f65678a && Intrinsics.c(this.f65679b, cVar.f65679b) && Intrinsics.c(this.f65680c, cVar.f65680c) && Intrinsics.c(this.f65681d, cVar.f65681d) && this.f65682e == cVar.f65682e;
    }

    public int hashCode() {
        int i11 = this.f65678a * 31;
        String str = this.f65679b;
        int iHashCode = (((i11 + (str == null ? 0 : str.hashCode())) * 31) + this.f65680c.hashCode()) * 31;
        String str2 = this.f65681d;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f65682e;
    }

    public String toString() {
        return "SubtitleStream(index=" + this.f65678a + ", title=" + this.f65679b + ", codecName=" + this.f65680c + ", language=" + this.f65681d + ", disposition=" + this.f65682e + ")";
    }
}
