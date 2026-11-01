package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/transsion/memberapi/AllMemberRightsData;", "Landroid/os/Parcelable;", "rightsMap", "Lcom/transsion/memberapi/RightsMapData;", "<init>", "(Lcom/transsion/memberapi/RightsMapData;)V", "getRightsMap", "()Lcom/transsion/memberapi/RightsMapData;", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AllMemberRightsData implements Parcelable {
    public static final Parcelable.Creator<AllMemberRightsData> CREATOR = new a();
    private final RightsMapData rightsMap;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AllMemberRightsData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AllMemberRightsData(parcel.readInt() == 0 ? null : RightsMapData.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AllMemberRightsData[] newArray(int i11) {
            return new AllMemberRightsData[i11];
        }
    }

    public AllMemberRightsData(RightsMapData rightsMapData) {
        this.rightsMap = rightsMapData;
    }

    public static /* synthetic */ AllMemberRightsData copy$default(AllMemberRightsData allMemberRightsData, RightsMapData rightsMapData, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            rightsMapData = allMemberRightsData.rightsMap;
        }
        return allMemberRightsData.copy(rightsMapData);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final RightsMapData getRightsMap() {
        return this.rightsMap;
    }

    public final AllMemberRightsData copy(RightsMapData rightsMap) {
        return new AllMemberRightsData(rightsMap);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AllMemberRightsData) && Intrinsics.c(this.rightsMap, ((AllMemberRightsData) other).rightsMap);
    }

    public final RightsMapData getRightsMap() {
        return this.rightsMap;
    }

    public int hashCode() {
        RightsMapData rightsMapData = this.rightsMap;
        if (rightsMapData == null) {
            return 0;
        }
        return rightsMapData.hashCode();
    }

    public String toString() {
        return "AllMemberRightsData(rightsMap=" + this.rightsMap + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        RightsMapData rightsMapData = this.rightsMap;
        if (rightsMapData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            rightsMapData.writeToParcel(dest, flags);
        }
    }
}
