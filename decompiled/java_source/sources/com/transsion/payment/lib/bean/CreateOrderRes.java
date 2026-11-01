package com.transsion.payment.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J7\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006("}, d2 = {"Lcom/transsion/payment/lib/bean/CreateOrderRes;", "Landroid/os/Parcelable;", "tradingOrderId", "", "txnId", "webUrl", "prePayInfo", "Lcom/transsion/payment/lib/bean/PrePayInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/payment/lib/bean/PrePayInfo;)V", "getTradingOrderId", "()Ljava/lang/String;", "setTradingOrderId", "(Ljava/lang/String;)V", "getTxnId", "setTxnId", "getWebUrl", "setWebUrl", "getPrePayInfo", "()Lcom/transsion/payment/lib/bean/PrePayInfo;", "setPrePayInfo", "(Lcom/transsion/payment/lib/bean/PrePayInfo;)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CreateOrderRes implements Parcelable {
    public static final Parcelable.Creator<CreateOrderRes> CREATOR = new a();
    private PrePayInfo prePayInfo;
    private String tradingOrderId;
    private String txnId;
    private String webUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateOrderRes createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CreateOrderRes(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : PrePayInfo.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreateOrderRes[] newArray(int i11) {
            return new CreateOrderRes[i11];
        }
    }

    public CreateOrderRes(String str, String txnId, String str2, PrePayInfo prePayInfo) {
        Intrinsics.h(txnId, "txnId");
        this.tradingOrderId = str;
        this.txnId = txnId;
        this.webUrl = str2;
        this.prePayInfo = prePayInfo;
    }

    public static /* synthetic */ CreateOrderRes copy$default(CreateOrderRes createOrderRes, String str, String str2, String str3, PrePayInfo prePayInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = createOrderRes.tradingOrderId;
        }
        if ((i11 & 2) != 0) {
            str2 = createOrderRes.txnId;
        }
        if ((i11 & 4) != 0) {
            str3 = createOrderRes.webUrl;
        }
        if ((i11 & 8) != 0) {
            prePayInfo = createOrderRes.prePayInfo;
        }
        return createOrderRes.copy(str, str2, str3, prePayInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTradingOrderId() {
        return this.tradingOrderId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTxnId() {
        return this.txnId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getWebUrl() {
        return this.webUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PrePayInfo getPrePayInfo() {
        return this.prePayInfo;
    }

    public final CreateOrderRes copy(String tradingOrderId, String txnId, String webUrl, PrePayInfo prePayInfo) {
        Intrinsics.h(txnId, "txnId");
        return new CreateOrderRes(tradingOrderId, txnId, webUrl, prePayInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateOrderRes)) {
            return false;
        }
        CreateOrderRes createOrderRes = (CreateOrderRes) other;
        return Intrinsics.c(this.tradingOrderId, createOrderRes.tradingOrderId) && Intrinsics.c(this.txnId, createOrderRes.txnId) && Intrinsics.c(this.webUrl, createOrderRes.webUrl) && Intrinsics.c(this.prePayInfo, createOrderRes.prePayInfo);
    }

    public final PrePayInfo getPrePayInfo() {
        return this.prePayInfo;
    }

    public final String getTradingOrderId() {
        return this.tradingOrderId;
    }

    public final String getTxnId() {
        return this.txnId;
    }

    public final String getWebUrl() {
        return this.webUrl;
    }

    public int hashCode() {
        String str = this.tradingOrderId;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.txnId.hashCode()) * 31;
        String str2 = this.webUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        PrePayInfo prePayInfo = this.prePayInfo;
        return iHashCode2 + (prePayInfo != null ? prePayInfo.hashCode() : 0);
    }

    public final void setPrePayInfo(PrePayInfo prePayInfo) {
        this.prePayInfo = prePayInfo;
    }

    public final void setTradingOrderId(String str) {
        this.tradingOrderId = str;
    }

    public final void setTxnId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.txnId = str;
    }

    public final void setWebUrl(String str) {
        this.webUrl = str;
    }

    public String toString() {
        return "CreateOrderRes(tradingOrderId=" + this.tradingOrderId + ", txnId=" + this.txnId + ", webUrl=" + this.webUrl + ", prePayInfo=" + this.prePayInfo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tradingOrderId);
        dest.writeString(this.txnId);
        dest.writeString(this.webUrl);
        PrePayInfo prePayInfo = this.prePayInfo;
        if (prePayInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            prePayInfo.writeToParcel(dest, flags);
        }
    }
}
