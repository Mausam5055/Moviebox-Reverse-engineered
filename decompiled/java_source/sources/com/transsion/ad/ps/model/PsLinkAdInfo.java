package com.transsion.ad.ps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ji\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010&\u001a\u00020'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020'HÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020'R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010¨\u00063"}, d2 = {"Lcom/transsion/ad/ps/model/PsLinkAdInfo;", "Landroid/os/Parcelable;", "advertiserName", "", "advertiserAvatar", "advertiserAvatarPath", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "buttonText", "url", "path", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdvertiserName", "()Ljava/lang/String;", "setAdvertiserName", "(Ljava/lang/String;)V", "getAdvertiserAvatar", "setAdvertiserAvatar", "getAdvertiserAvatarPath", "setAdvertiserAvatarPath", "getTitle", "getDesc", "getButtonText", "setButtonText", "getUrl", "setUrl", "getPath", "setPath", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PsLinkAdInfo implements Parcelable {
    public static final Parcelable.Creator<PsLinkAdInfo> CREATOR = new a();
    private String advertiserAvatar;
    private String advertiserAvatarPath;
    private String advertiserName;
    private String buttonText;
    private final String desc;
    private String path;
    private final String title;
    private String url;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PsLinkAdInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PsLinkAdInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PsLinkAdInfo[] newArray(int i11) {
            return new PsLinkAdInfo[i11];
        }
    }

    public PsLinkAdInfo() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public PsLinkAdInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.advertiserName = str;
        this.advertiserAvatar = str2;
        this.advertiserAvatarPath = str3;
        this.title = str4;
        this.desc = str5;
        this.buttonText = str6;
        this.url = str7;
        this.path = str8;
    }

    public /* synthetic */ PsLinkAdInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7, (i11 & 128) == 0 ? str8 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    public final PsLinkAdInfo copy(String advertiserName, String advertiserAvatar, String advertiserAvatarPath, String title, String desc, String buttonText, String url, String path) {
        return new PsLinkAdInfo(advertiserName, advertiserAvatar, advertiserAvatarPath, title, desc, buttonText, url, path);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsLinkAdInfo)) {
            return false;
        }
        PsLinkAdInfo psLinkAdInfo = (PsLinkAdInfo) other;
        return Intrinsics.c(this.advertiserName, psLinkAdInfo.advertiserName) && Intrinsics.c(this.advertiserAvatar, psLinkAdInfo.advertiserAvatar) && Intrinsics.c(this.advertiserAvatarPath, psLinkAdInfo.advertiserAvatarPath) && Intrinsics.c(this.title, psLinkAdInfo.title) && Intrinsics.c(this.desc, psLinkAdInfo.desc) && Intrinsics.c(this.buttonText, psLinkAdInfo.buttonText) && Intrinsics.c(this.url, psLinkAdInfo.url) && Intrinsics.c(this.path, psLinkAdInfo.path);
    }

    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.advertiserName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.advertiserAvatar;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.advertiserAvatarPath;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.title;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.desc;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.buttonText;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.url;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.path;
        return iHashCode7 + (str8 != null ? str8.hashCode() : 0);
    }

    public final void setAdvertiserAvatar(String str) {
        this.advertiserAvatar = str;
    }

    public final void setAdvertiserAvatarPath(String str) {
        this.advertiserAvatarPath = str;
    }

    public final void setAdvertiserName(String str) {
        this.advertiserName = str;
    }

    public final void setButtonText(String str) {
        this.buttonText = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "PsLinkAdInfo(advertiserName=" + this.advertiserName + ", advertiserAvatar=" + this.advertiserAvatar + ", advertiserAvatarPath=" + this.advertiserAvatarPath + ", title=" + this.title + ", desc=" + this.desc + ", buttonText=" + this.buttonText + ", url=" + this.url + ", path=" + this.path + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.advertiserName);
        dest.writeString(this.advertiserAvatar);
        dest.writeString(this.advertiserAvatarPath);
        dest.writeString(this.title);
        dest.writeString(this.desc);
        dest.writeString(this.buttonText);
        dest.writeString(this.url);
        dest.writeString(this.path);
    }
}
