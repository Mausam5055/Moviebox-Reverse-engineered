package com.cloud.tmc.ad.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/cloud/tmc/ad/bean/AdExtraBean;", "Ljava/io/Serializable;", "appId", "", "testMode", "", "sdkVersion", "(Ljava/lang/String;ZLjava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getSdkVersion", "setSdkVersion", "getTestMode", "()Z", "setTestMode", "(Z)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdExtraBean implements Serializable {
    private String appId;
    private String sdkVersion;
    private boolean testMode;

    public AdExtraBean(String appId, boolean z10, String sdkVersion) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(sdkVersion, "sdkVersion");
        this.appId = appId;
        this.testMode = z10;
        this.sdkVersion = sdkVersion;
    }

    public static /* synthetic */ AdExtraBean copy$default(AdExtraBean adExtraBean, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = adExtraBean.appId;
        }
        if ((i11 & 2) != 0) {
            z10 = adExtraBean.testMode;
        }
        if ((i11 & 4) != 0) {
            str2 = adExtraBean.sdkVersion;
        }
        return adExtraBean.copy(str, z10, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getTestMode() {
        return this.testMode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final AdExtraBean copy(String appId, boolean testMode, String sdkVersion) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(sdkVersion, "sdkVersion");
        return new AdExtraBean(appId, testMode, sdkVersion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdExtraBean)) {
            return false;
        }
        AdExtraBean adExtraBean = (AdExtraBean) other;
        return Intrinsics.c(this.appId, adExtraBean.appId) && this.testMode == adExtraBean.testMode && Intrinsics.c(this.sdkVersion, adExtraBean.sdkVersion);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final boolean getTestMode() {
        return this.testMode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = this.appId.hashCode() * 31;
        boolean z10 = this.testMode;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return ((iHashCode + r11) * 31) + this.sdkVersion.hashCode();
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setSdkVersion(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sdkVersion = str;
    }

    public final void setTestMode(boolean z10) {
        this.testMode = z10;
    }

    public String toString() {
        return "AdExtraBean(appId=" + this.appId + ", testMode=" + this.testMode + ", sdkVersion=" + this.sdkVersion + ")";
    }
}
