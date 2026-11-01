package com.transsion.payment.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/payment/lib/bean/CheckPaymentBean;", "Landroid/os/Parcelable;", "addCoin", "", "balanceCoin", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getAddCoin", "()Ljava/lang/String;", "setAddCoin", "(Ljava/lang/String;)V", "getBalanceCoin", "setBalanceCoin", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CheckPaymentBean implements Parcelable {
    public static final Parcelable.Creator<CheckPaymentBean> CREATOR = new a();

    @SerializedName("addCoin")
    private String addCoin;

    @SerializedName("balanceCoin")
    private String balanceCoin;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckPaymentBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CheckPaymentBean(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CheckPaymentBean[] newArray(int i11) {
            return new CheckPaymentBean[i11];
        }
    }

    public CheckPaymentBean(String str, String str2) {
        this.addCoin = str;
        this.balanceCoin = str2;
    }

    public static /* synthetic */ CheckPaymentBean copy$default(CheckPaymentBean checkPaymentBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = checkPaymentBean.addCoin;
        }
        if ((i11 & 2) != 0) {
            str2 = checkPaymentBean.balanceCoin;
        }
        return checkPaymentBean.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAddCoin() {
        return this.addCoin;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBalanceCoin() {
        return this.balanceCoin;
    }

    public final CheckPaymentBean copy(String addCoin, String balanceCoin) {
        return new CheckPaymentBean(addCoin, balanceCoin);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CheckPaymentBean)) {
            return false;
        }
        CheckPaymentBean checkPaymentBean = (CheckPaymentBean) other;
        return Intrinsics.c(this.addCoin, checkPaymentBean.addCoin) && Intrinsics.c(this.balanceCoin, checkPaymentBean.balanceCoin);
    }

    public final String getAddCoin() {
        return this.addCoin;
    }

    public final String getBalanceCoin() {
        return this.balanceCoin;
    }

    public int hashCode() {
        String str = this.addCoin;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.balanceCoin;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAddCoin(String str) {
        this.addCoin = str;
    }

    public final void setBalanceCoin(String str) {
        this.balanceCoin = str;
    }

    public String toString() {
        return "CheckPaymentBean(addCoin=" + this.addCoin + ", balanceCoin=" + this.balanceCoin + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.addCoin);
        dest.writeString(this.balanceCoin);
    }
}
