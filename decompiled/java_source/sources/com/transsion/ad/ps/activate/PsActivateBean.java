package com.transsion.ad.ps.activate;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015Jb\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010!J\u0006\u0010\"\u001a\u00020#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020#HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\u0016\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020#R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006/"}, d2 = {"Lcom/transsion/ad/ps/activate/PsActivateBean;", "Landroid/os/Parcelable;", "showContent", "", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "simpleDescription", "buttonText", "packageName", "iconUrl", "eCPM", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V", "getShowContent", "()Ljava/lang/String;", "getAppName", "getSimpleDescription", "getButtonText", "getPackageName", "getIconUrl", "getECPM", "()Ljava/lang/Double;", "setECPM", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Lcom/transsion/ad/ps/activate/PsActivateBean;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PsActivateBean implements Parcelable {
    public static final Parcelable.Creator<PsActivateBean> CREATOR = new a();
    private final String appName;
    private final String buttonText;
    private Double eCPM;
    private final String iconUrl;
    private final String packageName;
    private final String showContent;
    private final String simpleDescription;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PsActivateBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PsActivateBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PsActivateBean[] newArray(int i11) {
            return new PsActivateBean[i11];
        }
    }

    public PsActivateBean() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public PsActivateBean(String str, String str2, String str3, String str4, String str5, String str6, Double d11) {
        this.showContent = str;
        this.appName = str2;
        this.simpleDescription = str3;
        this.buttonText = str4;
        this.packageName = str5;
        this.iconUrl = str6;
        this.eCPM = d11;
    }

    public /* synthetic */ PsActivateBean(String str, String str2, String str3, String str4, String str5, String str6, Double d11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : d11);
    }

    public static /* synthetic */ PsActivateBean copy$default(PsActivateBean psActivateBean, String str, String str2, String str3, String str4, String str5, String str6, Double d11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = psActivateBean.showContent;
        }
        if ((i11 & 2) != 0) {
            str2 = psActivateBean.appName;
        }
        String str7 = str2;
        if ((i11 & 4) != 0) {
            str3 = psActivateBean.simpleDescription;
        }
        String str8 = str3;
        if ((i11 & 8) != 0) {
            str4 = psActivateBean.buttonText;
        }
        String str9 = str4;
        if ((i11 & 16) != 0) {
            str5 = psActivateBean.packageName;
        }
        String str10 = str5;
        if ((i11 & 32) != 0) {
            str6 = psActivateBean.iconUrl;
        }
        String str11 = str6;
        if ((i11 & 64) != 0) {
            d11 = psActivateBean.eCPM;
        }
        return psActivateBean.copy(str, str7, str8, str9, str10, str11, d11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getShowContent() {
        return this.showContent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Double getECPM() {
        return this.eCPM;
    }

    public final PsActivateBean copy(String showContent, String appName, String simpleDescription, String buttonText, String packageName, String iconUrl, Double eCPM) {
        return new PsActivateBean(showContent, appName, simpleDescription, buttonText, packageName, iconUrl, eCPM);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PsActivateBean)) {
            return false;
        }
        PsActivateBean psActivateBean = (PsActivateBean) other;
        return Intrinsics.c(this.showContent, psActivateBean.showContent) && Intrinsics.c(this.appName, psActivateBean.appName) && Intrinsics.c(this.simpleDescription, psActivateBean.simpleDescription) && Intrinsics.c(this.buttonText, psActivateBean.buttonText) && Intrinsics.c(this.packageName, psActivateBean.packageName) && Intrinsics.c(this.iconUrl, psActivateBean.iconUrl) && Intrinsics.c(this.eCPM, psActivateBean.eCPM);
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final Double getECPM() {
        return this.eCPM;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getShowContent() {
        return this.showContent;
    }

    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    public int hashCode() {
        String str = this.showContent;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.appName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.simpleDescription;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.buttonText;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.packageName;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.iconUrl;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Double d11 = this.eCPM;
        return iHashCode6 + (d11 != null ? d11.hashCode() : 0);
    }

    public final void setECPM(Double d11) {
        this.eCPM = d11;
    }

    public String toString() {
        return "PsActivateBean(showContent=" + this.showContent + ", appName=" + this.appName + ", simpleDescription=" + this.simpleDescription + ", buttonText=" + this.buttonText + ", packageName=" + this.packageName + ", iconUrl=" + this.iconUrl + ", eCPM=" + this.eCPM + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.showContent);
        dest.writeString(this.appName);
        dest.writeString(this.simpleDescription);
        dest.writeString(this.buttonText);
        dest.writeString(this.packageName);
        dest.writeString(this.iconUrl);
        Double d11 = this.eCPM;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
    }
}
