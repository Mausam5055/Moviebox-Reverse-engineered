package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class g2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f22456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Double f22457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f22458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f22459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f22460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f22461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f22462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f22463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f22464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f22465l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f22466m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f22467n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f22468o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f22469p;

    public g2(String ad_creative_id, String codeSeatId, int i11, Double d11, int i12, int i13, String str, String str2, String str3, int i14, String str4, String str5, String str6, String str7, String str8, String str9) {
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        Intrinsics.h(codeSeatId, "codeSeatId");
        this.f22454a = ad_creative_id;
        this.f22455b = codeSeatId;
        this.f22456c = i11;
        this.f22457d = d11;
        this.f22458e = i12;
        this.f22459f = i13;
        this.f22460g = str;
        this.f22461h = str2;
        this.f22462i = str3;
        this.f22463j = i14;
        this.f22464k = str4;
        this.f22465l = str5;
        this.f22466m = str6;
        this.f22467n = str7;
        this.f22468o = str8;
        this.f22469p = str9;
    }

    public final String a() {
        return this.f22469p;
    }

    public final String b() {
        return this.f22454a;
    }

    public final int c() {
        return this.f22458e;
    }

    public final int d() {
        return this.f22456c;
    }

    public final String e() {
        return this.f22455b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g2)) {
            return false;
        }
        g2 g2Var = (g2) obj;
        return Intrinsics.c(this.f22454a, g2Var.f22454a) && Intrinsics.c(this.f22455b, g2Var.f22455b) && this.f22456c == g2Var.f22456c && Intrinsics.c(this.f22457d, g2Var.f22457d) && this.f22458e == g2Var.f22458e && this.f22459f == g2Var.f22459f && Intrinsics.c(this.f22460g, g2Var.f22460g) && Intrinsics.c(this.f22461h, g2Var.f22461h) && Intrinsics.c(this.f22462i, g2Var.f22462i) && this.f22463j == g2Var.f22463j && Intrinsics.c(this.f22464k, g2Var.f22464k) && Intrinsics.c(this.f22465l, g2Var.f22465l) && Intrinsics.c(this.f22466m, g2Var.f22466m) && Intrinsics.c(this.f22467n, g2Var.f22467n) && Intrinsics.c(this.f22468o, g2Var.f22468o) && Intrinsics.c(this.f22469p, g2Var.f22469p);
    }

    public final String f() {
        return this.f22468o;
    }

    public final String g() {
        return this.f22467n;
    }

    public final String h() {
        return this.f22466m;
    }

    public int hashCode() {
        int iHashCode = ((((this.f22454a.hashCode() * 31) + this.f22455b.hashCode()) * 31) + this.f22456c) * 31;
        Double d11 = this.f22457d;
        int iHashCode2 = (((((iHashCode + (d11 == null ? 0 : d11.hashCode())) * 31) + this.f22458e) * 31) + this.f22459f) * 31;
        String str = this.f22460g;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f22461h;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f22462i;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f22463j) * 31;
        String str4 = this.f22464k;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f22465l;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f22466m;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f22467n;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f22468o;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f22469p;
        return iHashCode10 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String i() {
        return this.f22465l;
    }

    public final int j() {
        return this.f22463j;
    }

    public final String k() {
        return this.f22460g;
    }

    public final int l() {
        return this.f22459f;
    }

    public final String m() {
        return this.f22462i;
    }

    public final String n() {
        return this.f22464k;
    }

    public final Double o() {
        return this.f22457d;
    }

    public final String p() {
        return this.f22461h;
    }

    public String toString() {
        return "DefaultAdEntity(ad_creative_id=" + this.f22454a + ", codeSeatId=" + this.f22455b + ", ad_type=" + this.f22456c + ", price=" + this.f22457d + ", ad_request_ver=" + this.f22458e + ", displayed_times=" + this.f22459f + ", displayed_date=" + this.f22460g + ", start_date=" + this.f22461h + ", end_date=" + this.f22462i + ", display_max_times=" + this.f22463j + ", file_path=" + this.f22464k + ", default_country_white=" + this.f22465l + ", default_country_black=" + this.f22466m + ", default_brand_white=" + this.f22467n + ", default_brand_black=" + this.f22468o + ", ad_bean=" + this.f22469p + ')';
    }
}
