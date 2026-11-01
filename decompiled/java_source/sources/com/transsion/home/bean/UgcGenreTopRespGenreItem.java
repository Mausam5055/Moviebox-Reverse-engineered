package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;", "", "ugcContent", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "number", "", "stationSource", "", "<init>", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V", "getUgcContent", "()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "getNumber", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStationSource", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UgcGenreTopRespGenreItem {
    public static final int $stable = 8;

    @SerializedName("number")
    private final Integer number;

    @SerializedName("stationSource")
    private final String stationSource;

    @SerializedName("info")
    private final UGCContent ugcContent;

    public UgcGenreTopRespGenreItem() {
        this(null, null, null, 7, null);
    }

    public UgcGenreTopRespGenreItem(UGCContent uGCContent, Integer num, String str) {
        this.ugcContent = uGCContent;
        this.number = num;
        this.stationSource = str;
    }

    public /* synthetic */ UgcGenreTopRespGenreItem(UGCContent uGCContent, Integer num, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : uGCContent, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? null : str);
    }

    public static /* synthetic */ UgcGenreTopRespGenreItem copy$default(UgcGenreTopRespGenreItem ugcGenreTopRespGenreItem, UGCContent uGCContent, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            uGCContent = ugcGenreTopRespGenreItem.ugcContent;
        }
        if ((i11 & 2) != 0) {
            num = ugcGenreTopRespGenreItem.number;
        }
        if ((i11 & 4) != 0) {
            str = ugcGenreTopRespGenreItem.stationSource;
        }
        return ugcGenreTopRespGenreItem.copy(uGCContent, num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UGCContent getUgcContent() {
        return this.ugcContent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getNumber() {
        return this.number;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStationSource() {
        return this.stationSource;
    }

    public final UgcGenreTopRespGenreItem copy(UGCContent ugcContent, Integer number, String stationSource) {
        return new UgcGenreTopRespGenreItem(ugcContent, number, stationSource);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UgcGenreTopRespGenreItem)) {
            return false;
        }
        UgcGenreTopRespGenreItem ugcGenreTopRespGenreItem = (UgcGenreTopRespGenreItem) other;
        return Intrinsics.c(this.ugcContent, ugcGenreTopRespGenreItem.ugcContent) && Intrinsics.c(this.number, ugcGenreTopRespGenreItem.number) && Intrinsics.c(this.stationSource, ugcGenreTopRespGenreItem.stationSource);
    }

    public final Integer getNumber() {
        return this.number;
    }

    public final String getStationSource() {
        return this.stationSource;
    }

    public final UGCContent getUgcContent() {
        return this.ugcContent;
    }

    public int hashCode() {
        UGCContent uGCContent = this.ugcContent;
        int iHashCode = (uGCContent == null ? 0 : uGCContent.hashCode()) * 31;
        Integer num = this.number;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.stationSource;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "UgcGenreTopRespGenreItem(ugcContent=" + this.ugcContent + ", number=" + this.number + ", stationSource=" + this.stationSource + ")";
    }
}
