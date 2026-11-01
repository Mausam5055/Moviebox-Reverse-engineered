package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B)\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u001bHÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001J\u0018\u0010\"\u001a\u00020#2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001bH\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000f¨\u0006&"}, d2 = {"Lcom/cloud/tmc/offline/download/model/DeliveryDimensionData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "appId", "", "mcc", "", NetworkBridge.KEY_NETWORK_TYPE, "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getMcc", "()Ljava/util/List;", "setMcc", "(Ljava/util/List;)V", "getNetworkType", "setNetworkType", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DeliveryDimensionData extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String appId;
    private List<String> mcc;
    private String networkType;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.DeliveryDimensionData$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/DeliveryDimensionData$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/DeliveryDimensionData;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/DeliveryDimensionData;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<DeliveryDimensionData> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeliveryDimensionData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new DeliveryDimensionData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeliveryDimensionData[] newArray(int size) {
            return new DeliveryDimensionData[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DeliveryDimensionData(Parcel parcel) {
        this(parcel.readString(), parcel.createStringArrayList(), parcel.readString());
        Intrinsics.h(parcel, "parcel");
    }

    public DeliveryDimensionData(String str, List<String> list, String str2) {
        this.appId = str;
        this.mcc = list;
        this.networkType = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeliveryDimensionData copy$default(DeliveryDimensionData deliveryDimensionData, String str, List list, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = deliveryDimensionData.appId;
        }
        if ((i11 & 2) != 0) {
            list = deliveryDimensionData.mcc;
        }
        if ((i11 & 4) != 0) {
            str2 = deliveryDimensionData.networkType;
        }
        return deliveryDimensionData.copy(str, list, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    public final List<String> component2() {
        return this.mcc;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNetworkType() {
        return this.networkType;
    }

    public final DeliveryDimensionData copy(String appId, List<String> mcc, String networkType) {
        return new DeliveryDimensionData(appId, mcc, networkType);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeliveryDimensionData)) {
            return false;
        }
        DeliveryDimensionData deliveryDimensionData = (DeliveryDimensionData) other;
        return Intrinsics.c(this.appId, deliveryDimensionData.appId) && Intrinsics.c(this.mcc, deliveryDimensionData.mcc) && Intrinsics.c(this.networkType, deliveryDimensionData.networkType);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final List<String> getMcc() {
        return this.mcc;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<String> list = this.mcc;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.networkType;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setMcc(List<String> list) {
        this.mcc = list;
    }

    public final void setNetworkType(String str) {
        this.networkType = str;
    }

    public String toString() {
        return "DeliveryDimensionData(appId=" + this.appId + ", mcc=" + this.mcc + ", networkType=" + this.networkType + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeStringList(this.mcc);
        parcel.writeString(this.networkType);
    }
}
