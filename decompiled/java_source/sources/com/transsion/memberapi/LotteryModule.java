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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003JJ\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001dHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001dR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012¨\u0006("}, d2 = {"Lcom/transsion/memberapi/LotteryModule;", "Landroid/os/Parcelable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "bannerUrl", "", "firstTitle", "Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "secondTitle", "thirdTitle", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V", "getEnable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBannerUrl", "()Ljava/lang/String;", "getFirstTitle", "()Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "getSecondTitle", "getThirdTitle", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)Lcom/transsion/memberapi/LotteryModule;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryModule implements Parcelable {
    public static final Parcelable.Creator<LotteryModule> CREATOR = new a();
    private final String bannerUrl;
    private final Boolean enable;
    private final ThreeInOnePopupTitle firstTitle;
    private final ThreeInOnePopupTitle secondTitle;
    private final ThreeInOnePopupTitle thirdTitle;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryModule createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new LotteryModule(boolValueOf, parcel.readString(), parcel.readInt() == 0 ? null : ThreeInOnePopupTitle.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ThreeInOnePopupTitle.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? ThreeInOnePopupTitle.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryModule[] newArray(int i11) {
            return new LotteryModule[i11];
        }
    }

    public LotteryModule(Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle, ThreeInOnePopupTitle threeInOnePopupTitle2, ThreeInOnePopupTitle threeInOnePopupTitle3) {
        this.enable = bool;
        this.bannerUrl = str;
        this.firstTitle = threeInOnePopupTitle;
        this.secondTitle = threeInOnePopupTitle2;
        this.thirdTitle = threeInOnePopupTitle3;
    }

    public static /* synthetic */ LotteryModule copy$default(LotteryModule lotteryModule, Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle, ThreeInOnePopupTitle threeInOnePopupTitle2, ThreeInOnePopupTitle threeInOnePopupTitle3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = lotteryModule.enable;
        }
        if ((i11 & 2) != 0) {
            str = lotteryModule.bannerUrl;
        }
        String str2 = str;
        if ((i11 & 4) != 0) {
            threeInOnePopupTitle = lotteryModule.firstTitle;
        }
        ThreeInOnePopupTitle threeInOnePopupTitle4 = threeInOnePopupTitle;
        if ((i11 & 8) != 0) {
            threeInOnePopupTitle2 = lotteryModule.secondTitle;
        }
        ThreeInOnePopupTitle threeInOnePopupTitle5 = threeInOnePopupTitle2;
        if ((i11 & 16) != 0) {
            threeInOnePopupTitle3 = lotteryModule.thirdTitle;
        }
        return lotteryModule.copy(bool, str2, threeInOnePopupTitle4, threeInOnePopupTitle5, threeInOnePopupTitle3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBannerUrl() {
        return this.bannerUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ThreeInOnePopupTitle getFirstTitle() {
        return this.firstTitle;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ThreeInOnePopupTitle getSecondTitle() {
        return this.secondTitle;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ThreeInOnePopupTitle getThirdTitle() {
        return this.thirdTitle;
    }

    public final LotteryModule copy(Boolean enable, String bannerUrl, ThreeInOnePopupTitle firstTitle, ThreeInOnePopupTitle secondTitle, ThreeInOnePopupTitle thirdTitle) {
        return new LotteryModule(enable, bannerUrl, firstTitle, secondTitle, thirdTitle);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryModule)) {
            return false;
        }
        LotteryModule lotteryModule = (LotteryModule) other;
        return Intrinsics.c(this.enable, lotteryModule.enable) && Intrinsics.c(this.bannerUrl, lotteryModule.bannerUrl) && Intrinsics.c(this.firstTitle, lotteryModule.firstTitle) && Intrinsics.c(this.secondTitle, lotteryModule.secondTitle) && Intrinsics.c(this.thirdTitle, lotteryModule.thirdTitle);
    }

    public final String getBannerUrl() {
        return this.bannerUrl;
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final ThreeInOnePopupTitle getFirstTitle() {
        return this.firstTitle;
    }

    public final ThreeInOnePopupTitle getSecondTitle() {
        return this.secondTitle;
    }

    public final ThreeInOnePopupTitle getThirdTitle() {
        return this.thirdTitle;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.bannerUrl;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        ThreeInOnePopupTitle threeInOnePopupTitle = this.firstTitle;
        int iHashCode3 = (iHashCode2 + (threeInOnePopupTitle == null ? 0 : threeInOnePopupTitle.hashCode())) * 31;
        ThreeInOnePopupTitle threeInOnePopupTitle2 = this.secondTitle;
        int iHashCode4 = (iHashCode3 + (threeInOnePopupTitle2 == null ? 0 : threeInOnePopupTitle2.hashCode())) * 31;
        ThreeInOnePopupTitle threeInOnePopupTitle3 = this.thirdTitle;
        return iHashCode4 + (threeInOnePopupTitle3 != null ? threeInOnePopupTitle3.hashCode() : 0);
    }

    public String toString() {
        return "LotteryModule(enable=" + this.enable + ", bannerUrl=" + this.bannerUrl + ", firstTitle=" + this.firstTitle + ", secondTitle=" + this.secondTitle + ", thirdTitle=" + this.thirdTitle + ")";
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
        dest.writeString(this.bannerUrl);
        ThreeInOnePopupTitle threeInOnePopupTitle = this.firstTitle;
        if (threeInOnePopupTitle == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            threeInOnePopupTitle.writeToParcel(dest, flags);
        }
        ThreeInOnePopupTitle threeInOnePopupTitle2 = this.secondTitle;
        if (threeInOnePopupTitle2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            threeInOnePopupTitle2.writeToParcel(dest, flags);
        }
        ThreeInOnePopupTitle threeInOnePopupTitle3 = this.thirdTitle;
        if (threeInOnePopupTitle3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            threeInOnePopupTitle3.writeToParcel(dest, flags);
        }
    }
}
