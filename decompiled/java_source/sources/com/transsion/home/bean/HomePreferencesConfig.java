package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u000fHÆ\u0003J\u000f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011HÆ\u0003J\u0092\u0001\u00106\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011HÆ\u0001¢\u0006\u0002\u00107J\u0013\u00108\u001a\u00020(2\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0003HÖ\u0001J\t\u0010;\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u001c\u0010\u0016R\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0016\u0010\f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010'\u001a\u00020(8F¢\u0006\u0006\u001a\u0004\b'\u0010)¨\u0006<"}, d2 = {"Lcom/transsion/home/bean/HomePreferencesConfig;", "", "tabId", "", "labelId", "", CampaignEx.JSON_KEY_TITLE, "subTitle", "pos", "tabCode", "showStyle", "refreshType", "selectType", "maxSelectNum", "intervalTime", "Lcom/transsion/home/bean/HomePreferencesIntervalTime;", "options", "", "Lcom/transsion/home/bean/HomePreferencesContentItem;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/home/bean/HomePreferencesIntervalTime;Ljava/util/List;)V", "getTabId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLabelId", "()Ljava/lang/String;", "getTitle", "getSubTitle", "getPos", "getTabCode", "getShowStyle", "getRefreshType", "getSelectType", "getMaxSelectNum", "()I", "getIntervalTime", "()Lcom/transsion/home/bean/HomePreferencesIntervalTime;", "getOptions", "()Ljava/util/List;", "isPopStyle", "", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/home/bean/HomePreferencesIntervalTime;Ljava/util/List;)Lcom/transsion/home/bean/HomePreferencesConfig;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesConfig {
    public static final int $stable = 8;

    @SerializedName("intervalTime")
    private final HomePreferencesIntervalTime intervalTime;

    @SerializedName("labelId")
    private final String labelId;

    @SerializedName("multiChoiceNum")
    private final int maxSelectNum;

    @SerializedName("options")
    private final List<HomePreferencesContentItem> options;

    @SerializedName("pos")
    private final Integer pos;

    @SerializedName("refreshType")
    private final String refreshType;

    @SerializedName("selectType")
    private final String selectType;

    @SerializedName("showStyle")
    private final String showStyle;

    @SerializedName("subTitle")
    private final String subTitle;

    @SerializedName("tabCode")
    private final String tabCode;

    @SerializedName("tabId")
    private final Integer tabId;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private final String title;

    public HomePreferencesConfig(Integer num, String labelId, String title, String str, Integer num2, String tabCode, String showStyle, String refreshType, String selectType, int i11, HomePreferencesIntervalTime intervalTime, List<HomePreferencesContentItem> options) {
        Intrinsics.h(labelId, "labelId");
        Intrinsics.h(title, "title");
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(showStyle, "showStyle");
        Intrinsics.h(refreshType, "refreshType");
        Intrinsics.h(selectType, "selectType");
        Intrinsics.h(intervalTime, "intervalTime");
        Intrinsics.h(options, "options");
        this.tabId = num;
        this.labelId = labelId;
        this.title = title;
        this.subTitle = str;
        this.pos = num2;
        this.tabCode = tabCode;
        this.showStyle = showStyle;
        this.refreshType = refreshType;
        this.selectType = selectType;
        this.maxSelectNum = i11;
        this.intervalTime = intervalTime;
        this.options = options;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getTabId() {
        return this.tabId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getMaxSelectNum() {
        return this.maxSelectNum;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final HomePreferencesIntervalTime getIntervalTime() {
        return this.intervalTime;
    }

    public final List<HomePreferencesContentItem> component12() {
        return this.options;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLabelId() {
        return this.labelId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getPos() {
        return this.pos;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTabCode() {
        return this.tabCode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getShowStyle() {
        return this.showStyle;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getRefreshType() {
        return this.refreshType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSelectType() {
        return this.selectType;
    }

    public final HomePreferencesConfig copy(Integer tabId, String labelId, String title, String subTitle, Integer pos, String tabCode, String showStyle, String refreshType, String selectType, int maxSelectNum, HomePreferencesIntervalTime intervalTime, List<HomePreferencesContentItem> options) {
        Intrinsics.h(labelId, "labelId");
        Intrinsics.h(title, "title");
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(showStyle, "showStyle");
        Intrinsics.h(refreshType, "refreshType");
        Intrinsics.h(selectType, "selectType");
        Intrinsics.h(intervalTime, "intervalTime");
        Intrinsics.h(options, "options");
        return new HomePreferencesConfig(tabId, labelId, title, subTitle, pos, tabCode, showStyle, refreshType, selectType, maxSelectNum, intervalTime, options);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePreferencesConfig)) {
            return false;
        }
        HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) other;
        return Intrinsics.c(this.tabId, homePreferencesConfig.tabId) && Intrinsics.c(this.labelId, homePreferencesConfig.labelId) && Intrinsics.c(this.title, homePreferencesConfig.title) && Intrinsics.c(this.subTitle, homePreferencesConfig.subTitle) && Intrinsics.c(this.pos, homePreferencesConfig.pos) && Intrinsics.c(this.tabCode, homePreferencesConfig.tabCode) && Intrinsics.c(this.showStyle, homePreferencesConfig.showStyle) && Intrinsics.c(this.refreshType, homePreferencesConfig.refreshType) && Intrinsics.c(this.selectType, homePreferencesConfig.selectType) && this.maxSelectNum == homePreferencesConfig.maxSelectNum && Intrinsics.c(this.intervalTime, homePreferencesConfig.intervalTime) && Intrinsics.c(this.options, homePreferencesConfig.options);
    }

    public final HomePreferencesIntervalTime getIntervalTime() {
        return this.intervalTime;
    }

    public final String getLabelId() {
        return this.labelId;
    }

    public final int getMaxSelectNum() {
        return this.maxSelectNum;
    }

    public final List<HomePreferencesContentItem> getOptions() {
        return this.options;
    }

    public final Integer getPos() {
        return this.pos;
    }

    public final String getRefreshType() {
        return this.refreshType;
    }

    public final String getSelectType() {
        return this.selectType;
    }

    public final String getShowStyle() {
        return this.showStyle;
    }

    public final String getSubTitle() {
        return this.subTitle;
    }

    public final String getTabCode() {
        return this.tabCode;
    }

    public final Integer getTabId() {
        return this.tabId;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        Integer num = this.tabId;
        int iHashCode = (((((num == null ? 0 : num.hashCode()) * 31) + this.labelId.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.subTitle;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.pos;
        return ((((((((((((((iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 31) + this.tabCode.hashCode()) * 31) + this.showStyle.hashCode()) * 31) + this.refreshType.hashCode()) * 31) + this.selectType.hashCode()) * 31) + this.maxSelectNum) * 31) + this.intervalTime.hashCode()) * 31) + this.options.hashCode();
    }

    public final boolean isPopStyle() {
        return Intrinsics.c(this.showStyle, HomePreferencesShowStyle.POPUP.getValue()) || Intrinsics.c(this.showStyle, HomePreferencesShowStyle.ENTER_POP.getValue());
    }

    public String toString() {
        return "HomePreferencesConfig(tabId=" + this.tabId + ", labelId=" + this.labelId + ", title=" + this.title + ", subTitle=" + this.subTitle + ", pos=" + this.pos + ", tabCode=" + this.tabCode + ", showStyle=" + this.showStyle + ", refreshType=" + this.refreshType + ", selectType=" + this.selectType + ", maxSelectNum=" + this.maxSelectNum + ", intervalTime=" + this.intervalTime + ", options=" + this.options + ")";
    }
}
