package com.transsion.player.longvideo.helper;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f47961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f47962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f47963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f47964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f47965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f47966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f47967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f47968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f47969i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f47970j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f47971k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f47972l;

    public b() {
        this(null, null, null, null, null, null, null, null, 0, 0, 0, 0, UnixStat.PERM_MASK, null);
    }

    public b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, int i12, int i13, int i14) {
        this.f47961a = str;
        this.f47962b = str2;
        this.f47963c = str3;
        this.f47964d = str4;
        this.f47965e = str5;
        this.f47966f = str6;
        this.f47967g = str7;
        this.f47968h = str8;
        this.f47969i = i11;
        this.f47970j = i12;
        this.f47971k = i13;
        this.f47972l = i14;
    }

    public /* synthetic */ b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, int i12, int i13, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? null : str, (i15 & 2) != 0 ? null : str2, (i15 & 4) != 0 ? null : str3, (i15 & 8) != 0 ? null : str4, (i15 & 16) != 0 ? null : str5, (i15 & 32) != 0 ? null : str6, (i15 & 64) != 0 ? null : str7, (i15 & 128) == 0 ? str8 : null, (i15 & 256) != 0 ? 3 : i11, (i15 & 512) == 0 ? i12 : 3, (i15 & 1024) != 0 ? 24 : i13, (i15 & 2048) != 0 ? 10 : i14);
    }

    public final String a() {
        return this.f47966f;
    }

    public final String b() {
        return this.f47967g;
    }

    public final int c() {
        return this.f47971k;
    }

    public final int d() {
        return this.f47970j;
    }

    public final String e() {
        return this.f47963c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f47961a, bVar.f47961a) && Intrinsics.c(this.f47962b, bVar.f47962b) && Intrinsics.c(this.f47963c, bVar.f47963c) && Intrinsics.c(this.f47964d, bVar.f47964d) && Intrinsics.c(this.f47965e, bVar.f47965e) && Intrinsics.c(this.f47966f, bVar.f47966f) && Intrinsics.c(this.f47967g, bVar.f47967g) && Intrinsics.c(this.f47968h, bVar.f47968h) && this.f47969i == bVar.f47969i && this.f47970j == bVar.f47970j && this.f47971k == bVar.f47971k && this.f47972l == bVar.f47972l;
    }

    public final String f() {
        return this.f47962b;
    }

    public final String g() {
        return this.f47961a;
    }

    public final String h() {
        return this.f47968h;
    }

    public int hashCode() {
        String str = this.f47961a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f47962b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f47963c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f47964d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f47965e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f47966f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f47967g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f47968h;
        return ((((((((iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + this.f47969i) * 31) + this.f47970j) * 31) + this.f47971k) * 31) + this.f47972l;
    }

    public final int i() {
        return this.f47969i;
    }

    public final int j() {
        return this.f47972l;
    }

    public final String k() {
        return this.f47965e;
    }

    public final String l() {
        return this.f47964d;
    }

    public String toString() {
        return "DataOperator(layoutTitle=" + this.f47961a + ", layoutTips=" + this.f47962b + ", layoutButton=" + this.f47963c + ", title=" + this.f47964d + ", tips=" + this.f47965e + ", button=" + this.f47966f + ", buttonIcon=" + this.f47967g + ", link=" + this.f47968h + ", normalDelay=" + this.f47969i + ", fullscreenDelay=" + this.f47970j + ", displayInterval=" + this.f47971k + ", showDuration=" + this.f47972l + ")";
    }
}
