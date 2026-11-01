package com.transsion.shorttv.order.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0011J(\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0011J\u0010\u0010\u0016\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u000fJ\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001c\u001a\u0004\b\u001d\u0010\u0011R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001c\u001a\u0004\b\u001e\u0010\u0011¨\u0006!"}, d2 = {"Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;", "Landroid/os/Parcelable;", "", "orderStatus", TrackingKey.DESCRIPTION, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getOrderStatus", "getDescription", "Companion", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GetPaynicornOrderStatusRespEntity implements Parcelable {
    public static final int ORDER_STATUS_0_PENDING_PAYMENT = 0;
    public static final int ORDER_STATUS_1_TO_BE_SHIPPED = 1;
    public static final int ORDER_STATUS_2_DONE = 2;
    public static final int ORDER_STATUS_3_CANCELLED = 3;
    public static final int ORDER_STATUS_4_PAYMENT = 4;
    public static final int ORDER_STATUS_5_SHIPMENT_FAILED = 5;
    private final String description;
    private final String orderStatus;
    public static final Parcelable.Creator<GetPaynicornOrderStatusRespEntity> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetPaynicornOrderStatusRespEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new GetPaynicornOrderStatusRespEntity(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final GetPaynicornOrderStatusRespEntity[] newArray(int i11) {
            return new GetPaynicornOrderStatusRespEntity[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GetPaynicornOrderStatusRespEntity() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public GetPaynicornOrderStatusRespEntity(String str, String str2) {
        this.orderStatus = str;
        this.description = str2;
    }

    public /* synthetic */ GetPaynicornOrderStatusRespEntity(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ GetPaynicornOrderStatusRespEntity copy$default(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = getPaynicornOrderStatusRespEntity.orderStatus;
        }
        if ((i11 & 2) != 0) {
            str2 = getPaynicornOrderStatusRespEntity.description;
        }
        return getPaynicornOrderStatusRespEntity.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOrderStatus() {
        return this.orderStatus;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final GetPaynicornOrderStatusRespEntity copy(String orderStatus, String description) {
        return new GetPaynicornOrderStatusRespEntity(orderStatus, description);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GetPaynicornOrderStatusRespEntity)) {
            return false;
        }
        GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity = (GetPaynicornOrderStatusRespEntity) other;
        return Intrinsics.c(this.orderStatus, getPaynicornOrderStatusRespEntity.orderStatus) && Intrinsics.c(this.description, getPaynicornOrderStatusRespEntity.description);
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getOrderStatus() {
        return this.orderStatus;
    }

    public int hashCode() {
        String str = this.orderStatus;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "GetPaynicornOrderStatusRespEntity(orderStatus=" + this.orderStatus + ", description=" + this.description + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.orderStatus);
        dest.writeString(this.description);
    }
}
