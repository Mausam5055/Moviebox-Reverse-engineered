package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MineNovelItem;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "deeplink", "icUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDeeplink", "setDeeplink", "getIcUrl", "setIcUrl", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MineNovelItem implements Serializable {

    @SerializedName("url")
    private String deeplink;

    @SerializedName(RewardPlus.ICON)
    private String icUrl;
    private String title;

    public MineNovelItem(String str, String str2, String str3) {
        this.title = str;
        this.deeplink = str2;
        this.icUrl = str3;
    }

    public static /* synthetic */ MineNovelItem copy$default(MineNovelItem mineNovelItem, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = mineNovelItem.title;
        }
        if ((i11 & 2) != 0) {
            str2 = mineNovelItem.deeplink;
        }
        if ((i11 & 4) != 0) {
            str3 = mineNovelItem.icUrl;
        }
        return mineNovelItem.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcUrl() {
        return this.icUrl;
    }

    public final MineNovelItem copy(String title, String deeplink, String icUrl) {
        return new MineNovelItem(title, deeplink, icUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MineNovelItem)) {
            return false;
        }
        MineNovelItem mineNovelItem = (MineNovelItem) other;
        return Intrinsics.c(this.title, mineNovelItem.title) && Intrinsics.c(this.deeplink, mineNovelItem.deeplink) && Intrinsics.c(this.icUrl, mineNovelItem.icUrl);
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getIcUrl() {
        return this.icUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deeplink;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.icUrl;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setIcUrl(String str) {
        this.icUrl = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "MineNovelItem(title=" + this.title + ", deeplink=" + this.deeplink + ", icUrl=" + this.icUrl + ")";
    }
}
