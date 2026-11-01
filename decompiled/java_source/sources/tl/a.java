package tl;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f76277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f76280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f76281e;

    public a(String filterValue, String filterName, String filterType, boolean z10, String str) {
        Intrinsics.h(filterValue, "filterValue");
        Intrinsics.h(filterName, "filterName");
        Intrinsics.h(filterType, "filterType");
        this.f76277a = filterValue;
        this.f76278b = filterName;
        this.f76279c = filterType;
        this.f76280d = z10;
        this.f76281e = str;
    }

    public /* synthetic */ a(String str, String str2, String str3, boolean z10, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, z10, (i11 & 16) != 0 ? null : str4);
    }

    public final String a() {
        return this.f76278b;
    }

    public final String b() {
        return this.f76279c;
    }

    public final String c() {
        return this.f76277a;
    }

    public final boolean d() {
        return this.f76280d;
    }

    public final void e(boolean z10) {
        this.f76280d = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f76277a, aVar.f76277a) && Intrinsics.c(this.f76278b, aVar.f76278b) && Intrinsics.c(this.f76279c, aVar.f76279c) && this.f76280d == aVar.f76280d && Intrinsics.c(this.f76281e, aVar.f76281e);
    }

    public int hashCode() {
        int iHashCode = ((((((this.f76277a.hashCode() * 31) + this.f76278b.hashCode()) * 31) + this.f76279c.hashCode()) * 31) + e.a(this.f76280d)) * 31;
        String str = this.f76281e;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilterItem(filterValue=" + this.f76277a + ", filterName=" + this.f76278b + ", filterType=" + this.f76279c + ", isSelected=" + this.f76280d + ", filterRangeValue=" + this.f76281e + ")";
    }
}
