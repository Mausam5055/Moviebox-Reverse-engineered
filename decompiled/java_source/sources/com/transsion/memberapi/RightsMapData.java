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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0011R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/transsion/memberapi/RightsMapData;", "Landroid/os/Parcelable;", "basic", "Lcom/transsion/memberapi/FeatureRights;", "pro", "features", "<init>", "(Lcom/transsion/memberapi/FeatureRights;Lcom/transsion/memberapi/FeatureRights;Lcom/transsion/memberapi/FeatureRights;)V", "getBasic", "()Lcom/transsion/memberapi/FeatureRights;", "getPro", "getFeatures", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RightsMapData implements Parcelable {
    public static final Parcelable.Creator<RightsMapData> CREATOR = new a();
    private final FeatureRights basic;
    private final FeatureRights features;
    private final FeatureRights pro;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RightsMapData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RightsMapData(parcel.readInt() == 0 ? null : FeatureRights.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : FeatureRights.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? FeatureRights.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RightsMapData[] newArray(int i11) {
            return new RightsMapData[i11];
        }
    }

    public RightsMapData(FeatureRights featureRights, FeatureRights featureRights2, FeatureRights featureRights3) {
        this.basic = featureRights;
        this.pro = featureRights2;
        this.features = featureRights3;
    }

    public static /* synthetic */ RightsMapData copy$default(RightsMapData rightsMapData, FeatureRights featureRights, FeatureRights featureRights2, FeatureRights featureRights3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            featureRights = rightsMapData.basic;
        }
        if ((i11 & 2) != 0) {
            featureRights2 = rightsMapData.pro;
        }
        if ((i11 & 4) != 0) {
            featureRights3 = rightsMapData.features;
        }
        return rightsMapData.copy(featureRights, featureRights2, featureRights3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final FeatureRights getBasic() {
        return this.basic;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final FeatureRights getPro() {
        return this.pro;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final FeatureRights getFeatures() {
        return this.features;
    }

    public final RightsMapData copy(FeatureRights basic, FeatureRights pro, FeatureRights features) {
        return new RightsMapData(basic, pro, features);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RightsMapData)) {
            return false;
        }
        RightsMapData rightsMapData = (RightsMapData) other;
        return Intrinsics.c(this.basic, rightsMapData.basic) && Intrinsics.c(this.pro, rightsMapData.pro) && Intrinsics.c(this.features, rightsMapData.features);
    }

    public final FeatureRights getBasic() {
        return this.basic;
    }

    public final FeatureRights getFeatures() {
        return this.features;
    }

    public final FeatureRights getPro() {
        return this.pro;
    }

    public int hashCode() {
        FeatureRights featureRights = this.basic;
        int iHashCode = (featureRights == null ? 0 : featureRights.hashCode()) * 31;
        FeatureRights featureRights2 = this.pro;
        int iHashCode2 = (iHashCode + (featureRights2 == null ? 0 : featureRights2.hashCode())) * 31;
        FeatureRights featureRights3 = this.features;
        return iHashCode2 + (featureRights3 != null ? featureRights3.hashCode() : 0);
    }

    public String toString() {
        return "RightsMapData(basic=" + this.basic + ", pro=" + this.pro + ", features=" + this.features + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        FeatureRights featureRights = this.basic;
        if (featureRights == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            featureRights.writeToParcel(dest, flags);
        }
        FeatureRights featureRights2 = this.pro;
        if (featureRights2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            featureRights2.writeToParcel(dest, flags);
        }
        FeatureRights featureRights3 = this.features;
        if (featureRights3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            featureRights3.writeToParcel(dest, flags);
        }
    }
}
