package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffCoverItem;", "", "coverUrl", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getCoverUrl", "()Ljava/lang/String;", "getType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/usercenter/profile/bean/BffCoverItem;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffCoverItem {

    @SerializedName("coverUrl")
    private final String coverUrl;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private final Integer type;

    public BffCoverItem(String str, Integer num) {
        this.coverUrl = str;
        this.type = num;
    }

    public static /* synthetic */ BffCoverItem copy$default(BffCoverItem bffCoverItem, String str, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bffCoverItem.coverUrl;
        }
        if ((i11 & 2) != 0) {
            num = bffCoverItem.type;
        }
        return bffCoverItem.copy(str, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    public final BffCoverItem copy(String coverUrl, Integer type) {
        return new BffCoverItem(coverUrl, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffCoverItem)) {
            return false;
        }
        BffCoverItem bffCoverItem = (BffCoverItem) other;
        return Intrinsics.c(this.coverUrl, bffCoverItem.coverUrl) && Intrinsics.c(this.type, bffCoverItem.type);
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.coverUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.type;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "BffCoverItem(coverUrl=" + this.coverUrl + ", type=" + this.type + ")";
    }
}
