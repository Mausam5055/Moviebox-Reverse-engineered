package com.transsion.ugcvideodetail.api.bean;

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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003JE\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0006\u0010(\u001a\u00020)J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020)HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u00065"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Landroid/os/Parcelable;", "topicType", "", "video", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "collection", "Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "verticalRank", "Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "hashTag", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "<init>", "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V", "getTopicType", "()Ljava/lang/String;", "setTopicType", "(Ljava/lang/String;)V", "getVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "setVideo", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "getCollection", "()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;", "setCollection", "(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;)V", "getVerticalRank", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;", "setVerticalRank", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V", "getHashTag", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "setHashTag", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCContent implements Parcelable {
    public static final Parcelable.Creator<UGCContent> CREATOR = new a();

    @SerializedName("collection")
    private UGCCollection collection;

    @SerializedName("hashTag")
    private UGCVideoHashTag hashTag;

    @SerializedName("topicType")
    private String topicType;

    @SerializedName("verticalRank")
    private UGCVerticalRank verticalRank;

    @SerializedName("video")
    private UGCVideo video;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCContent createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UGCContent(parcel.readString(), (UGCVideo) parcel.readSerializable(), parcel.readInt() == 0 ? null : UGCCollection.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : UGCVerticalRank.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? UGCVideoHashTag.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCContent[] newArray(int i11) {
            return new UGCContent[i11];
        }
    }

    public UGCContent() {
        this(null, null, null, null, null, 31, null);
    }

    public UGCContent(String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag) {
        this.topicType = str;
        this.video = uGCVideo;
        this.collection = uGCCollection;
        this.verticalRank = uGCVerticalRank;
        this.hashTag = uGCVideoHashTag;
    }

    public /* synthetic */ UGCContent(String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : uGCVideo, (i11 & 4) != 0 ? null : uGCCollection, (i11 & 8) != 0 ? null : uGCVerticalRank, (i11 & 16) != 0 ? null : uGCVideoHashTag);
    }

    public static /* synthetic */ UGCContent copy$default(UGCContent uGCContent, String str, UGCVideo uGCVideo, UGCCollection uGCCollection, UGCVerticalRank uGCVerticalRank, UGCVideoHashTag uGCVideoHashTag, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCContent.topicType;
        }
        if ((i11 & 2) != 0) {
            uGCVideo = uGCContent.video;
        }
        UGCVideo uGCVideo2 = uGCVideo;
        if ((i11 & 4) != 0) {
            uGCCollection = uGCContent.collection;
        }
        UGCCollection uGCCollection2 = uGCCollection;
        if ((i11 & 8) != 0) {
            uGCVerticalRank = uGCContent.verticalRank;
        }
        UGCVerticalRank uGCVerticalRank2 = uGCVerticalRank;
        if ((i11 & 16) != 0) {
            uGCVideoHashTag = uGCContent.hashTag;
        }
        return uGCContent.copy(str, uGCVideo2, uGCCollection2, uGCVerticalRank2, uGCVideoHashTag);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTopicType() {
        return this.topicType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UGCVideo getVideo() {
        return this.video;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final UGCCollection getCollection() {
        return this.collection;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    public final UGCContent copy(String topicType, UGCVideo video, UGCCollection collection, UGCVerticalRank verticalRank, UGCVideoHashTag hashTag) {
        return new UGCContent(topicType, video, collection, verticalRank, hashTag);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCContent)) {
            return false;
        }
        UGCContent uGCContent = (UGCContent) other;
        return Intrinsics.c(this.topicType, uGCContent.topicType) && Intrinsics.c(this.video, uGCContent.video) && Intrinsics.c(this.collection, uGCContent.collection) && Intrinsics.c(this.verticalRank, uGCContent.verticalRank) && Intrinsics.c(this.hashTag, uGCContent.hashTag);
    }

    public final UGCCollection getCollection() {
        return this.collection;
    }

    public final UGCVideoHashTag getHashTag() {
        return this.hashTag;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final UGCVerticalRank getVerticalRank() {
        return this.verticalRank;
    }

    public final UGCVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        String str = this.topicType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UGCVideo uGCVideo = this.video;
        int iHashCode2 = (iHashCode + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        UGCCollection uGCCollection = this.collection;
        int iHashCode3 = (iHashCode2 + (uGCCollection == null ? 0 : uGCCollection.hashCode())) * 31;
        UGCVerticalRank uGCVerticalRank = this.verticalRank;
        int iHashCode4 = (iHashCode3 + (uGCVerticalRank == null ? 0 : uGCVerticalRank.hashCode())) * 31;
        UGCVideoHashTag uGCVideoHashTag = this.hashTag;
        return iHashCode4 + (uGCVideoHashTag != null ? uGCVideoHashTag.hashCode() : 0);
    }

    public final void setCollection(UGCCollection uGCCollection) {
        this.collection = uGCCollection;
    }

    public final void setHashTag(UGCVideoHashTag uGCVideoHashTag) {
        this.hashTag = uGCVideoHashTag;
    }

    public final void setTopicType(String str) {
        this.topicType = str;
    }

    public final void setVerticalRank(UGCVerticalRank uGCVerticalRank) {
        this.verticalRank = uGCVerticalRank;
    }

    public final void setVideo(UGCVideo uGCVideo) {
        this.video = uGCVideo;
    }

    public String toString() {
        return "UGCContent(topicType=" + this.topicType + ", video=" + this.video + ", collection=" + this.collection + ", verticalRank=" + this.verticalRank + ", hashTag=" + this.hashTag + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.topicType);
        dest.writeSerializable(this.video);
        UGCCollection uGCCollection = this.collection;
        if (uGCCollection == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            uGCCollection.writeToParcel(dest, flags);
        }
        UGCVerticalRank uGCVerticalRank = this.verticalRank;
        if (uGCVerticalRank == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            uGCVerticalRank.writeToParcel(dest, flags);
        }
        UGCVideoHashTag uGCVideoHashTag = this.hashTag;
        if (uGCVideoHashTag == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            uGCVideoHashTag.writeToParcel(dest, flags);
        }
    }
}
