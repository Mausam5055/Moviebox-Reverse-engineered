package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class j5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f22559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f22561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f22562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f22563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f22564g;

    public j5(int i11, int i12, String pkg, String dl_type, String codeSeatId, long j11, String ad_creative_id) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(dl_type, "dl_type");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        this.f22558a = i11;
        this.f22559b = i12;
        this.f22560c = pkg;
        this.f22561d = dl_type;
        this.f22562e = codeSeatId;
        this.f22563f = j11;
        this.f22564g = ad_creative_id;
    }

    public /* synthetic */ j5(int i11, int i12, String str, String str2, String str3, long j11, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12, str, str2, str3, (i13 & 32) != 0 ? 0L : j11, str4);
    }

    public final int a() {
        return this.f22559b;
    }

    public final String b() {
        return this.f22564g;
    }

    public final long c() {
        return this.f22563f;
    }

    public final String d() {
        return this.f22562e;
    }

    public final String e() {
        return this.f22561d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j5)) {
            return false;
        }
        j5 j5Var = (j5) obj;
        return this.f22558a == j5Var.f22558a && this.f22559b == j5Var.f22559b && Intrinsics.c(this.f22560c, j5Var.f22560c) && Intrinsics.c(this.f22561d, j5Var.f22561d) && Intrinsics.c(this.f22562e, j5Var.f22562e) && this.f22563f == j5Var.f22563f && Intrinsics.c(this.f22564g, j5Var.f22564g);
    }

    public final String f() {
        return this.f22560c;
    }

    public final int g() {
        return this.f22558a;
    }

    public int hashCode() {
        return (((((((((((this.f22558a * 31) + this.f22559b) * 31) + this.f22560c.hashCode()) * 31) + this.f22561d.hashCode()) * 31) + this.f22562e.hashCode()) * 31) + androidx.collection.s.a(this.f22563f)) * 31) + this.f22564g.hashCode();
    }

    public String toString() {
        return "AttrClickEntity(_id=" + this.f22558a + ", ac_type=" + this.f22559b + ", pkg=" + this.f22560c + ", dl_type=" + this.f22561d + ", codeSeatId=" + this.f22562e + ", click_ts=" + this.f22563f + ", ad_creative_id=" + this.f22564g + ')';
    }
}
