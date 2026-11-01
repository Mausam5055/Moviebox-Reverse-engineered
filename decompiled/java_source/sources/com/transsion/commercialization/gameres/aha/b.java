package com.transsion.commercialization.gameres.aha;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f43783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f43784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Long f43785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f43786d;

    public b() {
        this(null, null, null, null, 15, null);
    }

    public b(Integer num, String str, Long l11, c cVar) {
        this.f43783a = num;
        this.f43784b = str;
        this.f43785c = l11;
        this.f43786d = cVar;
    }

    public /* synthetic */ b(Integer num, String str, Long l11, c cVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : l11, (i11 & 8) != 0 ? null : cVar);
    }

    public final Integer a() {
        return this.f43783a;
    }

    public final c b() {
        return this.f43786d;
    }

    public final String c() {
        return this.f43784b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f43783a, bVar.f43783a) && Intrinsics.c(this.f43784b, bVar.f43784b) && Intrinsics.c(this.f43785c, bVar.f43785c) && Intrinsics.c(this.f43786d, bVar.f43786d);
    }

    public int hashCode() {
        Integer num = this.f43783a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f43784b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l11 = this.f43785c;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        c cVar = this.f43786d;
        return iHashCode3 + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "AHAGameResDto(code=" + this.f43783a + ", message=" + this.f43784b + ", timestamp=" + this.f43785c + ", data=" + this.f43786d + ")";
    }
}
