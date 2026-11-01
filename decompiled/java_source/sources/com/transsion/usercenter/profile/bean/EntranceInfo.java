package com.transsion.usercenter.profile.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J7\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/transsion/usercenter/profile/bean/EntranceInfo;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", TrackingKey.DESCRIPTION, "jumpType", "", "jumpUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "getDescription", "getJumpType", "()I", "getJumpUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class EntranceInfo implements Serializable {
    private final String description;
    private final int jumpType;
    private final String jumpUrl;
    private final String title;

    public EntranceInfo(String str, String str2, int i11, String str3) {
        this.title = str;
        this.description = str2;
        this.jumpType = i11;
        this.jumpUrl = str3;
    }

    public static /* synthetic */ EntranceInfo copy$default(EntranceInfo entranceInfo, String str, String str2, int i11, String str3, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = entranceInfo.title;
        }
        if ((i12 & 2) != 0) {
            str2 = entranceInfo.description;
        }
        if ((i12 & 4) != 0) {
            i11 = entranceInfo.jumpType;
        }
        if ((i12 & 8) != 0) {
            str3 = entranceInfo.jumpUrl;
        }
        return entranceInfo.copy(str, str2, i11, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getJumpType() {
        return this.jumpType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    public final EntranceInfo copy(String title, String description, int jumpType, String jumpUrl) {
        return new EntranceInfo(title, description, jumpType, jumpUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EntranceInfo)) {
            return false;
        }
        EntranceInfo entranceInfo = (EntranceInfo) other;
        return Intrinsics.c(this.title, entranceInfo.title) && Intrinsics.c(this.description, entranceInfo.description) && this.jumpType == entranceInfo.jumpType && Intrinsics.c(this.jumpUrl, entranceInfo.jumpUrl);
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getJumpType() {
        return this.jumpType;
    }

    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.jumpType) * 31;
        String str3 = this.jumpUrl;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "EntranceInfo(title=" + this.title + ", description=" + this.description + ", jumpType=" + this.jumpType + ", jumpUrl=" + this.jumpUrl + ")";
    }
}
