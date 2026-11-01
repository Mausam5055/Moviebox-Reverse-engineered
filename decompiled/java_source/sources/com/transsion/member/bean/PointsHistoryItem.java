package com.transsion.member.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ji\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001f\u001a\u00020 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020 HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020 R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006,"}, d2 = {"Lcom/transsion/member/bean/PointsHistoryItem;", "Landroid/os/Parcelable;", "moneyFlowId", "", "moneyAccountId", "coin", "orderId", "operation", "operationId", "remarks", "createTime", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getMoneyFlowId", "()Ljava/lang/String;", "getMoneyAccountId", "getCoin", "getOrderId", "getOperation", "getOperationId", "getRemarks", "getCreateTime", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PointsHistoryItem implements Parcelable {
    private final String coin;
    private final String createTime;
    private final String moneyAccountId;
    private final String moneyFlowId;
    private final String operation;
    private final String operationId;
    private final String orderId;
    private final String remarks;
    public static final Parcelable.Creator<PointsHistoryItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PointsHistoryItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PointsHistoryItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PointsHistoryItem[] newArray(int i11) {
            return new PointsHistoryItem[i11];
        }
    }

    public PointsHistoryItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.moneyFlowId = str;
        this.moneyAccountId = str2;
        this.coin = str3;
        this.orderId = str4;
        this.operation = str5;
        this.operationId = str6;
        this.remarks = str7;
        this.createTime = str8;
    }

    public /* synthetic */ PointsHistoryItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, str7, str8);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMoneyFlowId() {
        return this.moneyFlowId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMoneyAccountId() {
        return this.moneyAccountId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCoin() {
        return this.coin;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOperation() {
        return this.operation;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOperationId() {
        return this.operationId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCreateTime() {
        return this.createTime;
    }

    public final PointsHistoryItem copy(String moneyFlowId, String moneyAccountId, String coin, String orderId, String operation, String operationId, String remarks, String createTime) {
        return new PointsHistoryItem(moneyFlowId, moneyAccountId, coin, orderId, operation, operationId, remarks, createTime);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PointsHistoryItem)) {
            return false;
        }
        PointsHistoryItem pointsHistoryItem = (PointsHistoryItem) other;
        return Intrinsics.c(this.moneyFlowId, pointsHistoryItem.moneyFlowId) && Intrinsics.c(this.moneyAccountId, pointsHistoryItem.moneyAccountId) && Intrinsics.c(this.coin, pointsHistoryItem.coin) && Intrinsics.c(this.orderId, pointsHistoryItem.orderId) && Intrinsics.c(this.operation, pointsHistoryItem.operation) && Intrinsics.c(this.operationId, pointsHistoryItem.operationId) && Intrinsics.c(this.remarks, pointsHistoryItem.remarks) && Intrinsics.c(this.createTime, pointsHistoryItem.createTime);
    }

    public final String getCoin() {
        return this.coin;
    }

    public final String getCreateTime() {
        return this.createTime;
    }

    public final String getMoneyAccountId() {
        return this.moneyAccountId;
    }

    public final String getMoneyFlowId() {
        return this.moneyFlowId;
    }

    public final String getOperation() {
        return this.operation;
    }

    public final String getOperationId() {
        return this.operationId;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getRemarks() {
        return this.remarks;
    }

    public int hashCode() {
        String str = this.moneyFlowId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.moneyAccountId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.coin;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.orderId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.operation;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.operationId;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.remarks;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.createTime;
        return iHashCode7 + (str8 != null ? str8.hashCode() : 0);
    }

    public String toString() {
        return "PointsHistoryItem(moneyFlowId=" + this.moneyFlowId + ", moneyAccountId=" + this.moneyAccountId + ", coin=" + this.coin + ", orderId=" + this.orderId + ", operation=" + this.operation + ", operationId=" + this.operationId + ", remarks=" + this.remarks + ", createTime=" + this.createTime + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.moneyFlowId);
        dest.writeString(this.moneyAccountId);
        dest.writeString(this.coin);
        dest.writeString(this.orderId);
        dest.writeString(this.operation);
        dest.writeString(this.operationId);
        dest.writeString(this.remarks);
        dest.writeString(this.createTime);
    }
}
