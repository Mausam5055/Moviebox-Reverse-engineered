package com.transsion.wrapperad.install.appinfo;

import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.transsion.wrapperad.install.open.ChangeType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\nHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\fHÆ\u0003J^\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006+"}, d2 = {"Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "Ljava/io/Serializable;", "packageName", "", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "versionName", "versionCode", "", "installerPackage", "changeType", "Lcom/transsion/wrapperad/install/open/ChangeType;", RewardPlus.ICON, "Landroid/graphics/drawable/Drawable;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;Landroid/graphics/drawable/Drawable;)V", "getPackageName", "()Ljava/lang/String;", "getAppName", "getVersionName", "getVersionCode", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getInstallerPackage", "getChangeType", "()Lcom/transsion/wrapperad/install/open/ChangeType;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;Landroid/graphics/drawable/Drawable;)Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AppChangeInfo implements Serializable {
    private final String appName;
    private final ChangeType changeType;
    private final Drawable icon;
    private final String installerPackage;
    private final String packageName;
    private final Long versionCode;
    private final String versionName;

    public AppChangeInfo(String packageName, String str, String str2, Long l11, String str3, ChangeType changeType, Drawable drawable) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(changeType, "changeType");
        this.packageName = packageName;
        this.appName = str;
        this.versionName = str2;
        this.versionCode = l11;
        this.installerPackage = str3;
        this.changeType = changeType;
        this.icon = drawable;
    }

    public static /* synthetic */ AppChangeInfo copy$default(AppChangeInfo appChangeInfo, String str, String str2, String str3, Long l11, String str4, ChangeType changeType, Drawable drawable, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = appChangeInfo.packageName;
        }
        if ((i11 & 2) != 0) {
            str2 = appChangeInfo.appName;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = appChangeInfo.versionName;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            l11 = appChangeInfo.versionCode;
        }
        Long l12 = l11;
        if ((i11 & 16) != 0) {
            str4 = appChangeInfo.installerPackage;
        }
        String str7 = str4;
        if ((i11 & 32) != 0) {
            changeType = appChangeInfo.changeType;
        }
        ChangeType changeType2 = changeType;
        if ((i11 & 64) != 0) {
            drawable = appChangeInfo.icon;
        }
        return appChangeInfo.copy(str, str5, str6, l12, str7, changeType2, drawable);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getInstallerPackage() {
        return this.installerPackage;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final ChangeType getChangeType() {
        return this.changeType;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Drawable getIcon() {
        return this.icon;
    }

    public final AppChangeInfo copy(String packageName, String appName, String versionName, Long versionCode, String installerPackage, ChangeType changeType, Drawable icon) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(changeType, "changeType");
        return new AppChangeInfo(packageName, appName, versionName, versionCode, installerPackage, changeType, icon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppChangeInfo)) {
            return false;
        }
        AppChangeInfo appChangeInfo = (AppChangeInfo) other;
        return Intrinsics.c(this.packageName, appChangeInfo.packageName) && Intrinsics.c(this.appName, appChangeInfo.appName) && Intrinsics.c(this.versionName, appChangeInfo.versionName) && Intrinsics.c(this.versionCode, appChangeInfo.versionCode) && Intrinsics.c(this.installerPackage, appChangeInfo.installerPackage) && this.changeType == appChangeInfo.changeType && Intrinsics.c(this.icon, appChangeInfo.icon);
    }

    public final String getAppName() {
        return this.appName;
    }

    public final ChangeType getChangeType() {
        return this.changeType;
    }

    public final Drawable getIcon() {
        return this.icon;
    }

    public final String getInstallerPackage() {
        return this.installerPackage;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int iHashCode = this.packageName.hashCode() * 31;
        String str = this.appName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.versionName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l11 = this.versionCode;
        int iHashCode4 = (iHashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str3 = this.installerPackage;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.changeType.hashCode()) * 31;
        Drawable drawable = this.icon;
        return iHashCode5 + (drawable != null ? drawable.hashCode() : 0);
    }

    public String toString() {
        return "AppChangeInfo(packageName=" + this.packageName + ", appName=" + this.appName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", installerPackage=" + this.installerPackage + ", changeType=" + this.changeType + ", icon=" + this.icon + ")";
    }
}
