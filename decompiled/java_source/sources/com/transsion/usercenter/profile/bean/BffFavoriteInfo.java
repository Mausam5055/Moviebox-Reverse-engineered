package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "", "favoriteCount", "", "<init>", "(Ljava/lang/Integer;)V", "getFavoriteCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffFavoriteInfo {

    @SerializedName("favoriteCount")
    private final Integer favoriteCount;

    public BffFavoriteInfo(Integer num) {
        this.favoriteCount = num;
    }

    public static /* synthetic */ BffFavoriteInfo copy$default(BffFavoriteInfo bffFavoriteInfo, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = bffFavoriteInfo.favoriteCount;
        }
        return bffFavoriteInfo.copy(num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getFavoriteCount() {
        return this.favoriteCount;
    }

    public final BffFavoriteInfo copy(Integer favoriteCount) {
        return new BffFavoriteInfo(favoriteCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof BffFavoriteInfo) && Intrinsics.c(this.favoriteCount, ((BffFavoriteInfo) other).favoriteCount);
    }

    public final Integer getFavoriteCount() {
        return this.favoriteCount;
    }

    public int hashCode() {
        Integer num = this.favoriteCount;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public String toString() {
        return "BffFavoriteInfo(favoriteCount=" + this.favoriteCount + ")";
    }
}
