package com.transsion.member.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0003J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/transsion/member/bean/RedeemResult;", "Landroid/os/Parcelable;", "vipDurationDays", "", "orderId", "", "<init>", "(ILjava/lang/String;)V", "getVipDurationDays", "()I", "setVipDurationDays", "(I)V", "getOrderId", "()Ljava/lang/String;", "setOrderId", "(Ljava/lang/String;)V", "component1", "component2", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RedeemResult implements Parcelable {
    private String orderId;
    private int vipDurationDays;
    public static final Parcelable.Creator<RedeemResult> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RedeemResult createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RedeemResult(parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RedeemResult[] newArray(int i11) {
            return new RedeemResult[i11];
        }
    }

    public RedeemResult(int i11, String orderId) {
        Intrinsics.h(orderId, "orderId");
        this.vipDurationDays = i11;
        this.orderId = orderId;
    }

    public static /* synthetic */ RedeemResult copy$default(RedeemResult redeemResult, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = redeemResult.vipDurationDays;
        }
        if ((i12 & 2) != 0) {
            str = redeemResult.orderId;
        }
        return redeemResult.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    public final RedeemResult copy(int vipDurationDays, String orderId) {
        Intrinsics.h(orderId, "orderId");
        return new RedeemResult(vipDurationDays, orderId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedeemResult)) {
            return false;
        }
        RedeemResult redeemResult = (RedeemResult) other;
        return this.vipDurationDays == redeemResult.vipDurationDays && Intrinsics.c(this.orderId, redeemResult.orderId);
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final int getVipDurationDays() {
        return this.vipDurationDays;
    }

    public int hashCode() {
        return (this.vipDurationDays * 31) + this.orderId.hashCode();
    }

    public final void setOrderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderId = str;
    }

    public final void setVipDurationDays(int i11) {
        this.vipDurationDays = i11;
    }

    public String toString() {
        return "RedeemResult(vipDurationDays=" + this.vipDurationDays + ", orderId=" + this.orderId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.vipDurationDays);
        dest.writeString(this.orderId);
    }
}
