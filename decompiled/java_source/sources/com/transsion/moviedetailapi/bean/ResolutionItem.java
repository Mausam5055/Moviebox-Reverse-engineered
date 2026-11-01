package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/transsion/moviedetailapi/bean/ResolutionItem;", "Landroid/os/Parcelable;", "resolution", "", "epNum", "<init>", "(II)V", "getResolution", "()I", "getEpNum", "component1", "component2", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ResolutionItem implements Parcelable {
    public static final Parcelable.Creator<ResolutionItem> CREATOR = new a();
    private final int epNum;
    private final int resolution;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ResolutionItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ResolutionItem(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ResolutionItem[] newArray(int i11) {
            return new ResolutionItem[i11];
        }
    }

    public ResolutionItem(int i11, int i12) {
        this.resolution = i11;
        this.epNum = i12;
    }

    public static /* synthetic */ ResolutionItem copy$default(ResolutionItem resolutionItem, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = resolutionItem.resolution;
        }
        if ((i13 & 2) != 0) {
            i12 = resolutionItem.epNum;
        }
        return resolutionItem.copy(i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getEpNum() {
        return this.epNum;
    }

    public final ResolutionItem copy(int resolution, int epNum) {
        return new ResolutionItem(resolution, epNum);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResolutionItem)) {
            return false;
        }
        ResolutionItem resolutionItem = (ResolutionItem) other;
        return this.resolution == resolutionItem.resolution && this.epNum == resolutionItem.epNum;
    }

    public final int getEpNum() {
        return this.epNum;
    }

    public final int getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        return (this.resolution * 31) + this.epNum;
    }

    public String toString() {
        return "ResolutionItem(resolution=" + this.resolution + ", epNum=" + this.epNum + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.resolution);
        dest.writeInt(this.epNum);
    }
}
