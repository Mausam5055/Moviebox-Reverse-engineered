package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010 \u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000bHÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015Jt\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020\bJ\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\bHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0015R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001a\u0010\u0015¨\u00061"}, d2 = {"Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;", "Landroid/os/Parcelable;", "subjectId", "", "entitlementKey", "entitlementProperty", "verifyValue", "se", "", "ep", "eps", "", "resolution", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V", "getSubjectId", "()Ljava/lang/String;", "getEntitlementKey", "getEntitlementProperty", "getVerifyValue", "getSe", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEp", "getEps", "()Ljava/util/List;", "getResolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PremiumV2CheckAccessRequestBean implements Parcelable {
    public static final Parcelable.Creator<PremiumV2CheckAccessRequestBean> CREATOR = new a();
    private final String entitlementKey;
    private final String entitlementProperty;
    private final Integer ep;
    private final List<Integer> eps;
    private final Integer resolution;
    private final Integer se;
    private final String subjectId;
    private final String verifyValue;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PremiumV2CheckAccessRequestBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(Integer.valueOf(parcel.readInt()));
                }
            }
            return new PremiumV2CheckAccessRequestBean(string, string2, string3, string4, numValueOf, numValueOf2, arrayList, parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PremiumV2CheckAccessRequestBean[] newArray(int i11) {
            return new PremiumV2CheckAccessRequestBean[i11];
        }
    }

    public PremiumV2CheckAccessRequestBean(String str, String str2, String str3, String str4, Integer num, Integer num2, List<Integer> list, Integer num3) {
        this.subjectId = str;
        this.entitlementKey = str2;
        this.entitlementProperty = str3;
        this.verifyValue = str4;
        this.se = num;
        this.ep = num2;
        this.eps = list;
        this.resolution = num3;
    }

    public /* synthetic */ PremiumV2CheckAccessRequestBean(String str, String str2, String str3, String str4, Integer num, Integer num2, List list, Integer num3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : num2, (i11 & 64) != 0 ? null : list, (i11 & 128) == 0 ? num3 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEntitlementProperty() {
        return this.entitlementProperty;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVerifyValue() {
        return this.verifyValue;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getEp() {
        return this.ep;
    }

    public final List<Integer> component7() {
        return this.eps;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getResolution() {
        return this.resolution;
    }

    public final PremiumV2CheckAccessRequestBean copy(String subjectId, String entitlementKey, String entitlementProperty, String verifyValue, Integer se2, Integer ep2, List<Integer> eps, Integer resolution) {
        return new PremiumV2CheckAccessRequestBean(subjectId, entitlementKey, entitlementProperty, verifyValue, se2, ep2, eps, resolution);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PremiumV2CheckAccessRequestBean)) {
            return false;
        }
        PremiumV2CheckAccessRequestBean premiumV2CheckAccessRequestBean = (PremiumV2CheckAccessRequestBean) other;
        return Intrinsics.c(this.subjectId, premiumV2CheckAccessRequestBean.subjectId) && Intrinsics.c(this.entitlementKey, premiumV2CheckAccessRequestBean.entitlementKey) && Intrinsics.c(this.entitlementProperty, premiumV2CheckAccessRequestBean.entitlementProperty) && Intrinsics.c(this.verifyValue, premiumV2CheckAccessRequestBean.verifyValue) && Intrinsics.c(this.se, premiumV2CheckAccessRequestBean.se) && Intrinsics.c(this.ep, premiumV2CheckAccessRequestBean.ep) && Intrinsics.c(this.eps, premiumV2CheckAccessRequestBean.eps) && Intrinsics.c(this.resolution, premiumV2CheckAccessRequestBean.resolution);
    }

    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    public final String getEntitlementProperty() {
        return this.entitlementProperty;
    }

    public final Integer getEp() {
        return this.ep;
    }

    public final List<Integer> getEps() {
        return this.eps;
    }

    public final Integer getResolution() {
        return this.resolution;
    }

    public final Integer getSe() {
        return this.se;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getVerifyValue() {
        return this.verifyValue;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.entitlementKey;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.entitlementProperty;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.verifyValue;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.se;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.ep;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<Integer> list = this.eps;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num3 = this.resolution;
        return iHashCode7 + (num3 != null ? num3.hashCode() : 0);
    }

    public String toString() {
        return "PremiumV2CheckAccessRequestBean(subjectId=" + this.subjectId + ", entitlementKey=" + this.entitlementKey + ", entitlementProperty=" + this.entitlementProperty + ", verifyValue=" + this.verifyValue + ", se=" + this.se + ", ep=" + this.ep + ", eps=" + this.eps + ", resolution=" + this.resolution + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        dest.writeString(this.entitlementKey);
        dest.writeString(this.entitlementProperty);
        dest.writeString(this.verifyValue);
        Integer num = this.se;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.ep;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        List<Integer> list = this.eps;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                dest.writeInt(it.next().intValue());
            }
        }
        Integer num3 = this.resolution;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
    }
}
