package uy;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f76952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76953c;

    public c(String subjectId, boolean z10, String str) {
        Intrinsics.h(subjectId, "subjectId");
        this.f76951a = subjectId;
        this.f76952b = z10;
        this.f76953c = str;
    }

    public final boolean a() {
        return this.f76952b;
    }

    public final String b() {
        return this.f76953c;
    }

    public final String c() {
        return this.f76951a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f76951a, cVar.f76951a) && this.f76952b == cVar.f76952b && Intrinsics.c(this.f76953c, cVar.f76953c);
    }

    public int hashCode() {
        int iHashCode = ((this.f76951a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f76952b)) * 31;
        String str = this.f76953c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FavoriteEvent(subjectId=" + this.f76951a + ", favorite=" + this.f76952b + ", favoriteNum=" + this.f76953c + ")";
    }
}
