package ts;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f76352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f76355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f76356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f76357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f76358h;

    public a(String str, String subtitleResId, String str2, String str3, String str4, int i11, int i12, String str5) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        this.f76351a = str;
        this.f76352b = subtitleResId;
        this.f76353c = str2;
        this.f76354d = str3;
        this.f76355e = str4;
        this.f76356f = i11;
        this.f76357g = i12;
        this.f76358h = str5;
    }

    public final int a() {
        return this.f76356f;
    }

    public final String b() {
        return this.f76358h;
    }

    public final int c() {
        return this.f76357g;
    }

    public final String d() {
        return this.f76355e;
    }

    public final String e() {
        return this.f76351a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f76351a, aVar.f76351a) && Intrinsics.c(this.f76352b, aVar.f76352b) && Intrinsics.c(this.f76353c, aVar.f76353c) && Intrinsics.c(this.f76354d, aVar.f76354d) && Intrinsics.c(this.f76355e, aVar.f76355e) && this.f76356f == aVar.f76356f && this.f76357g == aVar.f76357g && Intrinsics.c(this.f76358h, aVar.f76358h);
    }

    public final String f() {
        return this.f76353c;
    }

    public final String g() {
        return this.f76352b;
    }

    public final String h() {
        return this.f76354d;
    }

    public int hashCode() {
        String str = this.f76351a;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.f76352b.hashCode()) * 31;
        String str2 = this.f76353c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f76354d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f76355e;
        int iHashCode4 = (((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.f76356f) * 31) + this.f76357g) * 31;
        String str5 = this.f76358h;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "ShortTvSubDownloadBean(subjectId=" + this.f76351a + ", subtitleResId=" + this.f76352b + ", subjectName=" + this.f76353c + ", titleName=" + this.f76354d + ", shorTvId=" + this.f76355e + ", ep=" + this.f76356f + ", se=" + this.f76357g + ", ops=" + this.f76358h + ")";
    }
}
