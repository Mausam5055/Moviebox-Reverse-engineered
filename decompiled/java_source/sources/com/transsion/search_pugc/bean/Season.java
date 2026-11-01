package com.transsion.search_pugc.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003JD\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/transsion/search_pugc/bean/Season;", "Ljava/io/Serializable;", "se", "", "maxEp", "allEp", "", "resolutions", "", "Lcom/transsion/search_pugc/bean/SeasonInfoResolution;", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V", "getSe", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMaxEp", "getAllEp", "()Ljava/lang/String;", "getResolutions", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/search_pugc/bean/Season;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Season implements Serializable {

    @SerializedName("allEp")
    private final String allEp;

    @SerializedName("maxEp")
    private final Integer maxEp;

    @SerializedName("resolutions")
    private final List<SeasonInfoResolution> resolutions;

    @SerializedName("se")
    private final Integer se;

    public Season(Integer num, Integer num2, String str, List<SeasonInfoResolution> list) {
        this.se = num;
        this.maxEp = num2;
        this.allEp = str;
        this.resolutions = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Season copy$default(Season season, Integer num, Integer num2, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = season.se;
        }
        if ((i11 & 2) != 0) {
            num2 = season.maxEp;
        }
        if ((i11 & 4) != 0) {
            str = season.allEp;
        }
        if ((i11 & 8) != 0) {
            list = season.resolutions;
        }
        return season.copy(num, num2, str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getMaxEp() {
        return this.maxEp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAllEp() {
        return this.allEp;
    }

    public final List<SeasonInfoResolution> component4() {
        return this.resolutions;
    }

    public final Season copy(Integer se2, Integer maxEp, String allEp, List<SeasonInfoResolution> resolutions) {
        return new Season(se2, maxEp, allEp, resolutions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Season)) {
            return false;
        }
        Season season = (Season) other;
        return Intrinsics.c(this.se, season.se) && Intrinsics.c(this.maxEp, season.maxEp) && Intrinsics.c(this.allEp, season.allEp) && Intrinsics.c(this.resolutions, season.resolutions);
    }

    public final String getAllEp() {
        return this.allEp;
    }

    public final Integer getMaxEp() {
        return this.maxEp;
    }

    public final List<SeasonInfoResolution> getResolutions() {
        return this.resolutions;
    }

    public final Integer getSe() {
        return this.se;
    }

    public int hashCode() {
        Integer num = this.se;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.maxEp;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.allEp;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<SeasonInfoResolution> list = this.resolutions;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "Season(se=" + this.se + ", maxEp=" + this.maxEp + ", allEp=" + this.allEp + ", resolutions=" + this.resolutions + ")";
    }
}
