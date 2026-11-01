package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006%"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/HashTagTrending;", "Landroid/os/Parcelable;", "tag", "", CampaignEx.JSON_KEY_TITLE, "tagType", "referId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getTagType", "setTagType", "getReferId", "setReferId", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HashTagTrending implements Parcelable {
    public static final Parcelable.Creator<HashTagTrending> CREATOR = new a();
    private String referId;
    private String tag;
    private String tagType;
    private String title;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HashTagTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HashTagTrending(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HashTagTrending[] newArray(int i11) {
            return new HashTagTrending[i11];
        }
    }

    public HashTagTrending() {
        this(null, null, null, null, 15, null);
    }

    public HashTagTrending(String str, String str2, String str3, String str4) {
        this.tag = str;
        this.title = str2;
        this.tagType = str3;
        this.referId = str4;
    }

    public /* synthetic */ HashTagTrending(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4);
    }

    public static /* synthetic */ HashTagTrending copy$default(HashTagTrending hashTagTrending, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = hashTagTrending.tag;
        }
        if ((i11 & 2) != 0) {
            str2 = hashTagTrending.title;
        }
        if ((i11 & 4) != 0) {
            str3 = hashTagTrending.tagType;
        }
        if ((i11 & 8) != 0) {
            str4 = hashTagTrending.referId;
        }
        return hashTagTrending.copy(str, str2, str3, str4);
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

    public final HashTagTrending copy(String tag, String title, String tagType, String referId) {
        return new HashTagTrending(tag, title, tagType, referId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HashTagTrending)) {
            return false;
        }
        HashTagTrending hashTagTrending = (HashTagTrending) other;
        return Intrinsics.c(this.tag, hashTagTrending.tag) && Intrinsics.c(this.title, hashTagTrending.title) && Intrinsics.c(this.tagType, hashTagTrending.tagType) && Intrinsics.c(this.referId, hashTagTrending.referId);
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
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
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
        return "HashTagTrending(tag=" + this.tag + ", title=" + this.title + ", tagType=" + this.tagType + ", referId=" + this.referId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tag);
        dest.writeString(this.title);
        dest.writeString(this.tagType);
        dest.writeString(this.referId);
    }
}
