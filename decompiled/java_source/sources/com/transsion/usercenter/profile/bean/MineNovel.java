package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003JW\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006+"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MineNovel;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "des", "icUrl", "deeplink", "buttonText", "subItems", "", "Lcom/transsion/usercenter/profile/bean/MineNovelItem;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDes", "setDes", "getIcUrl", "setIcUrl", "getDeeplink", "setDeeplink", "getButtonText", "setButtonText", "getSubItems", "()Ljava/util/List;", "setSubItems", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MineNovel implements Serializable {
    private String buttonText;

    @SerializedName("buttonUrl")
    private String deeplink;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String des;

    @SerializedName(RewardPlus.ICON)
    private String icUrl;
    private List<MineNovelItem> subItems;
    private String title;

    public MineNovel(String str, String str2, String str3, String str4, String str5, List<MineNovelItem> list) {
        this.title = str;
        this.des = str2;
        this.icUrl = str3;
        this.deeplink = str4;
        this.buttonText = str5;
        this.subItems = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MineNovel copy$default(MineNovel mineNovel, String str, String str2, String str3, String str4, String str5, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = mineNovel.title;
        }
        if ((i11 & 2) != 0) {
            str2 = mineNovel.des;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = mineNovel.icUrl;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = mineNovel.deeplink;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = mineNovel.buttonText;
        }
        String str9 = str5;
        if ((i11 & 32) != 0) {
            list = mineNovel.subItems;
        }
        return mineNovel.copy(str, str6, str7, str8, str9, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDes() {
        return this.des;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcUrl() {
        return this.icUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    public final List<MineNovelItem> component6() {
        return this.subItems;
    }

    public final MineNovel copy(String title, String des, String icUrl, String deeplink, String buttonText, List<MineNovelItem> subItems) {
        return new MineNovel(title, des, icUrl, deeplink, buttonText, subItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MineNovel)) {
            return false;
        }
        MineNovel mineNovel = (MineNovel) other;
        return Intrinsics.c(this.title, mineNovel.title) && Intrinsics.c(this.des, mineNovel.des) && Intrinsics.c(this.icUrl, mineNovel.icUrl) && Intrinsics.c(this.deeplink, mineNovel.deeplink) && Intrinsics.c(this.buttonText, mineNovel.buttonText) && Intrinsics.c(this.subItems, mineNovel.subItems);
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDes() {
        return this.des;
    }

    public final String getIcUrl() {
        return this.icUrl;
    }

    public final List<MineNovelItem> getSubItems() {
        return this.subItems;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.des;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.icUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.deeplink;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.buttonText;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<MineNovelItem> list = this.subItems;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final void setButtonText(String str) {
        this.buttonText = str;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setDes(String str) {
        this.des = str;
    }

    public final void setIcUrl(String str) {
        this.icUrl = str;
    }

    public final void setSubItems(List<MineNovelItem> list) {
        this.subItems = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "MineNovel(title=" + this.title + ", des=" + this.des + ", icUrl=" + this.icUrl + ", deeplink=" + this.deeplink + ", buttonText=" + this.buttonText + ", subItems=" + this.subItems + ")";
    }
}
