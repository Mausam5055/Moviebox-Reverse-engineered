package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0012J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/transsion/postdetail/bean/ReportReason;", "", "reportReasonId", "", CampaignEx.JSON_KEY_TITLE, "sort", "", "needDetailInput", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getReportReasonId", "()Ljava/lang/String;", "getTitle", "getSort", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getNeedDetailInput", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/transsion/postdetail/bean/ReportReason;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ReportReason {

    @SerializedName("needDetailInput")
    private final Boolean needDetailInput;

    @SerializedName("reportReasonId")
    private final String reportReasonId;

    @SerializedName("sort")
    private final Integer sort;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private final String title;

    public ReportReason() {
        this(null, null, null, null, 15, null);
    }

    public ReportReason(String str, String str2, Integer num, Boolean bool) {
        this.reportReasonId = str;
        this.title = str2;
        this.sort = num;
        this.needDetailInput = bool;
    }

    public /* synthetic */ ReportReason(String str, String str2, Integer num, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : bool);
    }

    public static /* synthetic */ ReportReason copy$default(ReportReason reportReason, String str, String str2, Integer num, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = reportReason.reportReasonId;
        }
        if ((i11 & 2) != 0) {
            str2 = reportReason.title;
        }
        if ((i11 & 4) != 0) {
            num = reportReason.sort;
        }
        if ((i11 & 8) != 0) {
            bool = reportReason.needDetailInput;
        }
        return reportReason.copy(str, str2, num, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReportReasonId() {
        return this.reportReasonId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getNeedDetailInput() {
        return this.needDetailInput;
    }

    public final ReportReason copy(String reportReasonId, String title, Integer sort, Boolean needDetailInput) {
        return new ReportReason(reportReasonId, title, sort, needDetailInput);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReportReason)) {
            return false;
        }
        ReportReason reportReason = (ReportReason) other;
        return Intrinsics.c(this.reportReasonId, reportReason.reportReasonId) && Intrinsics.c(this.title, reportReason.title) && Intrinsics.c(this.sort, reportReason.sort) && Intrinsics.c(this.needDetailInput, reportReason.needDetailInput);
    }

    public final Boolean getNeedDetailInput() {
        return this.needDetailInput;
    }

    public final String getReportReasonId() {
        return this.reportReasonId;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.reportReasonId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.sort;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.needDetailInput;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "ReportReason(reportReasonId=" + this.reportReasonId + ", title=" + this.title + ", sort=" + this.sort + ", needDetailInput=" + this.needDetailInput + ")";
    }
}
