package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003Ju\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006)"}, d2 = {"Lcom/transsion/rewardscenterapi/DrawResult;", "Ljava/io/Serializable;", "drawResultId", "", EventConstants.KEY_SOURCE, "claimStatus", "needFill", "fillStatus", "fulfillStatus", "imgUrl", CampaignEx.JSON_KEY_TITLE, "prizeType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDrawResultId", "()Ljava/lang/String;", "getSource", "getClaimStatus", "getNeedFill", "getFillStatus", "getFulfillStatus", "getImgUrl", "getTitle", "getPrizeType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DrawResult implements Serializable {
    private final String claimStatus;
    private final String drawResultId;
    private final String fillStatus;
    private final String fulfillStatus;
    private final String imgUrl;
    private final String needFill;
    private final String prizeType;
    private final String source;
    private final String title;

    public DrawResult() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public DrawResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.drawResultId = str;
        this.source = str2;
        this.claimStatus = str3;
        this.needFill = str4;
        this.fillStatus = str5;
        this.fulfillStatus = str6;
        this.imgUrl = str7;
        this.title = str8;
        this.prizeType = str9;
    }

    public /* synthetic */ DrawResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7, (i11 & 128) != 0 ? null : str8, (i11 & 256) == 0 ? str9 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDrawResultId() {
        return this.drawResultId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getClaimStatus() {
        return this.claimStatus;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNeedFill() {
        return this.needFill;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFillStatus() {
        return this.fillStatus;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getFulfillStatus() {
        return this.fulfillStatus;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getImgUrl() {
        return this.imgUrl;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getPrizeType() {
        return this.prizeType;
    }

    public final DrawResult copy(String drawResultId, String source, String claimStatus, String needFill, String fillStatus, String fulfillStatus, String imgUrl, String title, String prizeType) {
        return new DrawResult(drawResultId, source, claimStatus, needFill, fillStatus, fulfillStatus, imgUrl, title, prizeType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DrawResult)) {
            return false;
        }
        DrawResult drawResult = (DrawResult) other;
        return Intrinsics.c(this.drawResultId, drawResult.drawResultId) && Intrinsics.c(this.source, drawResult.source) && Intrinsics.c(this.claimStatus, drawResult.claimStatus) && Intrinsics.c(this.needFill, drawResult.needFill) && Intrinsics.c(this.fillStatus, drawResult.fillStatus) && Intrinsics.c(this.fulfillStatus, drawResult.fulfillStatus) && Intrinsics.c(this.imgUrl, drawResult.imgUrl) && Intrinsics.c(this.title, drawResult.title) && Intrinsics.c(this.prizeType, drawResult.prizeType);
    }

    public final String getClaimStatus() {
        return this.claimStatus;
    }

    public final String getDrawResultId() {
        return this.drawResultId;
    }

    public final String getFillStatus() {
        return this.fillStatus;
    }

    public final String getFulfillStatus() {
        return this.fulfillStatus;
    }

    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final String getNeedFill() {
        return this.needFill;
    }

    public final String getPrizeType() {
        return this.prizeType;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.drawResultId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.source;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.claimStatus;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.needFill;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.fillStatus;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.fulfillStatus;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.imgUrl;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.title;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.prizeType;
        return iHashCode8 + (str9 != null ? str9.hashCode() : 0);
    }

    public String toString() {
        return "DrawResult(drawResultId=" + this.drawResultId + ", source=" + this.source + ", claimStatus=" + this.claimStatus + ", needFill=" + this.needFill + ", fillStatus=" + this.fillStatus + ", fulfillStatus=" + this.fulfillStatus + ", imgUrl=" + this.imgUrl + ", title=" + this.title + ", prizeType=" + this.prizeType + ")";
    }
}
