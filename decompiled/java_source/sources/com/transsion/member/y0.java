package com.transsion.member;

import com.transsion.member.bean.request.MemberPromoCodeRes;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f46903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f46904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f46905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MemberPromoCodeRes f46906d;

    public y0(boolean z10, String str, String str2, MemberPromoCodeRes memberPromoCodeRes) {
        this.f46903a = z10;
        this.f46904b = str;
        this.f46905c = str2;
        this.f46906d = memberPromoCodeRes;
    }

    public final String a() {
        return this.f46904b;
    }

    public final MemberPromoCodeRes b() {
        return this.f46906d;
    }

    public final boolean c() {
        return this.f46903a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        return this.f46903a == y0Var.f46903a && Intrinsics.c(this.f46904b, y0Var.f46904b) && Intrinsics.c(this.f46905c, y0Var.f46905c) && Intrinsics.c(this.f46906d, y0Var.f46906d);
    }

    public int hashCode() {
        int iA = androidx.compose.foundation.e.a(this.f46903a) * 31;
        String str = this.f46904b;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46905c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        MemberPromoCodeRes memberPromoCodeRes = this.f46906d;
        return iHashCode2 + (memberPromoCodeRes != null ? memberPromoCodeRes.hashCode() : 0);
    }

    public String toString() {
        return "PromoCodeRes(res=" + this.f46903a + ", code=" + this.f46904b + ", message=" + this.f46905c + ", data=" + this.f46906d + ")";
    }
}
