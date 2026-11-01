package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bHÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "Landroid/os/Parcelable;", "resource", "", "(Ljava/lang/String;)V", "getResource", "()Ljava/lang/String;", "setResource", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoMask implements Parcelable {
    public static final Parcelable.Creator<VideoMask> CREATOR = new Creator();
    private String resource;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VideoMask> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VideoMask createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VideoMask(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VideoMask[] newArray(int i11) {
            return new VideoMask[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VideoMask() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public VideoMask(String str) {
        this.resource = str;
    }

    public /* synthetic */ VideoMask(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str);
    }

    public static /* synthetic */ VideoMask copy$default(VideoMask videoMask, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = videoMask.resource;
        }
        return videoMask.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getResource() {
        return this.resource;
    }

    public final VideoMask copy(String resource) {
        return new VideoMask(resource);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof VideoMask) && Intrinsics.c(this.resource, ((VideoMask) other).resource);
    }

    public final String getResource() {
        return this.resource;
    }

    public int hashCode() {
        String str = this.resource;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setResource(String str) {
        this.resource = str;
    }

    public String toString() {
        return "VideoMask(resource=" + this.resource + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.resource);
    }
}
