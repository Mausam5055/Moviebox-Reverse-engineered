package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J)\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0017\u001a\u00020\u0005J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006#"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/CollectionBelongInfoFeed;", "Landroid/os/Parcelable;", "collectionId", "", "videoNum", "", RequestParameters.POSITION, "<init>", "(Ljava/lang/String;II)V", "getCollectionId", "()Ljava/lang/String;", "setCollectionId", "(Ljava/lang/String;)V", "getVideoNum", "()I", "setVideoNum", "(I)V", "getPosition", "setPosition", "component1", "component2", "component3", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CollectionBelongInfoFeed implements Parcelable {
    public static final Parcelable.Creator<CollectionBelongInfoFeed> CREATOR = new a();
    private String collectionId;
    private int position;
    private int videoNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CollectionBelongInfoFeed createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CollectionBelongInfoFeed(parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CollectionBelongInfoFeed[] newArray(int i11) {
            return new CollectionBelongInfoFeed[i11];
        }
    }

    public CollectionBelongInfoFeed() {
        this(null, 0, 0, 7, null);
    }

    public CollectionBelongInfoFeed(String str, int i11, int i12) {
        this.collectionId = str;
        this.videoNum = i11;
        this.position = i12;
    }

    public /* synthetic */ CollectionBelongInfoFeed(String str, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0 : i12);
    }

    public static /* synthetic */ CollectionBelongInfoFeed copy$default(CollectionBelongInfoFeed collectionBelongInfoFeed, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = collectionBelongInfoFeed.collectionId;
        }
        if ((i13 & 2) != 0) {
            i11 = collectionBelongInfoFeed.videoNum;
        }
        if ((i13 & 4) != 0) {
            i12 = collectionBelongInfoFeed.position;
        }
        return collectionBelongInfoFeed.copy(str, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getVideoNum() {
        return this.videoNum;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    public final CollectionBelongInfoFeed copy(String collectionId, int videoNum, int position) {
        return new CollectionBelongInfoFeed(collectionId, videoNum, position);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectionBelongInfoFeed)) {
            return false;
        }
        CollectionBelongInfoFeed collectionBelongInfoFeed = (CollectionBelongInfoFeed) other;
        return Intrinsics.c(this.collectionId, collectionBelongInfoFeed.collectionId) && this.videoNum == collectionBelongInfoFeed.videoNum && this.position == collectionBelongInfoFeed.position;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getVideoNum() {
        return this.videoNum;
    }

    public int hashCode() {
        String str = this.collectionId;
        return ((((str == null ? 0 : str.hashCode()) * 31) + this.videoNum) * 31) + this.position;
    }

    public final void setCollectionId(String str) {
        this.collectionId = str;
    }

    public final void setPosition(int i11) {
        this.position = i11;
    }

    public final void setVideoNum(int i11) {
        this.videoNum = i11;
    }

    public String toString() {
        return "CollectionBelongInfoFeed(collectionId=" + this.collectionId + ", videoNum=" + this.videoNum + ", position=" + this.position + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.collectionId);
        dest.writeInt(this.videoNum);
        dest.writeInt(this.position);
    }
}
