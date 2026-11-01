package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\t\u001a\u00020\nJ\u0013\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\nHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0016"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/SubscriptionUnsubcriptionData;", "Landroid/os/Parcelable;", "isSubscribed", "", "<init>", "(Z)V", "()Z", "component1", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubscriptionUnsubcriptionData implements Parcelable {
    public static final Parcelable.Creator<SubscriptionUnsubcriptionData> CREATOR = new a();
    private final boolean isSubscribed;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUnsubcriptionData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubscriptionUnsubcriptionData(parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUnsubcriptionData[] newArray(int i11) {
            return new SubscriptionUnsubcriptionData[i11];
        }
    }

    public SubscriptionUnsubcriptionData() {
        this(false, 1, null);
    }

    public SubscriptionUnsubcriptionData(boolean z10) {
        this.isSubscribed = z10;
    }

    public /* synthetic */ SubscriptionUnsubcriptionData(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    public static /* synthetic */ SubscriptionUnsubcriptionData copy$default(SubscriptionUnsubcriptionData subscriptionUnsubcriptionData, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = subscriptionUnsubcriptionData.isSubscribed;
        }
        return subscriptionUnsubcriptionData.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSubscribed() {
        return this.isSubscribed;
    }

    public final SubscriptionUnsubcriptionData copy(boolean isSubscribed) {
        return new SubscriptionUnsubcriptionData(isSubscribed);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SubscriptionUnsubcriptionData) && this.isSubscribed == ((SubscriptionUnsubcriptionData) other).isSubscribed;
    }

    public int hashCode() {
        return e.a(this.isSubscribed);
    }

    public final boolean isSubscribed() {
        return this.isSubscribed;
    }

    public String toString() {
        return "SubscriptionUnsubcriptionData(isSubscribed=" + this.isSubscribed + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.isSubscribed ? 1 : 0);
    }
}
