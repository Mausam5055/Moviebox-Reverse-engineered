package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000fJ>\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/transsion/memberapi/PremiumConsumeRequestBean;", "", "entitlementKey", "", "entitlementProperty", "subjectId", "count", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getEntitlementKey", "()Ljava/lang/String;", "getEntitlementProperty", "getSubjectId", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/memberapi/PremiumConsumeRequestBean;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PremiumConsumeRequestBean {
    private final Integer count;
    private final String entitlementKey;
    private final String entitlementProperty;
    private final String subjectId;

    public PremiumConsumeRequestBean() {
        this(null, null, null, null, 15, null);
    }

    public PremiumConsumeRequestBean(String str, String str2, String str3, Integer num) {
        this.entitlementKey = str;
        this.entitlementProperty = str2;
        this.subjectId = str3;
        this.count = num;
    }

    public /* synthetic */ PremiumConsumeRequestBean(String str, String str2, String str3, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num);
    }

    public static /* synthetic */ PremiumConsumeRequestBean copy$default(PremiumConsumeRequestBean premiumConsumeRequestBean, String str, String str2, String str3, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = premiumConsumeRequestBean.entitlementKey;
        }
        if ((i11 & 2) != 0) {
            str2 = premiumConsumeRequestBean.entitlementProperty;
        }
        if ((i11 & 4) != 0) {
            str3 = premiumConsumeRequestBean.subjectId;
        }
        if ((i11 & 8) != 0) {
            num = premiumConsumeRequestBean.count;
        }
        return premiumConsumeRequestBean.copy(str, str2, str3, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEntitlementProperty() {
        return this.entitlementProperty;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getCount() {
        return this.count;
    }

    public final PremiumConsumeRequestBean copy(String entitlementKey, String entitlementProperty, String subjectId, Integer count) {
        return new PremiumConsumeRequestBean(entitlementKey, entitlementProperty, subjectId, count);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PremiumConsumeRequestBean)) {
            return false;
        }
        PremiumConsumeRequestBean premiumConsumeRequestBean = (PremiumConsumeRequestBean) other;
        return Intrinsics.c(this.entitlementKey, premiumConsumeRequestBean.entitlementKey) && Intrinsics.c(this.entitlementProperty, premiumConsumeRequestBean.entitlementProperty) && Intrinsics.c(this.subjectId, premiumConsumeRequestBean.subjectId) && Intrinsics.c(this.count, premiumConsumeRequestBean.count);
    }

    public final Integer getCount() {
        return this.count;
    }

    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    public final String getEntitlementProperty() {
        return this.entitlementProperty;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        String str = this.entitlementKey;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.entitlementProperty;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.subjectId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.count;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "PremiumConsumeRequestBean(entitlementKey=" + this.entitlementKey + ", entitlementProperty=" + this.entitlementProperty + ", subjectId=" + this.subjectId + ", count=" + this.count + ")";
    }
}
