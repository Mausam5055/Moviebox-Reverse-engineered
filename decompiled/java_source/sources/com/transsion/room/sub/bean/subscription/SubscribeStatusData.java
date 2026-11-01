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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/SubscribeStatusData;", "Landroid/os/Parcelable;", "isSubscribed", "", "isMutual", "<init>", "(ZZ)V", "()Z", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubscribeStatusData implements Parcelable {
    public static final Parcelable.Creator<SubscribeStatusData> CREATOR = new a();
    private final boolean isMutual;
    private final boolean isSubscribed;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubscribeStatusData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubscribeStatusData(parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubscribeStatusData[] newArray(int i11) {
            return new SubscribeStatusData[i11];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SubscribeStatusData() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public SubscribeStatusData(boolean z10, boolean z11) {
        this.isSubscribed = z10;
        this.isMutual = z11;
    }

    public /* synthetic */ SubscribeStatusData(boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11);
    }

    public static /* synthetic */ SubscribeStatusData copy$default(SubscribeStatusData subscribeStatusData, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = subscribeStatusData.isSubscribed;
        }
        if ((i11 & 2) != 0) {
            z11 = subscribeStatusData.isMutual;
        }
        return subscribeStatusData.copy(z10, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSubscribed() {
        return this.isSubscribed;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsMutual() {
        return this.isMutual;
    }

    public final SubscribeStatusData copy(boolean isSubscribed, boolean isMutual) {
        return new SubscribeStatusData(isSubscribed, isMutual);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscribeStatusData)) {
            return false;
        }
        SubscribeStatusData subscribeStatusData = (SubscribeStatusData) other;
        return this.isSubscribed == subscribeStatusData.isSubscribed && this.isMutual == subscribeStatusData.isMutual;
    }

    public int hashCode() {
        return (e.a(this.isSubscribed) * 31) + e.a(this.isMutual);
    }

    public final boolean isMutual() {
        return this.isMutual;
    }

    public final boolean isSubscribed() {
        return this.isSubscribed;
    }

    public String toString() {
        return "SubscribeStatusData(isSubscribed=" + this.isSubscribed + ", isMutual=" + this.isMutual + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.isSubscribed ? 1 : 0);
        dest.writeInt(this.isMutual ? 1 : 0);
    }
}
