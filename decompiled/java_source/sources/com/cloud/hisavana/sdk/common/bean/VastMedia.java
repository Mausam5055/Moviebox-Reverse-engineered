package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003JA\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0007HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0007HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011¨\u0006*"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "Landroid/os/Parcelable;", "mediaResource", "", "delivery", NativeComponentConstants.KEY_COMPONENT_TYPE, "width", "", "height", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getDelivery", "()Ljava/lang/String;", "setDelivery", "(Ljava/lang/String;)V", "getHeight", "()I", "setHeight", "(I)V", "getMediaResource", "setMediaResource", "getType", "setType", "getWidth", "setWidth", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VastMedia implements Parcelable {
    public static final Parcelable.Creator<VastMedia> CREATOR = new Creator();
    private String delivery;
    private int height;
    private String mediaResource;
    private String type;
    private int width;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VastMedia> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastMedia createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VastMedia(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastMedia[] newArray(int i11) {
            return new VastMedia[i11];
        }
    }

    public VastMedia() {
        this(null, null, null, 0, 0, 31, null);
    }

    public VastMedia(String str, String str2, String str3, int i11, int i12) {
        this.mediaResource = str;
        this.delivery = str2;
        this.type = str3;
        this.width = i11;
        this.height = i12;
    }

    public /* synthetic */ VastMedia(String str, String str2, String str3, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, (i13 & 2) != 0 ? null : str2, (i13 & 4) == 0 ? str3 : null, (i13 & 8) != 0 ? -1 : i11, (i13 & 16) != 0 ? -1 : i12);
    }

    public static /* synthetic */ VastMedia copy$default(VastMedia vastMedia, String str, String str2, String str3, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = vastMedia.mediaResource;
        }
        if ((i13 & 2) != 0) {
            str2 = vastMedia.delivery;
        }
        String str4 = str2;
        if ((i13 & 4) != 0) {
            str3 = vastMedia.type;
        }
        String str5 = str3;
        if ((i13 & 8) != 0) {
            i11 = vastMedia.width;
        }
        int i14 = i11;
        if ((i13 & 16) != 0) {
            i12 = vastMedia.height;
        }
        return vastMedia.copy(str, str4, str5, i14, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMediaResource() {
        return this.mediaResource;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDelivery() {
        return this.delivery;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getHeight() {
        return this.height;
    }

    public final VastMedia copy(String mediaResource, String delivery, String type, int width, int height) {
        return new VastMedia(mediaResource, delivery, type, width, height);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastMedia)) {
            return false;
        }
        VastMedia vastMedia = (VastMedia) other;
        return Intrinsics.c(this.mediaResource, vastMedia.mediaResource) && Intrinsics.c(this.delivery, vastMedia.delivery) && Intrinsics.c(this.type, vastMedia.type) && this.width == vastMedia.width && this.height == vastMedia.height;
    }

    public final String getDelivery() {
        return this.delivery;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getMediaResource() {
        return this.mediaResource;
    }

    public final String getType() {
        return this.type;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.mediaResource;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.delivery;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.type;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.width) * 31) + this.height;
    }

    public final void setDelivery(String str) {
        this.delivery = str;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setMediaResource(String str) {
        this.mediaResource = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setWidth(int i11) {
        this.width = i11;
    }

    public String toString() {
        return "VastMedia(mediaResource=" + this.mediaResource + ", delivery=" + this.delivery + ", type=" + this.type + ", width=" + this.width + ", height=" + this.height + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.mediaResource);
        parcel.writeString(this.delivery);
        parcel.writeString(this.type);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }
}
