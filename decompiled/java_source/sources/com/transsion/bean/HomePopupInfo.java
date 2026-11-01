package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003JO\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0006\u0010&\u001a\u00020\u0007J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0007HÖ\u0001J\t\u0010,\u001a\u00020\u0005HÖ\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0018¨\u00062"}, d2 = {"Lcom/transsion/bean/HomePopupInfo;", "Landroid/os/Parcelable;", "id", "", "name", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "img", "closeDelay", "innerUrl", "externalUrl", "<init>", "(JLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getId", "()J", "getName", "()Ljava/lang/String;", "getType", "()I", "setType", "(I)V", "getImg", "setImg", "(Ljava/lang/String;)V", "getCloseDelay", "getInnerUrl", "setInnerUrl", "getExternalUrl", "setExternalUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePopupInfo implements Parcelable {
    public static final Parcelable.Creator<HomePopupInfo> CREATOR = new a();
    private final int closeDelay;
    private String externalUrl;
    private final long id;
    private String img;
    private String innerUrl;
    private final String name;
    private int type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HomePopupInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HomePopupInfo(parcel.readLong(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HomePopupInfo[] newArray(int i11) {
            return new HomePopupInfo[i11];
        }
    }

    public HomePopupInfo(long j11, String name, int i11, String img, int i12, String innerUrl, String externalUrl) {
        Intrinsics.h(name, "name");
        Intrinsics.h(img, "img");
        Intrinsics.h(innerUrl, "innerUrl");
        Intrinsics.h(externalUrl, "externalUrl");
        this.id = j11;
        this.name = name;
        this.type = i11;
        this.img = img;
        this.closeDelay = i12;
        this.innerUrl = innerUrl;
        this.externalUrl = externalUrl;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImg() {
        return this.img;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getCloseDelay() {
        return this.closeDelay;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getInnerUrl() {
        return this.innerUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getExternalUrl() {
        return this.externalUrl;
    }

    public final HomePopupInfo copy(long id2, String name, int type, String img, int closeDelay, String innerUrl, String externalUrl) {
        Intrinsics.h(name, "name");
        Intrinsics.h(img, "img");
        Intrinsics.h(innerUrl, "innerUrl");
        Intrinsics.h(externalUrl, "externalUrl");
        return new HomePopupInfo(id2, name, type, img, closeDelay, innerUrl, externalUrl);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePopupInfo)) {
            return false;
        }
        HomePopupInfo homePopupInfo = (HomePopupInfo) other;
        return this.id == homePopupInfo.id && Intrinsics.c(this.name, homePopupInfo.name) && this.type == homePopupInfo.type && Intrinsics.c(this.img, homePopupInfo.img) && this.closeDelay == homePopupInfo.closeDelay && Intrinsics.c(this.innerUrl, homePopupInfo.innerUrl) && Intrinsics.c(this.externalUrl, homePopupInfo.externalUrl);
    }

    public final int getCloseDelay() {
        return this.closeDelay;
    }

    public final String getExternalUrl() {
        return this.externalUrl;
    }

    public final long getId() {
        return this.id;
    }

    public final String getImg() {
        return this.img;
    }

    public final String getInnerUrl() {
        return this.innerUrl;
    }

    public final String getName() {
        return this.name;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((((s.a(this.id) * 31) + this.name.hashCode()) * 31) + this.type) * 31) + this.img.hashCode()) * 31) + this.closeDelay) * 31) + this.innerUrl.hashCode()) * 31) + this.externalUrl.hashCode();
    }

    public final void setExternalUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.externalUrl = str;
    }

    public final void setImg(String str) {
        Intrinsics.h(str, "<set-?>");
        this.img = str;
    }

    public final void setInnerUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.innerUrl = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public String toString() {
        return "HomePopupInfo(id=" + this.id + ", name=" + this.name + ", type=" + this.type + ", img=" + this.img + ", closeDelay=" + this.closeDelay + ", innerUrl=" + this.innerUrl + ", externalUrl=" + this.externalUrl + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeLong(this.id);
        dest.writeString(this.name);
        dest.writeInt(this.type);
        dest.writeString(this.img);
        dest.writeInt(this.closeDelay);
        dest.writeString(this.innerUrl);
        dest.writeString(this.externalUrl);
    }
}
