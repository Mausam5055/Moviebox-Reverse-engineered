package com.transsion.ugcvideodetail.api.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006)"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "Landroid/os/Parcelable;", "tag", "", CampaignEx.JSON_KEY_TITLE, "tagType", "referId", "deepLink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getTagType", "setTagType", "getReferId", "setReferId", "getDeepLink", "setDeepLink", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoHashTag implements Parcelable {
    public static final Parcelable.Creator<UGCVideoHashTag> CREATOR = new a();

    @SerializedName("deepLink")
    private String deepLink;

    @SerializedName("referId")
    private String referId;

    @SerializedName("tag")
    private String tag;

    @SerializedName("tagType")
    private String tagType;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCVideoHashTag createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UGCVideoHashTag(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCVideoHashTag[] newArray(int i11) {
            return new UGCVideoHashTag[i11];
        }
    }

    public UGCVideoHashTag() {
        this(null, null, null, null, null, 31, null);
    }

    public UGCVideoHashTag(String str, String str2, String str3, String str4, String str5) {
        this.tag = str;
        this.title = str2;
        this.tagType = str3;
        this.referId = str4;
        this.deepLink = str5;
    }

    public /* synthetic */ UGCVideoHashTag(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ UGCVideoHashTag copy$default(UGCVideoHashTag uGCVideoHashTag, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoHashTag.tag;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCVideoHashTag.title;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = uGCVideoHashTag.tagType;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = uGCVideoHashTag.referId;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = uGCVideoHashTag.deepLink;
        }
        return uGCVideoHashTag.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTag() {
        return this.tag;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTagType() {
        return this.tagType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getReferId() {
        return this.referId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    public final UGCVideoHashTag copy(String tag, String title, String tagType, String referId, String deepLink) {
        return new UGCVideoHashTag(tag, title, tagType, referId, deepLink);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoHashTag)) {
            return false;
        }
        UGCVideoHashTag uGCVideoHashTag = (UGCVideoHashTag) other;
        return Intrinsics.c(this.tag, uGCVideoHashTag.tag) && Intrinsics.c(this.title, uGCVideoHashTag.title) && Intrinsics.c(this.tagType, uGCVideoHashTag.tagType) && Intrinsics.c(this.referId, uGCVideoHashTag.referId) && Intrinsics.c(this.deepLink, uGCVideoHashTag.deepLink);
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getReferId() {
        return this.referId;
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getTagType() {
        return this.tagType;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.tag;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.tagType;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.referId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.deepLink;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setReferId(String str) {
        this.referId = str;
    }

    public final void setTag(String str) {
        this.tag = str;
    }

    public final void setTagType(String str) {
        this.tagType = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "UGCVideoHashTag(tag=" + this.tag + ", title=" + this.title + ", tagType=" + this.tagType + ", referId=" + this.referId + ", deepLink=" + this.deepLink + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tag);
        dest.writeString(this.title);
        dest.writeString(this.tagType);
        dest.writeString(this.referId);
        dest.writeString(this.deepLink);
    }
}
