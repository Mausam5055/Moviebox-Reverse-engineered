package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.baselib.db.download.VipInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003J=\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0006\u0010$\u001a\u00020\u0003J\u0013\u0010%\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "Landroid/os/Parcelable;", "resolution", "", "averageSize", "", "isSelected", "", "requireMemberType", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "<init>", "(IJZILcom/transsion/baselib/db/download/VipInfo;)V", "getResolution", "()I", "setResolution", "(I)V", "getAverageSize", "()J", "setAverageSize", "(J)V", "()Z", "setSelected", "(Z)V", "getRequireMemberType", "setRequireMemberType", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadResolutionItem implements Parcelable {
    public static final Parcelable.Creator<DownloadResolutionItem> CREATOR = new a();
    private long averageSize;
    private transient boolean isSelected;
    private int requireMemberType;
    private int resolution;
    private VipInfo vipInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DownloadResolutionItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new DownloadResolutionItem(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readInt(), (VipInfo) parcel.readParcelable(DownloadResolutionItem.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final DownloadResolutionItem[] newArray(int i11) {
            return new DownloadResolutionItem[i11];
        }
    }

    public DownloadResolutionItem(int i11, long j11, boolean z10, int i12, VipInfo vipInfo) {
        this.resolution = i11;
        this.averageSize = j11;
        this.isSelected = z10;
        this.requireMemberType = i12;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ DownloadResolutionItem(int i11, long j11, boolean z10, int i12, VipInfo vipInfo, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, j11, (i13 & 4) != 0 ? false : z10, i12, (i13 & 16) != 0 ? null : vipInfo);
    }

    public static /* synthetic */ DownloadResolutionItem copy$default(DownloadResolutionItem downloadResolutionItem, int i11, long j11, boolean z10, int i12, VipInfo vipInfo, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = downloadResolutionItem.resolution;
        }
        if ((i13 & 2) != 0) {
            j11 = downloadResolutionItem.averageSize;
        }
        long j12 = j11;
        if ((i13 & 4) != 0) {
            z10 = downloadResolutionItem.isSelected;
        }
        boolean z11 = z10;
        if ((i13 & 8) != 0) {
            i12 = downloadResolutionItem.requireMemberType;
        }
        int i14 = i12;
        if ((i13 & 16) != 0) {
            vipInfo = downloadResolutionItem.vipInfo;
        }
        return downloadResolutionItem.copy(i11, j12, z11, i14, vipInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getAverageSize() {
        return this.averageSize;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getRequireMemberType() {
        return this.requireMemberType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public final DownloadResolutionItem copy(int resolution, long averageSize, boolean isSelected, int requireMemberType, VipInfo vipInfo) {
        return new DownloadResolutionItem(resolution, averageSize, isSelected, requireMemberType, vipInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadResolutionItem)) {
            return false;
        }
        DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) other;
        return this.resolution == downloadResolutionItem.resolution && this.averageSize == downloadResolutionItem.averageSize && this.isSelected == downloadResolutionItem.isSelected && this.requireMemberType == downloadResolutionItem.requireMemberType && Intrinsics.c(this.vipInfo, downloadResolutionItem.vipInfo);
    }

    public final long getAverageSize() {
        return this.averageSize;
    }

    public final int getRequireMemberType() {
        return this.requireMemberType;
    }

    public final int getResolution() {
        return this.resolution;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        int iA = ((((((this.resolution * 31) + s.a(this.averageSize)) * 31) + e.a(this.isSelected)) * 31) + this.requireMemberType) * 31;
        VipInfo vipInfo = this.vipInfo;
        return iA + (vipInfo == null ? 0 : vipInfo.hashCode());
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setAverageSize(long j11) {
        this.averageSize = j11;
    }

    public final void setRequireMemberType(int i11) {
        this.requireMemberType = i11;
    }

    public final void setResolution(int i11) {
        this.resolution = i11;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public String toString() {
        return "DownloadResolutionItem(resolution=" + this.resolution + ", averageSize=" + this.averageSize + ", isSelected=" + this.isSelected + ", requireMemberType=" + this.requireMemberType + ", vipInfo=" + this.vipInfo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.resolution);
        dest.writeLong(this.averageSize);
        dest.writeInt(this.isSelected ? 1 : 0);
        dest.writeInt(this.requireMemberType);
        dest.writeParcelable(this.vipInfo, flags);
    }
}
