package com.transsion.shorttv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J$\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0003J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lcom/transsion/shorttv/bean/RankingData;", "Landroid/os/Parcelable;", "perRow", "", "rankingHorizontal", "", "<init>", "(Ljava/lang/Integer;Z)V", "getPerRow", "()Ljava/lang/Integer;", "setPerRow", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getRankingHorizontal", "()Z", "setRankingHorizontal", "(Z)V", "component1", "component2", "copy", "(Ljava/lang/Integer;Z)Lcom/transsion/shorttv/bean/RankingData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RankingData implements Parcelable {
    public static final Parcelable.Creator<RankingData> CREATOR = new a();
    private Integer perRow;
    private transient boolean rankingHorizontal;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RankingData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RankingData(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RankingData[] newArray(int i11) {
            return new RankingData[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RankingData() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public RankingData(Integer num, boolean z10) {
        this.perRow = num;
        this.rankingHorizontal = z10;
    }

    public /* synthetic */ RankingData(Integer num, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 3 : num, (i11 & 2) != 0 ? false : z10);
    }

    public static /* synthetic */ RankingData copy$default(RankingData rankingData, Integer num, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = rankingData.perRow;
        }
        if ((i11 & 2) != 0) {
            z10 = rankingData.rankingHorizontal;
        }
        return rankingData.copy(num, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getPerRow() {
        return this.perRow;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getRankingHorizontal() {
        return this.rankingHorizontal;
    }

    public final RankingData copy(Integer perRow, boolean rankingHorizontal) {
        return new RankingData(perRow, rankingHorizontal);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RankingData)) {
            return false;
        }
        RankingData rankingData = (RankingData) other;
        return Intrinsics.c(this.perRow, rankingData.perRow) && this.rankingHorizontal == rankingData.rankingHorizontal;
    }

    public final Integer getPerRow() {
        return this.perRow;
    }

    public final boolean getRankingHorizontal() {
        return this.rankingHorizontal;
    }

    public int hashCode() {
        Integer num = this.perRow;
        return ((num == null ? 0 : num.hashCode()) * 31) + e.a(this.rankingHorizontal);
    }

    public final void setPerRow(Integer num) {
        this.perRow = num;
    }

    public final void setRankingHorizontal(boolean z10) {
        this.rankingHorizontal = z10;
    }

    public String toString() {
        return "RankingData(perRow=" + this.perRow + ", rankingHorizontal=" + this.rankingHorizontal + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        Integer num = this.perRow;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeInt(this.rankingHorizontal ? 1 : 0);
    }
}
