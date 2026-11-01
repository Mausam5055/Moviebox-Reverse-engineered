package com.transsion.memberapi;

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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0007J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006)"}, d2 = {"Lcom/transsion/memberapi/MemberFeatureData;", "Landroid/os/Parcelable;", "featureIcon", "", "featureName", "featureLink", "basic", "", "pro", "superscript", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getFeatureIcon", "()Ljava/lang/String;", "getFeatureName", "getFeatureLink", "getBasic", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPro", "getSuperscript", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/memberapi/MemberFeatureData;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberFeatureData implements Parcelable {
    public static final Parcelable.Creator<MemberFeatureData> CREATOR = new a();
    private final Integer basic;
    private final String featureIcon;
    private final String featureLink;
    private final String featureName;
    private final Integer pro;
    private final String superscript;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberFeatureData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MemberFeatureData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberFeatureData[] newArray(int i11) {
            return new MemberFeatureData[i11];
        }
    }

    public MemberFeatureData() {
        this(null, null, null, null, null, null, 63, null);
    }

    public MemberFeatureData(String str, String str2, String str3, Integer num, Integer num2, String str4) {
        this.featureIcon = str;
        this.featureName = str2;
        this.featureLink = str3;
        this.basic = num;
        this.pro = num2;
        this.superscript = str4;
    }

    public /* synthetic */ MemberFeatureData(String str, String str2, String str3, Integer num, Integer num2, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? "" : str3, (i11 & 8) != 0 ? 0 : num, (i11 & 16) != 0 ? 0 : num2, (i11 & 32) != 0 ? "" : str4);
    }

    public static /* synthetic */ MemberFeatureData copy$default(MemberFeatureData memberFeatureData, String str, String str2, String str3, Integer num, Integer num2, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = memberFeatureData.featureIcon;
        }
        if ((i11 & 2) != 0) {
            str2 = memberFeatureData.featureName;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = memberFeatureData.featureLink;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            num = memberFeatureData.basic;
        }
        Integer num3 = num;
        if ((i11 & 16) != 0) {
            num2 = memberFeatureData.pro;
        }
        Integer num4 = num2;
        if ((i11 & 32) != 0) {
            str4 = memberFeatureData.superscript;
        }
        return memberFeatureData.copy(str, str5, str6, num3, num4, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFeatureIcon() {
        return this.featureIcon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFeatureName() {
        return this.featureName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFeatureLink() {
        return this.featureLink;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getBasic() {
        return this.basic;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getPro() {
        return this.pro;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSuperscript() {
        return this.superscript;
    }

    public final MemberFeatureData copy(String featureIcon, String featureName, String featureLink, Integer basic, Integer pro, String superscript) {
        return new MemberFeatureData(featureIcon, featureName, featureLink, basic, pro, superscript);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberFeatureData)) {
            return false;
        }
        MemberFeatureData memberFeatureData = (MemberFeatureData) other;
        return Intrinsics.c(this.featureIcon, memberFeatureData.featureIcon) && Intrinsics.c(this.featureName, memberFeatureData.featureName) && Intrinsics.c(this.featureLink, memberFeatureData.featureLink) && Intrinsics.c(this.basic, memberFeatureData.basic) && Intrinsics.c(this.pro, memberFeatureData.pro) && Intrinsics.c(this.superscript, memberFeatureData.superscript);
    }

    public final Integer getBasic() {
        return this.basic;
    }

    public final String getFeatureIcon() {
        return this.featureIcon;
    }

    public final String getFeatureLink() {
        return this.featureLink;
    }

    public final String getFeatureName() {
        return this.featureName;
    }

    public final Integer getPro() {
        return this.pro;
    }

    public final String getSuperscript() {
        return this.superscript;
    }

    public int hashCode() {
        String str = this.featureIcon;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.featureName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.featureLink;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.basic;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.pro;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.superscript;
        return iHashCode5 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "MemberFeatureData(featureIcon=" + this.featureIcon + ", featureName=" + this.featureName + ", featureLink=" + this.featureLink + ", basic=" + this.basic + ", pro=" + this.pro + ", superscript=" + this.superscript + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.featureIcon);
        dest.writeString(this.featureName);
        dest.writeString(this.featureLink);
        Integer num = this.basic;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.pro;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.superscript);
    }
}
