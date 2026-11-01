package com.transsion.usercenter.setting.labelsfeedback.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0005J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;", "Landroid/os/Parcelable;", "id", "", "season", "", "episode", "<init>", "(Ljava/lang/String;II)V", "getId", "()Ljava/lang/String;", "getSeason", "()I", "getEpisode", "component1", "component2", "component3", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FbTvData implements Parcelable {
    public static final Parcelable.Creator<FbTvData> CREATOR = new a();
    private final int episode;
    private final String id;
    private final int season;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FbTvData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FbTvData(parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FbTvData[] newArray(int i11) {
            return new FbTvData[i11];
        }
    }

    public FbTvData(String id2, int i11, int i12) {
        Intrinsics.h(id2, "id");
        this.id = id2;
        this.season = i11;
        this.episode = i12;
    }

    public static /* synthetic */ FbTvData copy$default(FbTvData fbTvData, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = fbTvData.id;
        }
        if ((i13 & 2) != 0) {
            i11 = fbTvData.season;
        }
        if ((i13 & 4) != 0) {
            i12 = fbTvData.episode;
        }
        return fbTvData.copy(str, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEpisode() {
        return this.episode;
    }

    public final FbTvData copy(String id2, int season, int episode) {
        Intrinsics.h(id2, "id");
        return new FbTvData(id2, season, episode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FbTvData)) {
            return false;
        }
        FbTvData fbTvData = (FbTvData) other;
        return Intrinsics.c(this.id, fbTvData.id) && this.season == fbTvData.season && this.episode == fbTvData.episode;
    }

    public final int getEpisode() {
        return this.episode;
    }

    public final String getId() {
        return this.id;
    }

    public final int getSeason() {
        return this.season;
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.season) * 31) + this.episode;
    }

    public String toString() {
        return "FbTvData(id=" + this.id + ", season=" + this.season + ", episode=" + this.episode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeInt(this.season);
        dest.writeInt(this.episode);
    }
}
