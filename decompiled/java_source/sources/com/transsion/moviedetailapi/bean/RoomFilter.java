package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0001-B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J(\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0013J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u000fJ\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010 R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010\u0013\"\u0004\b#\u0010$R(\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0004\b%\u0010&\u0012\u0004\b*\u0010+\u001a\u0004\b%\u0010'\"\u0004\b(\u0010)¨\u0006."}, d2 = {"Lcom/transsion/moviedetailapi/bean/RoomFilter;", "Landroid/os/Parcelable;", "", BidResponsedEx.KEY_CID, "", CampaignEx.JSON_KEY_TITLE, "<init>", "(Ljava/lang/Integer;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/Integer;", "component2", "()Ljava/lang/String;", "copy", "(Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/RoomFilter;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Integer;", "getCid", "setCid", "(Ljava/lang/Integer;)V", "Ljava/lang/String;", "getTitle", "setTitle", "(Ljava/lang/String;)V", "isSelected", "Z", "()Z", "setSelected", "(Z)V", "isSelected$annotations", "()V", "Companion", "a", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomFilter implements Parcelable {
    public static final int NEARBY_CID = -2;
    public static final int RECOMMEND_CID = -1;
    private Integer cid;
    private transient boolean isSelected;
    private String title;
    public static final Parcelable.Creator<RoomFilter> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomFilter createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RoomFilter(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomFilter[] newArray(int i11) {
            return new RoomFilter[i11];
        }
    }

    public RoomFilter(Integer num, String str) {
        this.cid = num;
        this.title = str;
    }

    public static /* synthetic */ RoomFilter copy$default(RoomFilter roomFilter, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = roomFilter.cid;
        }
        if ((i11 & 2) != 0) {
            str = roomFilter.title;
        }
        return roomFilter.copy(num, str);
    }

    public static /* synthetic */ void isSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getCid() {
        return this.cid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final RoomFilter copy(Integer cid, String title) {
        return new RoomFilter(cid, title);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomFilter)) {
            return false;
        }
        RoomFilter roomFilter = (RoomFilter) other;
        return Intrinsics.c(this.cid, roomFilter.cid) && Intrinsics.c(this.title, roomFilter.title);
    }

    public final Integer getCid() {
        return this.cid;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        Integer num = this.cid;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.title;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setCid(Integer num) {
        this.cid = num;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "RoomFilter(cid=" + this.cid + ", title=" + this.title + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        Integer num = this.cid;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeString(this.title);
    }
}
