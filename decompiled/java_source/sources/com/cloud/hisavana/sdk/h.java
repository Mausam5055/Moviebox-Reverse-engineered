package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f22481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f22482d;

    public h(int i11, String pkg, long j11, String ad_creative_id) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        this.f22479a = i11;
        this.f22480b = pkg;
        this.f22481c = j11;
        this.f22482d = ad_creative_id;
    }

    public /* synthetic */ h(int i11, String str, long j11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, str, (i12 & 4) != 0 ? 0L : j11, str2);
    }

    public final String a() {
        return this.f22482d;
    }

    public final long b() {
        return this.f22481c;
    }

    public final String c() {
        return this.f22480b;
    }

    public final int d() {
        return this.f22479a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f22479a == hVar.f22479a && Intrinsics.c(this.f22480b, hVar.f22480b) && this.f22481c == hVar.f22481c && Intrinsics.c(this.f22482d, hVar.f22482d);
    }

    public int hashCode() {
        return (((((this.f22479a * 31) + this.f22480b.hashCode()) * 31) + androidx.collection.s.a(this.f22481c)) * 31) + this.f22482d.hashCode();
    }

    public String toString() {
        return "AttrImpressionEntity(_id=" + this.f22479a + ", pkg=" + this.f22480b + ", imp_ts=" + this.f22481c + ", ad_creative_id=" + this.f22482d + ')';
    }
}
