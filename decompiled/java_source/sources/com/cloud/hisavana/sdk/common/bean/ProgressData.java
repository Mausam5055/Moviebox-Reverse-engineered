package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J<\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u001aJ\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u001c\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J\u0019\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006'"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "Landroid/os/Parcelable;", "videoPlayTimeType", "", NotificationCompat.CATEGORY_PROGRESS, "duration", "isOverQuarter", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "getDuration", "()Ljava/lang/Integer;", "setDuration", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "()Z", "setOverQuarter", "(Z)V", "getProgress", "setProgress", "getVideoPlayTimeType", "setVideoPlayTimeType", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProgressData implements Parcelable {
    public static final Parcelable.Creator<ProgressData> CREATOR = new Creator();
    private Integer duration;
    private boolean isOverQuarter;
    private Integer progress;
    private Integer videoPlayTimeType;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<ProgressData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ProgressData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ProgressData(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ProgressData[] newArray(int i11) {
            return new ProgressData[i11];
        }
    }

    public ProgressData() {
        this(null, null, null, false, 15, null);
    }

    public ProgressData(Integer num, Integer num2, Integer num3, boolean z10) {
        this.videoPlayTimeType = num;
        this.progress = num2;
        this.duration = num3;
        this.isOverQuarter = z10;
    }

    public /* synthetic */ ProgressData(Integer num, Integer num2, Integer num3, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -1 : num, (i11 & 2) != 0 ? 0 : num2, (i11 & 4) != 0 ? 0 : num3, (i11 & 8) != 0 ? false : z10);
    }

    public static /* synthetic */ ProgressData copy$default(ProgressData progressData, Integer num, Integer num2, Integer num3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = progressData.videoPlayTimeType;
        }
        if ((i11 & 2) != 0) {
            num2 = progressData.progress;
        }
        if ((i11 & 4) != 0) {
            num3 = progressData.duration;
        }
        if ((i11 & 8) != 0) {
            z10 = progressData.isOverQuarter;
        }
        return progressData.copy(num, num2, num3, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getVideoPlayTimeType() {
        return this.videoPlayTimeType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsOverQuarter() {
        return this.isOverQuarter;
    }

    public final ProgressData copy(Integer videoPlayTimeType, Integer progress, Integer duration, boolean isOverQuarter) {
        return new ProgressData(videoPlayTimeType, progress, duration, isOverQuarter);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProgressData)) {
            return false;
        }
        ProgressData progressData = (ProgressData) other;
        return Intrinsics.c(this.videoPlayTimeType, progressData.videoPlayTimeType) && Intrinsics.c(this.progress, progressData.progress) && Intrinsics.c(this.duration, progressData.duration) && this.isOverQuarter == progressData.isOverQuarter;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final Integer getProgress() {
        return this.progress;
    }

    public final Integer getVideoPlayTimeType() {
        return this.videoPlayTimeType;
    }

    public int hashCode() {
        Integer num = this.videoPlayTimeType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.progress;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.duration;
        return ((iHashCode2 + (num3 != null ? num3.hashCode() : 0)) * 31) + e.a(this.isOverQuarter);
    }

    public final boolean isOverQuarter() {
        return this.isOverQuarter;
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setOverQuarter(boolean z10) {
        this.isOverQuarter = z10;
    }

    public final void setProgress(Integer num) {
        this.progress = num;
    }

    public final void setVideoPlayTimeType(Integer num) {
        this.videoPlayTimeType = num;
    }

    public String toString() {
        return "ProgressData(videoPlayTimeType=" + this.videoPlayTimeType + ", progress=" + this.progress + ", duration=" + this.duration + ", isOverQuarter=" + this.isOverQuarter + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        Integer num = this.videoPlayTimeType;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.progress;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.duration;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        parcel.writeInt(this.isOverQuarter ? 1 : 0);
    }
}
