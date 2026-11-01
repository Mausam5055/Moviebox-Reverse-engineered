package com.transsion.commercialization.gameres.aha;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f43787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f43788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Double f43789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f43790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f43791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f43792f;

    public c() {
        this(null, null, null, null, null, null, 63, null);
    }

    public c(String str, String str2, Double d11, String str3, String str4, String str5) {
        this.f43787a = str;
        this.f43788b = str2;
        this.f43789c = d11;
        this.f43790d = str3;
        this.f43791e = str4;
        this.f43792f = str5;
    }

    public /* synthetic */ c(String str, String str2, Double d11, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : d11, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5);
    }

    public final String a() {
        return this.f43792f;
    }

    public final String b() {
        return this.f43791e;
    }

    public final String c() {
        return this.f43788b;
    }

    public final String d() {
        return this.f43790d;
    }

    public final Double e() {
        return this.f43789c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f43787a, cVar.f43787a) && Intrinsics.c(this.f43788b, cVar.f43788b) && Intrinsics.c(this.f43789c, cVar.f43789c) && Intrinsics.c(this.f43790d, cVar.f43790d) && Intrinsics.c(this.f43791e, cVar.f43791e) && Intrinsics.c(this.f43792f, cVar.f43792f);
    }

    public final String f() {
        return this.f43787a;
    }

    public int hashCode() {
        String str = this.f43787a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f43788b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d11 = this.f43789c;
        int iHashCode3 = (iHashCode2 + (d11 == null ? 0 : d11.hashCode())) * 31;
        String str3 = this.f43790d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f43791e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f43792f;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "AHAGameResInfo(title=" + this.f43787a + ", icon=" + this.f43788b + ", star=" + this.f43789c + ", size=" + this.f43790d + ", category=" + this.f43791e + ", appLink=" + this.f43792f + ")";
    }
}
