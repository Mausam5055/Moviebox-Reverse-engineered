package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006%"}, d2 = {"Lcom/transsion/memberapi/PayModule;", "Landroid/os/Parcelable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "money", "", MimeTypes.BASE_TYPE_TEXT, "Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "skuId", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Ljava/lang/String;)V", "getEnable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMoney", "()Ljava/lang/String;", "getText", "()Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "getSkuId", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Ljava/lang/String;)Lcom/transsion/memberapi/PayModule;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PayModule implements Parcelable {
    public static final Parcelable.Creator<PayModule> CREATOR = new a();
    private final Boolean enable;
    private final String money;
    private final String skuId;
    private final ThreeInOnePopupTitle text;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PayModule createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new PayModule(boolValueOf, parcel.readString(), parcel.readInt() != 0 ? ThreeInOnePopupTitle.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PayModule[] newArray(int i11) {
            return new PayModule[i11];
        }
    }

    public PayModule(Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle, String str2) {
        this.enable = bool;
        this.money = str;
        this.text = threeInOnePopupTitle;
        this.skuId = str2;
    }

    public static /* synthetic */ PayModule copy$default(PayModule payModule, Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = payModule.enable;
        }
        if ((i11 & 2) != 0) {
            str = payModule.money;
        }
        if ((i11 & 4) != 0) {
            threeInOnePopupTitle = payModule.text;
        }
        if ((i11 & 8) != 0) {
            str2 = payModule.skuId;
        }
        return payModule.copy(bool, str, threeInOnePopupTitle, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMoney() {
        return this.money;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ThreeInOnePopupTitle getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    public final PayModule copy(Boolean enable, String money, ThreeInOnePopupTitle text, String skuId) {
        return new PayModule(enable, money, text, skuId);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PayModule)) {
            return false;
        }
        PayModule payModule = (PayModule) other;
        return Intrinsics.c(this.enable, payModule.enable) && Intrinsics.c(this.money, payModule.money) && Intrinsics.c(this.text, payModule.text) && Intrinsics.c(this.skuId, payModule.skuId);
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final String getMoney() {
        return this.money;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public final ThreeInOnePopupTitle getText() {
        return this.text;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.money;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        ThreeInOnePopupTitle threeInOnePopupTitle = this.text;
        int iHashCode3 = (iHashCode2 + (threeInOnePopupTitle == null ? 0 : threeInOnePopupTitle.hashCode())) * 31;
        String str2 = this.skuId;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "PayModule(enable=" + this.enable + ", money=" + this.money + ", text=" + this.text + ", skuId=" + this.skuId + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.enable;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.money);
        ThreeInOnePopupTitle threeInOnePopupTitle = this.text;
        if (threeInOnePopupTitle == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            threeInOnePopupTitle.writeToParcel(dest, flags);
        }
        dest.writeString(this.skuId);
    }
}
