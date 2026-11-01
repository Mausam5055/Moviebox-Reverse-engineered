package com.transsion.shorttv.order.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J9\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\""}, d2 = {"Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;", "Landroid/os/Parcelable;", "tradingOrderId", "", "txnId", "webUrl", "prePayInfo", "Lcom/transsion/shorttv/order/bean/PrePayInfoBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/order/bean/PrePayInfoBean;)V", "getTradingOrderId", "()Ljava/lang/String;", "getTxnId", "getWebUrl", "getPrePayInfo", "()Lcom/transsion/shorttv/order/bean/PrePayInfoBean;", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CenterCreateTradingOrderRespEntity implements Parcelable {
    public static final Parcelable.Creator<CenterCreateTradingOrderRespEntity> CREATOR = new a();
    private final PrePayInfoBean prePayInfo;
    private final String tradingOrderId;
    private final String txnId;
    private final String webUrl;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CenterCreateTradingOrderRespEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CenterCreateTradingOrderRespEntity(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : PrePayInfoBean.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CenterCreateTradingOrderRespEntity[] newArray(int i11) {
            return new CenterCreateTradingOrderRespEntity[i11];
        }
    }

    public CenterCreateTradingOrderRespEntity(String str, String str2, String str3, PrePayInfoBean prePayInfoBean) {
        this.tradingOrderId = str;
        this.txnId = str2;
        this.webUrl = str3;
        this.prePayInfo = prePayInfoBean;
    }

    public static /* synthetic */ CenterCreateTradingOrderRespEntity copy$default(CenterCreateTradingOrderRespEntity centerCreateTradingOrderRespEntity, String str, String str2, String str3, PrePayInfoBean prePayInfoBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = centerCreateTradingOrderRespEntity.tradingOrderId;
        }
        if ((i11 & 2) != 0) {
            str2 = centerCreateTradingOrderRespEntity.txnId;
        }
        if ((i11 & 4) != 0) {
            str3 = centerCreateTradingOrderRespEntity.webUrl;
        }
        if ((i11 & 8) != 0) {
            prePayInfoBean = centerCreateTradingOrderRespEntity.prePayInfo;
        }
        return centerCreateTradingOrderRespEntity.copy(str, str2, str3, prePayInfoBean);
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
    public final PrePayInfoBean getPrePayInfo() {
        return this.prePayInfo;
    }

    public final CenterCreateTradingOrderRespEntity copy(String tradingOrderId, String txnId, String webUrl, PrePayInfoBean prePayInfo) {
        return new CenterCreateTradingOrderRespEntity(tradingOrderId, txnId, webUrl, prePayInfo);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CenterCreateTradingOrderRespEntity)) {
            return false;
        }
        CenterCreateTradingOrderRespEntity centerCreateTradingOrderRespEntity = (CenterCreateTradingOrderRespEntity) other;
        return Intrinsics.c(this.tradingOrderId, centerCreateTradingOrderRespEntity.tradingOrderId) && Intrinsics.c(this.txnId, centerCreateTradingOrderRespEntity.txnId) && Intrinsics.c(this.webUrl, centerCreateTradingOrderRespEntity.webUrl) && Intrinsics.c(this.prePayInfo, centerCreateTradingOrderRespEntity.prePayInfo);
    }

    public final PrePayInfoBean getPrePayInfo() {
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
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.txnId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.webUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PrePayInfoBean prePayInfoBean = this.prePayInfo;
        return iHashCode3 + (prePayInfoBean != null ? prePayInfoBean.hashCode() : 0);
    }

    public String toString() {
        return "CenterCreateTradingOrderRespEntity(tradingOrderId=" + this.tradingOrderId + ", txnId=" + this.txnId + ", webUrl=" + this.webUrl + ", prePayInfo=" + this.prePayInfo + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tradingOrderId);
        dest.writeString(this.txnId);
        dest.writeString(this.webUrl);
        PrePayInfoBean prePayInfoBean = this.prePayInfo;
        if (prePayInfoBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            prePayInfoBean.writeToParcel(dest, flags);
        }
    }
}
