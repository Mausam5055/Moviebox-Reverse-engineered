package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/transsion/rewardscenterapi/PrizeFlow;", "Ljava/io/Serializable;", "userName", "", "avatar", "prizeName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUserName", "()Ljava/lang/String;", "getAvatar", "getPrizeName", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PrizeFlow implements Serializable {
    private final String avatar;
    private final String prizeName;
    private final String userName;

    public PrizeFlow() {
        this(null, null, null, 7, null);
    }

    public PrizeFlow(String str, String str2, String str3) {
        this.userName = str;
        this.avatar = str2;
        this.prizeName = str3;
    }

    public /* synthetic */ PrizeFlow(String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3);
    }

    public static /* synthetic */ PrizeFlow copy$default(PrizeFlow prizeFlow, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = prizeFlow.userName;
        }
        if ((i11 & 2) != 0) {
            str2 = prizeFlow.avatar;
        }
        if ((i11 & 4) != 0) {
            str3 = prizeFlow.prizeName;
        }
        return prizeFlow.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUserName() {
        return this.userName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPrizeName() {
        return this.prizeName;
    }

    public final PrizeFlow copy(String userName, String avatar, String prizeName) {
        return new PrizeFlow(userName, avatar, prizeName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PrizeFlow)) {
            return false;
        }
        PrizeFlow prizeFlow = (PrizeFlow) other;
        return Intrinsics.c(this.userName, prizeFlow.userName) && Intrinsics.c(this.avatar, prizeFlow.avatar) && Intrinsics.c(this.prizeName, prizeFlow.prizeName);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getPrizeName() {
        return this.prizeName;
    }

    public final String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        String str = this.userName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.avatar;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.prizeName;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "PrizeFlow(userName=" + this.userName + ", avatar=" + this.avatar + ", prizeName=" + this.prizeName + ")";
    }
}
