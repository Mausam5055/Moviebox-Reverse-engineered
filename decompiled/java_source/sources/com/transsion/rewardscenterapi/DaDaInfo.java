package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/transsion/rewardscenterapi/DaDaInfo;", "Ljava/io/Serializable;", "isSetDefault", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DaDaInfo implements Serializable {
    private final boolean isSetDefault;

    public DaDaInfo() {
        this(false, 1, null);
    }

    public DaDaInfo(boolean z10) {
        this.isSetDefault = z10;
    }

    public /* synthetic */ DaDaInfo(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    public static /* synthetic */ DaDaInfo copy$default(DaDaInfo daDaInfo, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = daDaInfo.isSetDefault;
        }
        return daDaInfo.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSetDefault() {
        return this.isSetDefault;
    }

    public final DaDaInfo copy(boolean isSetDefault) {
        return new DaDaInfo(isSetDefault);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DaDaInfo) && this.isSetDefault == ((DaDaInfo) other).isSetDefault;
    }

    public int hashCode() {
        return e.a(this.isSetDefault);
    }

    public final boolean isSetDefault() {
        return this.isSetDefault;
    }

    public String toString() {
        return "DaDaInfo(isSetDefault=" + this.isSetDefault + ")";
    }
}
