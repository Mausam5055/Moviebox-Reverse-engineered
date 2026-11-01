package com.transsnet.downloader.viewmodel;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f60091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f60092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f60093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f60094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Long f60095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Long f60096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f60097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f60098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f60099i;

    public j0(int i11, String str, String str2, String str3, Long l11, Long l12, Long l13, int i12, int i13) {
        this.f60091a = i11;
        this.f60092b = str;
        this.f60093c = str2;
        this.f60094d = str3;
        this.f60095e = l11;
        this.f60096f = l12;
        this.f60097g = l13;
        this.f60098h = i12;
        this.f60099i = i13;
    }

    public final Long a() {
        return this.f60097g;
    }

    public final int b() {
        return this.f60099i;
    }

    public final int c() {
        return this.f60091a;
    }

    public final String d() {
        return this.f60093c;
    }

    public final String e() {
        return this.f60092b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.f60091a == j0Var.f60091a && Intrinsics.c(this.f60092b, j0Var.f60092b) && Intrinsics.c(this.f60093c, j0Var.f60093c) && Intrinsics.c(this.f60094d, j0Var.f60094d) && Intrinsics.c(this.f60095e, j0Var.f60095e) && Intrinsics.c(this.f60096f, j0Var.f60096f) && Intrinsics.c(this.f60097g, j0Var.f60097g) && this.f60098h == j0Var.f60098h && this.f60099i == j0Var.f60099i;
    }

    public final int f() {
        return this.f60098h;
    }

    public int hashCode() {
        int i11 = this.f60091a * 31;
        String str = this.f60092b;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f60093c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f60094d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l11 = this.f60095e;
        int iHashCode4 = (iHashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.f60096f;
        int iHashCode5 = (iHashCode4 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.f60097g;
        return ((((iHashCode5 + (l13 != null ? l13.hashCode() : 0)) * 31) + this.f60098h) * 31) + this.f60099i;
    }

    public String toString() {
        return "Video(id=" + this.f60091a + ", path=" + this.f60092b + ", name=" + this.f60093c + ", resolution=" + this.f60094d + ", size=" + this.f60095e + ", date=" + this.f60096f + ", duration=" + this.f60097g + ", width=" + this.f60098h + ", height=" + this.f60099i + ")";
    }
}
