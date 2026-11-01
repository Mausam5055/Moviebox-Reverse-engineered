package com.transsion.usercenter.profile.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;", "Ljava/io/Serializable;", "entranceInfo", "Lcom/transsion/usercenter/profile/bean/EntranceInfo;", "<init>", "(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V", "getEntranceInfo", "()Lcom/transsion/usercenter/profile/bean/EntranceInfo;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProfileEntranceInfo implements Serializable {
    private final EntranceInfo entranceInfo;

    public ProfileEntranceInfo(EntranceInfo entranceInfo) {
        this.entranceInfo = entranceInfo;
    }

    public static /* synthetic */ ProfileEntranceInfo copy$default(ProfileEntranceInfo profileEntranceInfo, EntranceInfo entranceInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            entranceInfo = profileEntranceInfo.entranceInfo;
        }
        return profileEntranceInfo.copy(entranceInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final EntranceInfo getEntranceInfo() {
        return this.entranceInfo;
    }

    public final ProfileEntranceInfo copy(EntranceInfo entranceInfo) {
        return new ProfileEntranceInfo(entranceInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ProfileEntranceInfo) && Intrinsics.c(this.entranceInfo, ((ProfileEntranceInfo) other).entranceInfo);
    }

    public final EntranceInfo getEntranceInfo() {
        return this.entranceInfo;
    }

    public int hashCode() {
        EntranceInfo entranceInfo = this.entranceInfo;
        if (entranceInfo == null) {
            return 0;
        }
        return entranceInfo.hashCode();
    }

    public String toString() {
        return "ProfileEntranceInfo(entranceInfo=" + this.entranceInfo + ")";
    }
}
