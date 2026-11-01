package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0087\b\u0018\u0000 B2\u00020\u0001:\u0001CBS\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b&\u0010'J\u0012\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0004\b(\u0010)Jj\u0010*\u001a\u00020\u00002\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b.\u0010\u001bJ\u001a\u00102\u001a\u0002012\b\u00100\u001a\u0004\u0018\u00010/HÖ\u0003¢\u0006\u0004\b2\u00103R\u001f\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u00104\u001a\u0004\b5\u0010\u001dR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u00106\u001a\u0004\b7\u0010\u001fR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u00108\u001a\u0004\b9\u0010!R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010:\u001a\u0004\b;\u0010#R\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010<\u001a\u0004\b=\u0010%R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010>\u001a\u0004\b?\u0010'R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010@\u001a\u0004\bA\u0010)¨\u0006D"}, d2 = {"Lcom/transsion/memberapi/ThreeInOnePopup;", "Landroid/os/Parcelable;", "", "", "moduleOrder", "Lcom/transsion/memberapi/LotteryModule;", "lotteryModule", "Lcom/transsion/memberapi/PayModule;", "payModule", "Lcom/transsion/memberapi/MemberModule;", "memberModule", "Lcom/transsion/memberapi/AdModule;", "adModule", "Lcom/transsion/memberapi/LotteryDisableModule;", "lotteryDisableModule", "Lcom/transsion/memberapi/OrModule;", "orModule", "<init>", "(Ljava/util/List;Lcom/transsion/memberapi/LotteryModule;Lcom/transsion/memberapi/PayModule;Lcom/transsion/memberapi/MemberModule;Lcom/transsion/memberapi/AdModule;Lcom/transsion/memberapi/LotteryDisableModule;Lcom/transsion/memberapi/OrModule;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/util/List;", "component2", "()Lcom/transsion/memberapi/LotteryModule;", "component3", "()Lcom/transsion/memberapi/PayModule;", "component4", "()Lcom/transsion/memberapi/MemberModule;", "component5", "()Lcom/transsion/memberapi/AdModule;", "component6", "()Lcom/transsion/memberapi/LotteryDisableModule;", "component7", "()Lcom/transsion/memberapi/OrModule;", "copy", "(Ljava/util/List;Lcom/transsion/memberapi/LotteryModule;Lcom/transsion/memberapi/PayModule;Lcom/transsion/memberapi/MemberModule;Lcom/transsion/memberapi/AdModule;Lcom/transsion/memberapi/LotteryDisableModule;Lcom/transsion/memberapi/OrModule;)Lcom/transsion/memberapi/ThreeInOnePopup;", "toString", "()Ljava/lang/String;", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getModuleOrder", "Lcom/transsion/memberapi/LotteryModule;", "getLotteryModule", "Lcom/transsion/memberapi/PayModule;", "getPayModule", "Lcom/transsion/memberapi/MemberModule;", "getMemberModule", "Lcom/transsion/memberapi/AdModule;", "getAdModule", "Lcom/transsion/memberapi/LotteryDisableModule;", "getLotteryDisableModule", "Lcom/transsion/memberapi/OrModule;", "getOrModule", "Companion", "a", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ThreeInOnePopup implements Parcelable {
    public static final String THREE_IN_ONE_MODULE_TYPE_AD = "THREE_IN_ONE_MODULE_TYPE_AD";
    public static final String THREE_IN_ONE_MODULE_TYPE_LOTTERY = "THREE_IN_ONE_MODULE_TYPE_LOTTERY";
    public static final String THREE_IN_ONE_MODULE_TYPE_LOTTERY_DISABLE = "THREE_IN_ONE_MODULE_TYPE_LOTTERY_DISABLE";
    public static final String THREE_IN_ONE_MODULE_TYPE_MEMBER = "THREE_IN_ONE_MODULE_TYPE_MEMBER";
    public static final String THREE_IN_ONE_MODULE_TYPE_OR = "THREE_IN_ONE_MODULE_TYPE_OR";
    public static final String THREE_IN_ONE_MODULE_TYPE_PAY = "THREE_IN_ONE_MODULE_TYPE_PAY";
    public static final String THREE_IN_ONE_MODULE_TYPE_UNSPECIFIED = "THREE_IN_ONE_MODULE_TYPE_UNSPECIFIED";
    private final AdModule adModule;
    private final LotteryDisableModule lotteryDisableModule;
    private final LotteryModule lotteryModule;
    private final MemberModule memberModule;
    private final List<String> moduleOrder;
    private final OrModule orModule;
    private final PayModule payModule;
    public static final Parcelable.Creator<ThreeInOnePopup> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThreeInOnePopup createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ThreeInOnePopup(parcel.createStringArrayList(), parcel.readInt() == 0 ? null : LotteryModule.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : PayModule.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : MemberModule.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : AdModule.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : LotteryDisableModule.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? OrModule.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ThreeInOnePopup[] newArray(int i11) {
            return new ThreeInOnePopup[i11];
        }
    }

    public ThreeInOnePopup(List<String> list, LotteryModule lotteryModule, PayModule payModule, MemberModule memberModule, AdModule adModule, LotteryDisableModule lotteryDisableModule, OrModule orModule) {
        this.moduleOrder = list;
        this.lotteryModule = lotteryModule;
        this.payModule = payModule;
        this.memberModule = memberModule;
        this.adModule = adModule;
        this.lotteryDisableModule = lotteryDisableModule;
        this.orModule = orModule;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ThreeInOnePopup copy$default(ThreeInOnePopup threeInOnePopup, List list, LotteryModule lotteryModule, PayModule payModule, MemberModule memberModule, AdModule adModule, LotteryDisableModule lotteryDisableModule, OrModule orModule, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = threeInOnePopup.moduleOrder;
        }
        if ((i11 & 2) != 0) {
            lotteryModule = threeInOnePopup.lotteryModule;
        }
        LotteryModule lotteryModule2 = lotteryModule;
        if ((i11 & 4) != 0) {
            payModule = threeInOnePopup.payModule;
        }
        PayModule payModule2 = payModule;
        if ((i11 & 8) != 0) {
            memberModule = threeInOnePopup.memberModule;
        }
        MemberModule memberModule2 = memberModule;
        if ((i11 & 16) != 0) {
            adModule = threeInOnePopup.adModule;
        }
        AdModule adModule2 = adModule;
        if ((i11 & 32) != 0) {
            lotteryDisableModule = threeInOnePopup.lotteryDisableModule;
        }
        LotteryDisableModule lotteryDisableModule2 = lotteryDisableModule;
        if ((i11 & 64) != 0) {
            orModule = threeInOnePopup.orModule;
        }
        return threeInOnePopup.copy(list, lotteryModule2, payModule2, memberModule2, adModule2, lotteryDisableModule2, orModule);
    }

    public final List<String> component1() {
        return this.moduleOrder;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LotteryModule getLotteryModule() {
        return this.lotteryModule;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PayModule getPayModule() {
        return this.payModule;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final MemberModule getMemberModule() {
        return this.memberModule;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final AdModule getAdModule() {
        return this.adModule;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final LotteryDisableModule getLotteryDisableModule() {
        return this.lotteryDisableModule;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final OrModule getOrModule() {
        return this.orModule;
    }

    public final ThreeInOnePopup copy(List<String> moduleOrder, LotteryModule lotteryModule, PayModule payModule, MemberModule memberModule, AdModule adModule, LotteryDisableModule lotteryDisableModule, OrModule orModule) {
        return new ThreeInOnePopup(moduleOrder, lotteryModule, payModule, memberModule, adModule, lotteryDisableModule, orModule);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThreeInOnePopup)) {
            return false;
        }
        ThreeInOnePopup threeInOnePopup = (ThreeInOnePopup) other;
        return Intrinsics.c(this.moduleOrder, threeInOnePopup.moduleOrder) && Intrinsics.c(this.lotteryModule, threeInOnePopup.lotteryModule) && Intrinsics.c(this.payModule, threeInOnePopup.payModule) && Intrinsics.c(this.memberModule, threeInOnePopup.memberModule) && Intrinsics.c(this.adModule, threeInOnePopup.adModule) && Intrinsics.c(this.lotteryDisableModule, threeInOnePopup.lotteryDisableModule) && Intrinsics.c(this.orModule, threeInOnePopup.orModule);
    }

    public final AdModule getAdModule() {
        return this.adModule;
    }

    public final LotteryDisableModule getLotteryDisableModule() {
        return this.lotteryDisableModule;
    }

    public final LotteryModule getLotteryModule() {
        return this.lotteryModule;
    }

    public final MemberModule getMemberModule() {
        return this.memberModule;
    }

    public final List<String> getModuleOrder() {
        return this.moduleOrder;
    }

    public final OrModule getOrModule() {
        return this.orModule;
    }

    public final PayModule getPayModule() {
        return this.payModule;
    }

    public int hashCode() {
        List<String> list = this.moduleOrder;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        LotteryModule lotteryModule = this.lotteryModule;
        int iHashCode2 = (iHashCode + (lotteryModule == null ? 0 : lotteryModule.hashCode())) * 31;
        PayModule payModule = this.payModule;
        int iHashCode3 = (iHashCode2 + (payModule == null ? 0 : payModule.hashCode())) * 31;
        MemberModule memberModule = this.memberModule;
        int iHashCode4 = (iHashCode3 + (memberModule == null ? 0 : memberModule.hashCode())) * 31;
        AdModule adModule = this.adModule;
        int iHashCode5 = (iHashCode4 + (adModule == null ? 0 : adModule.hashCode())) * 31;
        LotteryDisableModule lotteryDisableModule = this.lotteryDisableModule;
        int iHashCode6 = (iHashCode5 + (lotteryDisableModule == null ? 0 : lotteryDisableModule.hashCode())) * 31;
        OrModule orModule = this.orModule;
        return iHashCode6 + (orModule != null ? orModule.hashCode() : 0);
    }

    public String toString() {
        return "ThreeInOnePopup(moduleOrder=" + this.moduleOrder + ", lotteryModule=" + this.lotteryModule + ", payModule=" + this.payModule + ", memberModule=" + this.memberModule + ", adModule=" + this.adModule + ", lotteryDisableModule=" + this.lotteryDisableModule + ", orModule=" + this.orModule + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeStringList(this.moduleOrder);
        LotteryModule lotteryModule = this.lotteryModule;
        if (lotteryModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryModule.writeToParcel(dest, flags);
        }
        PayModule payModule = this.payModule;
        if (payModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            payModule.writeToParcel(dest, flags);
        }
        MemberModule memberModule = this.memberModule;
        if (memberModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            memberModule.writeToParcel(dest, flags);
        }
        AdModule adModule = this.adModule;
        if (adModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            adModule.writeToParcel(dest, flags);
        }
        LotteryDisableModule lotteryDisableModule = this.lotteryDisableModule;
        if (lotteryDisableModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryDisableModule.writeToParcel(dest, flags);
        }
        OrModule orModule = this.orModule;
        if (orModule == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            orModule.writeToParcel(dest, flags);
        }
    }
}
