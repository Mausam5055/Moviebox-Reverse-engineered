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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003JJ\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsion/postdetail/bean/NegativeFeedbackAction;", "", "actionType", "", CampaignEx.JSON_KEY_TITLE, "submitToastText", "sort", "", "iconUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getActionType", "()Ljava/lang/String;", "getTitle", "getSubmitToastText", "getSort", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getIconUrl", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/postdetail/bean/NegativeFeedbackAction;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class NegativeFeedbackAction {

    @SerializedName("actionType")
    private final String actionType;

    @SerializedName("iconUrl")
    private final String iconUrl;

    @SerializedName("sort")
    private final Integer sort;

    @SerializedName("submitToastText")
    private final String submitToastText;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private final String title;

    public NegativeFeedbackAction() {
        this(null, null, null, null, null, 31, null);
    }

    public NegativeFeedbackAction(String str, String str2, String str3, Integer num, String str4) {
        this.actionType = str;
        this.title = str2;
        this.submitToastText = str3;
        this.sort = num;
        this.iconUrl = str4;
    }

    public /* synthetic */ NegativeFeedbackAction(String str, String str2, String str3, Integer num, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : str4);
    }

    public static /* synthetic */ NegativeFeedbackAction copy$default(NegativeFeedbackAction negativeFeedbackAction, String str, String str2, String str3, Integer num, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = negativeFeedbackAction.actionType;
        }
        if ((i11 & 2) != 0) {
            str2 = negativeFeedbackAction.title;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = negativeFeedbackAction.submitToastText;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            num = negativeFeedbackAction.sort;
        }
        Integer num2 = num;
        if ((i11 & 16) != 0) {
            str4 = negativeFeedbackAction.iconUrl;
        }
        return negativeFeedbackAction.copy(str, str5, str6, num2, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getActionType() {
        return this.actionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSubmitToastText() {
        return this.submitToastText;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final NegativeFeedbackAction copy(String actionType, String title, String submitToastText, Integer sort, String iconUrl) {
        return new NegativeFeedbackAction(actionType, title, submitToastText, sort, iconUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NegativeFeedbackAction)) {
            return false;
        }
        NegativeFeedbackAction negativeFeedbackAction = (NegativeFeedbackAction) other;
        return Intrinsics.c(this.actionType, negativeFeedbackAction.actionType) && Intrinsics.c(this.title, negativeFeedbackAction.title) && Intrinsics.c(this.submitToastText, negativeFeedbackAction.submitToastText) && Intrinsics.c(this.sort, negativeFeedbackAction.sort) && Intrinsics.c(this.iconUrl, negativeFeedbackAction.iconUrl);
    }

    public final String getActionType() {
        return this.actionType;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getSubmitToastText() {
        return this.submitToastText;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.actionType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.submitToastText;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.sort;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.iconUrl;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "NegativeFeedbackAction(actionType=" + this.actionType + ", title=" + this.title + ", submitToastText=" + this.submitToastText + ", sort=" + this.sort + ", iconUrl=" + this.iconUrl + ")";
    }
}
