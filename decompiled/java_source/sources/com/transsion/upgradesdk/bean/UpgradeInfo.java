package com.transsion.upgradesdk.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/upgradesdk/bean/UpgradeInfo;", "Ljava/io/Serializable;", "isNewVersion", "", "showUpgradeDialog", "isForceUpgrade", "versionName", "", "(ZZZLjava/lang/String;)V", "()Z", "getShowUpgradeDialog", "getVersionName", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UpgradeInfo implements Serializable {
    private final boolean isForceUpgrade;
    private final boolean isNewVersion;
    private final boolean showUpgradeDialog;
    private final String versionName;

    public UpgradeInfo(boolean z10, boolean z11, boolean z12, String str) {
        this.isNewVersion = z10;
        this.showUpgradeDialog = z11;
        this.isForceUpgrade = z12;
        this.versionName = str;
    }

    public static /* synthetic */ UpgradeInfo copy$default(UpgradeInfo upgradeInfo, boolean z10, boolean z11, boolean z12, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = upgradeInfo.isNewVersion;
        }
        if ((i11 & 2) != 0) {
            z11 = upgradeInfo.showUpgradeDialog;
        }
        if ((i11 & 4) != 0) {
            z12 = upgradeInfo.isForceUpgrade;
        }
        if ((i11 & 8) != 0) {
            str = upgradeInfo.versionName;
        }
        return upgradeInfo.copy(z10, z11, z12, str);
    }

    public final native boolean component1();

    public final native boolean component2();

    public final native boolean component3();

    public final native String component4();

    public final native UpgradeInfo copy(boolean isNewVersion, boolean showUpgradeDialog, boolean isForceUpgrade, String versionName);

    public native boolean equals(Object other);

    public final native boolean getShowUpgradeDialog();

    public final native String getVersionName();

    public native int hashCode();

    public final native boolean isForceUpgrade();

    public final native boolean isNewVersion();

    public native String toString();
}
