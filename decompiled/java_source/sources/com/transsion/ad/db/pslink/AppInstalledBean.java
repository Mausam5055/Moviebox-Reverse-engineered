package com.transsion.ad.db.pslink;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0087\b\u0018\u0000 F2\u00020\u0001:\u0001GBo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001aJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001aJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001aJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001aJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u001aJ\u0012\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b$\u0010#Jz\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b'\u0010\u001aJ\u0010\u0010(\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b(\u0010\u0018J\u001a\u0010,\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010)HÖ\u0003¢\u0006\u0004\b,\u0010-R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010.\u001a\u0004\b/\u0010\u001a\"\u0004\b0\u00101R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010.\u001a\u0004\b2\u0010\u001a\"\u0004\b3\u00101R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010.\u001a\u0004\b4\u0010\u001a\"\u0004\b5\u00101R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010.\u001a\u0004\b6\u0010\u001a\"\u0004\b7\u00101R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010.\u001a\u0004\b8\u0010\u001a\"\u0004\b9\u00101R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010.\u001a\u0004\b:\u0010\u001a\"\u0004\b;\u00101R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010<\u001a\u0004\b=\u0010!\"\u0004\b>\u0010?R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010@\u001a\u0004\bA\u0010#\"\u0004\bB\u0010CR$\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010@\u001a\u0004\bD\u0010#\"\u0004\bE\u0010C¨\u0006H"}, d2 = {"Lcom/transsion/ad/db/pslink/AppInstalledBean;", "Landroid/os/Parcelable;", "", "packageName", EventConstants.KEY_SOURCE, MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "versionName", "versionCode", "horizontalImageUrl", "", "eCPM", "", "installTime", "lastOpenTime", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Long;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "()Ljava/lang/Double;", "component8", "()Ljava/lang/Long;", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/ad/db/pslink/AppInstalledBean;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getPackageName", "setPackageName", "(Ljava/lang/String;)V", "getSource", "setSource", "getAppName", "setAppName", "getVersionName", "setVersionName", "getVersionCode", "setVersionCode", "getHorizontalImageUrl", "setHorizontalImageUrl", "Ljava/lang/Double;", "getECPM", "setECPM", "(Ljava/lang/Double;)V", "Ljava/lang/Long;", "getInstallTime", "setInstallTime", "(Ljava/lang/Long;)V", "getLastOpenTime", "setLastOpenTime", "Companion", "a", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AppInstalledBean implements Parcelable {
    public static final String APP_INSTALLED_BEAN_SOURCE_EW = "EW";
    public static final String APP_INSTALLED_BEAN_SOURCE_MB = "MB";
    private String appName;
    private Double eCPM;
    private String horizontalImageUrl;
    private Long installTime;
    private Long lastOpenTime;
    private String packageName;
    private String source;
    private String versionCode;
    private String versionName;
    public static final Parcelable.Creator<AppInstalledBean> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppInstalledBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppInstalledBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AppInstalledBean[] newArray(int i11) {
            return new AppInstalledBean[i11];
        }
    }

    public AppInstalledBean(String packageName, String str, String str2, String str3, String str4, String str5, Double d11, Long l11, Long l12) {
        Intrinsics.h(packageName, "packageName");
        this.packageName = packageName;
        this.source = str;
        this.appName = str2;
        this.versionName = str3;
        this.versionCode = str4;
        this.horizontalImageUrl = str5;
        this.eCPM = d11;
        this.installTime = l11;
        this.lastOpenTime = l12;
    }

    public /* synthetic */ AppInstalledBean(String str, String str2, String str3, String str4, String str5, String str6, Double d11, Long l11, Long l12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : d11, (i11 & 128) != 0 ? null : l11, (i11 & 256) == 0 ? l12 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getHorizontalImageUrl() {
        return this.horizontalImageUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Double getECPM() {
        return this.eCPM;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getInstallTime() {
        return this.installTime;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getLastOpenTime() {
        return this.lastOpenTime;
    }

    public final AppInstalledBean copy(String packageName, String source, String appName, String versionName, String versionCode, String horizontalImageUrl, Double eCPM, Long installTime, Long lastOpenTime) {
        Intrinsics.h(packageName, "packageName");
        return new AppInstalledBean(packageName, source, appName, versionName, versionCode, horizontalImageUrl, eCPM, installTime, lastOpenTime);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppInstalledBean)) {
            return false;
        }
        AppInstalledBean appInstalledBean = (AppInstalledBean) other;
        return Intrinsics.c(this.packageName, appInstalledBean.packageName) && Intrinsics.c(this.source, appInstalledBean.source) && Intrinsics.c(this.appName, appInstalledBean.appName) && Intrinsics.c(this.versionName, appInstalledBean.versionName) && Intrinsics.c(this.versionCode, appInstalledBean.versionCode) && Intrinsics.c(this.horizontalImageUrl, appInstalledBean.horizontalImageUrl) && Intrinsics.c(this.eCPM, appInstalledBean.eCPM) && Intrinsics.c(this.installTime, appInstalledBean.installTime) && Intrinsics.c(this.lastOpenTime, appInstalledBean.lastOpenTime);
    }

    public final String getAppName() {
        return this.appName;
    }

    public final Double getECPM() {
        return this.eCPM;
    }

    public final String getHorizontalImageUrl() {
        return this.horizontalImageUrl;
    }

    public final Long getInstallTime() {
        return this.installTime;
    }

    public final Long getLastOpenTime() {
        return this.lastOpenTime;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int iHashCode = this.packageName.hashCode() * 31;
        String str = this.source;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.appName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.versionName;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.versionCode;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.horizontalImageUrl;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Double d11 = this.eCPM;
        int iHashCode7 = (iHashCode6 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Long l11 = this.installTime;
        int iHashCode8 = (iHashCode7 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.lastOpenTime;
        return iHashCode8 + (l12 != null ? l12.hashCode() : 0);
    }

    public final void setAppName(String str) {
        this.appName = str;
    }

    public final void setECPM(Double d11) {
        this.eCPM = d11;
    }

    public final void setHorizontalImageUrl(String str) {
        this.horizontalImageUrl = str;
    }

    public final void setInstallTime(Long l11) {
        this.installTime = l11;
    }

    public final void setLastOpenTime(Long l11) {
        this.lastOpenTime = l11;
    }

    public final void setPackageName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.packageName = str;
    }

    public final void setSource(String str) {
        this.source = str;
    }

    public final void setVersionCode(String str) {
        this.versionCode = str;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "AppInstalledBean(packageName=" + this.packageName + ", source=" + this.source + ", appName=" + this.appName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", horizontalImageUrl=" + this.horizontalImageUrl + ", eCPM=" + this.eCPM + ", installTime=" + this.installTime + ", lastOpenTime=" + this.lastOpenTime + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.packageName);
        dest.writeString(this.source);
        dest.writeString(this.appName);
        dest.writeString(this.versionName);
        dest.writeString(this.versionCode);
        dest.writeString(this.horizontalImageUrl);
        Double d11 = this.eCPM;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
        Long l11 = this.installTime;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Long l12 = this.lastOpenTime;
        if (l12 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l12.longValue());
        }
    }
}
