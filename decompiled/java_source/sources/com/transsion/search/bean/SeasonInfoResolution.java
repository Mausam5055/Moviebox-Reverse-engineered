package com.transsion.search.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ&\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/transsion/search/bean/SeasonInfoResolution;", "Ljava/io/Serializable;", "resolution", "", "epNum", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "getResolution", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEpNum", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/search/bean/SeasonInfoResolution;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SeasonInfoResolution implements Serializable {

    @SerializedName("epNum")
    private final Integer epNum;

    @SerializedName("resolution")
    private final Integer resolution;

    public SeasonInfoResolution(Integer num, Integer num2) {
        this.resolution = num;
        this.epNum = num2;
    }

    public static /* synthetic */ SeasonInfoResolution copy$default(SeasonInfoResolution seasonInfoResolution, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = seasonInfoResolution.resolution;
        }
        if ((i11 & 2) != 0) {
            num2 = seasonInfoResolution.epNum;
        }
        return seasonInfoResolution.copy(num, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getEpNum() {
        return this.epNum;
    }

    public final SeasonInfoResolution copy(Integer resolution, Integer epNum) {
        return new SeasonInfoResolution(resolution, epNum);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SeasonInfoResolution)) {
            return false;
        }
        SeasonInfoResolution seasonInfoResolution = (SeasonInfoResolution) other;
        return Intrinsics.c(this.resolution, seasonInfoResolution.resolution) && Intrinsics.c(this.epNum, seasonInfoResolution.epNum);
    }

    public final Integer getEpNum() {
        return this.epNum;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        Integer num = this.resolution;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.epNum;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public String toString() {
        return "SeasonInfoResolution(resolution=" + this.resolution + ", epNum=" + this.epNum + ")";
    }
}
