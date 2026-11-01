package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\n\u001a\u00020\u0003J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/SubscriptionUnReadData;", "Landroid/os/Parcelable;", "unreadCount", "", "<init>", "(I)V", "getUnreadCount", "()I", "component1", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubscriptionUnReadData implements Parcelable {
    public static final Parcelable.Creator<SubscriptionUnReadData> CREATOR = new a();
    private final int unreadCount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUnReadData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubscriptionUnReadData(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUnReadData[] newArray(int i11) {
            return new SubscriptionUnReadData[i11];
        }
    }

    public SubscriptionUnReadData() {
        this(0, 1, null);
    }

    public SubscriptionUnReadData(int i11) {
        this.unreadCount = i11;
    }

    public /* synthetic */ SubscriptionUnReadData(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public static /* synthetic */ SubscriptionUnReadData copy$default(SubscriptionUnReadData subscriptionUnReadData, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = subscriptionUnReadData.unreadCount;
        }
        return subscriptionUnReadData.copy(i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getUnreadCount() {
        return this.unreadCount;
    }

    public final SubscriptionUnReadData copy(int unreadCount) {
        return new SubscriptionUnReadData(unreadCount);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SubscriptionUnReadData) && this.unreadCount == ((SubscriptionUnReadData) other).unreadCount;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    public int hashCode() {
        return this.unreadCount;
    }

    public String toString() {
        return "SubscriptionUnReadData(unreadCount=" + this.unreadCount + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.unreadCount);
    }
}
