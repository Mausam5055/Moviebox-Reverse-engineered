package com.transsion.member.bean.request;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/transsion/member/bean/request/MemberPromoCodeRes;", "Ljava/io/Serializable;", "userId", "", "code", "vipDurationDays", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getUserId", "()Ljava/lang/String;", "getCode", "getVipDurationDays", "()I", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberPromoCodeRes implements Serializable {
    public static final int $stable = 0;
    private final String code;
    private final String userId;
    private final int vipDurationDays;

    public MemberPromoCodeRes(String userId, String code, int i11) {
        Intrinsics.h(userId, "userId");
        Intrinsics.h(code, "code");
        this.userId = userId;
        this.code = code;
        this.vipDurationDays = i11;
    }

    public static /* synthetic */ MemberPromoCodeRes copy$default(MemberPromoCodeRes memberPromoCodeRes, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = memberPromoCodeRes.userId;
        }
        if ((i12 & 2) != 0) {
            str2 = memberPromoCodeRes.code;
        }
        if ((i12 & 4) != 0) {
            i11 = memberPromoCodeRes.vipDurationDays;
        }
        return memberPromoCodeRes.copy(str, str2, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    public final MemberPromoCodeRes copy(String userId, String code, int vipDurationDays) {
        Intrinsics.h(userId, "userId");
        Intrinsics.h(code, "code");
        return new MemberPromoCodeRes(userId, code, vipDurationDays);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberPromoCodeRes)) {
            return false;
        }
        MemberPromoCodeRes memberPromoCodeRes = (MemberPromoCodeRes) other;
        return Intrinsics.c(this.userId, memberPromoCodeRes.userId) && Intrinsics.c(this.code, memberPromoCodeRes.code) && this.vipDurationDays == memberPromoCodeRes.vipDurationDays;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    public int hashCode() {
        return (((this.userId.hashCode() * 31) + this.code.hashCode()) * 31) + this.vipDurationDays;
    }

    public String toString() {
        return "MemberPromoCodeRes(userId=" + this.userId + ", code=" + this.code + ", vipDurationDays=" + this.vipDurationDays + ")";
    }
}
