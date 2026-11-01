package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JW\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000e¨\u0006\""}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffNovelEntry;", "", CampaignEx.JSON_KEY_TITLE, "", RewardPlus.ICON, "buttonText", "buttonUrl", "subItems", "", "Lcom/transsion/usercenter/profile/bean/BffNovelSubItem;", TrackingKey.DESCRIPTION, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "getIcon", "getButtonText", "getButtonUrl", "getSubItems", "()Ljava/util/List;", "getDescription", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffNovelEntry {

    @SerializedName("buttonText")
    private final String buttonText;

    @SerializedName("buttonUrl")
    private final String buttonUrl;

    @SerializedName(TrackingKey.DESCRIPTION)
    private final String description;

    @SerializedName(RewardPlus.ICON)
    private final String icon;

    @SerializedName("subItems")
    private final List<BffNovelSubItem> subItems;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private final String title;

    public BffNovelEntry(String str, String str2, String str3, String str4, List<BffNovelSubItem> list, String str5) {
        this.title = str;
        this.icon = str2;
        this.buttonText = str3;
        this.buttonUrl = str4;
        this.subItems = list;
        this.description = str5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BffNovelEntry copy$default(BffNovelEntry bffNovelEntry, String str, String str2, String str3, String str4, List list, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bffNovelEntry.title;
        }
        if ((i11 & 2) != 0) {
            str2 = bffNovelEntry.icon;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = bffNovelEntry.buttonText;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = bffNovelEntry.buttonUrl;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            list = bffNovelEntry.subItems;
        }
        List list2 = list;
        if ((i11 & 32) != 0) {
            str5 = bffNovelEntry.description;
        }
        return bffNovelEntry.copy(str, str6, str7, str8, list2, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getButtonUrl() {
        return this.buttonUrl;
    }

    public final List<BffNovelSubItem> component5() {
        return this.subItems;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final BffNovelEntry copy(String title, String icon, String buttonText, String buttonUrl, List<BffNovelSubItem> subItems, String description) {
        return new BffNovelEntry(title, icon, buttonText, buttonUrl, subItems, description);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffNovelEntry)) {
            return false;
        }
        BffNovelEntry bffNovelEntry = (BffNovelEntry) other;
        return Intrinsics.c(this.title, bffNovelEntry.title) && Intrinsics.c(this.icon, bffNovelEntry.icon) && Intrinsics.c(this.buttonText, bffNovelEntry.buttonText) && Intrinsics.c(this.buttonUrl, bffNovelEntry.buttonUrl) && Intrinsics.c(this.subItems, bffNovelEntry.subItems) && Intrinsics.c(this.description, bffNovelEntry.description);
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getButtonUrl() {
        return this.buttonUrl;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final List<BffNovelSubItem> getSubItems() {
        return this.subItems;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.icon;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.buttonText;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.buttonUrl;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<BffNovelSubItem> list = this.subItems;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        String str5 = this.description;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "BffNovelEntry(title=" + this.title + ", icon=" + this.icon + ", buttonText=" + this.buttonText + ", buttonUrl=" + this.buttonUrl + ", subItems=" + this.subItems + ", description=" + this.description + ")";
    }
}
