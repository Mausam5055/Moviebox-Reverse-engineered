package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jc\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006$"}, d2 = {"Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;", "", "postId", "", "authorId", "actionType", "reportReasonId", "reportDetail", "reportImageTempKeys", "", "contact", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getPostId", "()Ljava/lang/String;", "getAuthorId", "getActionType", "getReportReasonId", "getReportDetail", "getReportImageTempKeys", "()Ljava/util/List;", "getContact", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class NegativeFeedbackRequest {

    @SerializedName("actionType")
    private final String actionType;

    @SerializedName("authorId")
    private final String authorId;

    @SerializedName("contact")
    private final String contact;

    @SerializedName("postId")
    private final String postId;

    @SerializedName("reportDetail")
    private final String reportDetail;

    @SerializedName("reportImageTempKeys")
    private final List<String> reportImageTempKeys;

    @SerializedName("reportReasonId")
    private final String reportReasonId;

    public NegativeFeedbackRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public NegativeFeedbackRequest(String str, String str2, String str3, String str4, String str5, List<String> list, String str6) {
        this.postId = str;
        this.authorId = str2;
        this.actionType = str3;
        this.reportReasonId = str4;
        this.reportDetail = str5;
        this.reportImageTempKeys = list;
        this.contact = str6;
    }

    public /* synthetic */ NegativeFeedbackRequest(String str, String str2, String str3, String str4, String str5, List list, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : list, (i11 & 64) != 0 ? null : str6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NegativeFeedbackRequest copy$default(NegativeFeedbackRequest negativeFeedbackRequest, String str, String str2, String str3, String str4, String str5, List list, String str6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = negativeFeedbackRequest.postId;
        }
        if ((i11 & 2) != 0) {
            str2 = negativeFeedbackRequest.authorId;
        }
        String str7 = str2;
        if ((i11 & 4) != 0) {
            str3 = negativeFeedbackRequest.actionType;
        }
        String str8 = str3;
        if ((i11 & 8) != 0) {
            str4 = negativeFeedbackRequest.reportReasonId;
        }
        String str9 = str4;
        if ((i11 & 16) != 0) {
            str5 = negativeFeedbackRequest.reportDetail;
        }
        String str10 = str5;
        if ((i11 & 32) != 0) {
            list = negativeFeedbackRequest.reportImageTempKeys;
        }
        List list2 = list;
        if ((i11 & 64) != 0) {
            str6 = negativeFeedbackRequest.contact;
        }
        return negativeFeedbackRequest.copy(str, str7, str8, str9, str10, list2, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAuthorId() {
        return this.authorId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getActionType() {
        return this.actionType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getReportReasonId() {
        return this.reportReasonId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getReportDetail() {
        return this.reportDetail;
    }

    public final List<String> component6() {
        return this.reportImageTempKeys;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getContact() {
        return this.contact;
    }

    public final NegativeFeedbackRequest copy(String postId, String authorId, String actionType, String reportReasonId, String reportDetail, List<String> reportImageTempKeys, String contact) {
        return new NegativeFeedbackRequest(postId, authorId, actionType, reportReasonId, reportDetail, reportImageTempKeys, contact);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NegativeFeedbackRequest)) {
            return false;
        }
        NegativeFeedbackRequest negativeFeedbackRequest = (NegativeFeedbackRequest) other;
        return Intrinsics.c(this.postId, negativeFeedbackRequest.postId) && Intrinsics.c(this.authorId, negativeFeedbackRequest.authorId) && Intrinsics.c(this.actionType, negativeFeedbackRequest.actionType) && Intrinsics.c(this.reportReasonId, negativeFeedbackRequest.reportReasonId) && Intrinsics.c(this.reportDetail, negativeFeedbackRequest.reportDetail) && Intrinsics.c(this.reportImageTempKeys, negativeFeedbackRequest.reportImageTempKeys) && Intrinsics.c(this.contact, negativeFeedbackRequest.contact);
    }

    public final String getActionType() {
        return this.actionType;
    }

    public final String getAuthorId() {
        return this.authorId;
    }

    public final String getContact() {
        return this.contact;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getReportDetail() {
        return this.reportDetail;
    }

    public final List<String> getReportImageTempKeys() {
        return this.reportImageTempKeys;
    }

    public final String getReportReasonId() {
        return this.reportReasonId;
    }

    public int hashCode() {
        String str = this.postId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.authorId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.actionType;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.reportReasonId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.reportDetail;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<String> list = this.reportImageTempKeys;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str6 = this.contact;
        return iHashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    public String toString() {
        return "NegativeFeedbackRequest(postId=" + this.postId + ", authorId=" + this.authorId + ", actionType=" + this.actionType + ", reportReasonId=" + this.reportReasonId + ", reportDetail=" + this.reportDetail + ", reportImageTempKeys=" + this.reportImageTempKeys + ", contact=" + this.contact + ")";
    }
}
