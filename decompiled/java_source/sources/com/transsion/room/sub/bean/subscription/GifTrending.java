package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/GifTrending;", "Landroid/os/Parcelable;", "videoUrl", "", "firstFrameUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getVideoUrl", "()Ljava/lang/String;", "setVideoUrl", "(Ljava/lang/String;)V", "getFirstFrameUrl", "setFirstFrameUrl", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GifTrending implements Parcelable {
    public static final Parcelable.Creator<GifTrending> CREATOR = new a();
    private String firstFrameUrl;
    private String videoUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GifTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new GifTrending(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final GifTrending[] newArray(int i11) {
            return new GifTrending[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GifTrending() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public GifTrending(String str, String str2) {
        this.videoUrl = str;
        this.firstFrameUrl = str2;
    }

    public /* synthetic */ GifTrending(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ GifTrending copy$default(GifTrending gifTrending, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = gifTrending.videoUrl;
        }
        if ((i11 & 2) != 0) {
            str2 = gifTrending.firstFrameUrl;
        }
        return gifTrending.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    public final GifTrending copy(String videoUrl, String firstFrameUrl) {
        return new GifTrending(videoUrl, firstFrameUrl);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GifTrending)) {
            return false;
        }
        GifTrending gifTrending = (GifTrending) other;
        return Intrinsics.c(this.videoUrl, gifTrending.videoUrl) && Intrinsics.c(this.firstFrameUrl, gifTrending.firstFrameUrl);
    }

    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.videoUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.firstFrameUrl;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setFirstFrameUrl(String str) {
        this.firstFrameUrl = str;
    }

    public final void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public String toString() {
        return "GifTrending(videoUrl=" + this.videoUrl + ", firstFrameUrl=" + this.firstFrameUrl + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.videoUrl);
        dest.writeString(this.firstFrameUrl);
    }
}
