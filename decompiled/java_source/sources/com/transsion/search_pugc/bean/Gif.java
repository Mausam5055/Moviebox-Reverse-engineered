package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/transsion/search_pugc/bean/Gif;", "Landroid/os/Parcelable;", "videoUrl", "", "firstFrameUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getVideoUrl", "()Ljava/lang/String;", "getFirstFrameUrl", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Gif implements Parcelable {
    public static final Parcelable.Creator<Gif> CREATOR = new a();

    @SerializedName("firstFrameUrl")
    private final String firstFrameUrl;

    @SerializedName("videoUrl")
    private final String videoUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Gif createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new Gif(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Gif[] newArray(int i11) {
            return new Gif[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Gif() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public Gif(String videoUrl, String firstFrameUrl) {
        Intrinsics.h(videoUrl, "videoUrl");
        Intrinsics.h(firstFrameUrl, "firstFrameUrl");
        this.videoUrl = videoUrl;
        this.firstFrameUrl = firstFrameUrl;
    }

    public /* synthetic */ Gif(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ Gif copy$default(Gif gif, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = gif.videoUrl;
        }
        if ((i11 & 2) != 0) {
            str2 = gif.firstFrameUrl;
        }
        return gif.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    public final Gif copy(String videoUrl, String firstFrameUrl) {
        Intrinsics.h(videoUrl, "videoUrl");
        Intrinsics.h(firstFrameUrl, "firstFrameUrl");
        return new Gif(videoUrl, firstFrameUrl);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Gif)) {
            return false;
        }
        Gif gif = (Gif) other;
        return Intrinsics.c(this.videoUrl, gif.videoUrl) && Intrinsics.c(this.firstFrameUrl, gif.firstFrameUrl);
    }

    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        return (this.videoUrl.hashCode() * 31) + this.firstFrameUrl.hashCode();
    }

    public String toString() {
        return "Gif(videoUrl=" + this.videoUrl + ", firstFrameUrl=" + this.firstFrameUrl + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.videoUrl);
        dest.writeString(this.firstFrameUrl);
    }
}
