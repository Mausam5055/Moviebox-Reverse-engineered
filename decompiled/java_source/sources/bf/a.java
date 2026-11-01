package bf;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f16458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f16459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f16460e;

    public a() {
        this(null, null, null, null, null, 31, null);
    }

    public a(String str, String str2, String str3, Integer num, Integer num2) {
        this.f16456a = str;
        this.f16457b = str2;
        this.f16458c = str3;
        this.f16459d = num;
        this.f16460e = num2;
    }

    public /* synthetic */ a(String str, String str2, String str3, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : num2);
    }

    public final String a() {
        return this.f16458c;
    }

    public final Integer b() {
        return this.f16460e;
    }

    public final Integer c() {
        return this.f16459d;
    }

    public final String d() {
        return this.f16457b;
    }

    public final String e() {
        return this.f16456a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f16456a, aVar.f16456a) && Intrinsics.c(this.f16457b, aVar.f16457b) && Intrinsics.c(this.f16458c, aVar.f16458c) && Intrinsics.c(this.f16459d, aVar.f16459d) && Intrinsics.c(this.f16460e, aVar.f16460e);
    }

    public int hashCode() {
        String str = this.f16456a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f16457b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f16458c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.f16459d;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f16460e;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "DialogInfo(title=" + this.f16456a + ", subtitle=" + this.f16457b + ", buttonText=" + this.f16458c + ", iconResId=" + this.f16459d + ", iconBgColorResId=" + this.f16460e + ")";
    }
}
