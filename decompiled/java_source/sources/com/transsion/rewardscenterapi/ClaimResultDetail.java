package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ji\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006("}, d2 = {"Lcom/transsion/rewardscenterapi/ClaimResultDetail;", "Ljava/io/Serializable;", "id", "", "activityId", BidResponsed.KEY_PRICE, "Lcom/transsion/rewardscenterapi/PriceInfo;", "needClaim", "claimStatus", "needFill", "fillStatus", "fulfillStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/rewardscenterapi/PriceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getActivityId", "getPrice", "()Lcom/transsion/rewardscenterapi/PriceInfo;", "getNeedClaim", "getClaimStatus", "getNeedFill", "getFillStatus", "getFulfillStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ClaimResultDetail implements Serializable {
    private final String activityId;
    private final String claimStatus;
    private final String fillStatus;
    private final String fulfillStatus;
    private final String id;
    private final String needClaim;
    private final String needFill;
    private final PriceInfo price;

    public ClaimResultDetail() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public ClaimResultDetail(String str, String str2, PriceInfo priceInfo, String str3, String str4, String str5, String str6, String str7) {
        this.id = str;
        this.activityId = str2;
        this.price = priceInfo;
        this.needClaim = str3;
        this.claimStatus = str4;
        this.needFill = str5;
        this.fillStatus = str6;
        this.fulfillStatus = str7;
    }

    public /* synthetic */ ClaimResultDetail(String str, String str2, PriceInfo priceInfo, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : priceInfo, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) == 0 ? str7 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PriceInfo getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNeedClaim() {
        return this.needClaim;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getClaimStatus() {
        return this.claimStatus;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getNeedFill() {
        return this.needFill;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getFillStatus() {
        return this.fillStatus;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getFulfillStatus() {
        return this.fulfillStatus;
    }

    public final ClaimResultDetail copy(String id2, String activityId, PriceInfo price, String needClaim, String claimStatus, String needFill, String fillStatus, String fulfillStatus) {
        return new ClaimResultDetail(id2, activityId, price, needClaim, claimStatus, needFill, fillStatus, fulfillStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ClaimResultDetail)) {
            return false;
        }
        ClaimResultDetail claimResultDetail = (ClaimResultDetail) other;
        return Intrinsics.c(this.id, claimResultDetail.id) && Intrinsics.c(this.activityId, claimResultDetail.activityId) && Intrinsics.c(this.price, claimResultDetail.price) && Intrinsics.c(this.needClaim, claimResultDetail.needClaim) && Intrinsics.c(this.claimStatus, claimResultDetail.claimStatus) && Intrinsics.c(this.needFill, claimResultDetail.needFill) && Intrinsics.c(this.fillStatus, claimResultDetail.fillStatus) && Intrinsics.c(this.fulfillStatus, claimResultDetail.fulfillStatus);
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final String getClaimStatus() {
        return this.claimStatus;
    }

    public final String getFillStatus() {
        return this.fillStatus;
    }

    public final String getFulfillStatus() {
        return this.fulfillStatus;
    }

    public final String getId() {
        return this.id;
    }

    public final String getNeedClaim() {
        return this.needClaim;
    }

    public final String getNeedFill() {
        return this.needFill;
    }

    public final PriceInfo getPrice() {
        return this.price;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.activityId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        PriceInfo priceInfo = this.price;
        int iHashCode3 = (iHashCode2 + (priceInfo == null ? 0 : priceInfo.hashCode())) * 31;
        String str3 = this.needClaim;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.claimStatus;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.needFill;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.fillStatus;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.fulfillStatus;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "ClaimResultDetail(id=" + this.id + ", activityId=" + this.activityId + ", price=" + this.price + ", needClaim=" + this.needClaim + ", claimStatus=" + this.claimStatus + ", needFill=" + this.needFill + ", fillStatus=" + this.fillStatus + ", fulfillStatus=" + this.fulfillStatus + ")";
    }
}
