package com.cloud.tmc.integration.model;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003JD\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0006HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000b\"\u0004\b\u0018\u0010\r¨\u0006%"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;", "", "appId", "", "name", "logoResId", "", MiniAppIpcConfig.IPC_ADDHOME_APP_LOGO, "logoPath", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getLogoPath", "setLogoPath", "getLogoResId", "()Ljava/lang/Integer;", "setLogoResId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getLogoUrl", "setLogoUrl", "getName", "setName", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppCenterInfoData {
    private String appId;
    private String logoPath;
    private Integer logoResId;
    private String logoUrl;
    private String name;

    public MiniAppCenterInfoData(String appId, String name, Integer num, String logoUrl, String str) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(name, "name");
        Intrinsics.h(logoUrl, "logoUrl");
        this.appId = appId;
        this.name = name;
        this.logoResId = num;
        this.logoUrl = logoUrl;
        this.logoPath = str;
    }

    public static /* synthetic */ MiniAppCenterInfoData copy$default(MiniAppCenterInfoData miniAppCenterInfoData, String str, String str2, Integer num, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = miniAppCenterInfoData.appId;
        }
        if ((i11 & 2) != 0) {
            str2 = miniAppCenterInfoData.name;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            num = miniAppCenterInfoData.logoResId;
        }
        Integer num2 = num;
        if ((i11 & 8) != 0) {
            str3 = miniAppCenterInfoData.logoUrl;
        }
        String str6 = str3;
        if ((i11 & 16) != 0) {
            str4 = miniAppCenterInfoData.logoPath;
        }
        return miniAppCenterInfoData.copy(str, str5, num2, str6, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getLogoResId() {
        return this.logoResId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLogoUrl() {
        return this.logoUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLogoPath() {
        return this.logoPath;
    }

    public final MiniAppCenterInfoData copy(String appId, String name, Integer logoResId, String logoUrl, String logoPath) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(name, "name");
        Intrinsics.h(logoUrl, "logoUrl");
        return new MiniAppCenterInfoData(appId, name, logoResId, logoUrl, logoPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppCenterInfoData)) {
            return false;
        }
        MiniAppCenterInfoData miniAppCenterInfoData = (MiniAppCenterInfoData) other;
        return Intrinsics.c(this.appId, miniAppCenterInfoData.appId) && Intrinsics.c(this.name, miniAppCenterInfoData.name) && Intrinsics.c(this.logoResId, miniAppCenterInfoData.logoResId) && Intrinsics.c(this.logoUrl, miniAppCenterInfoData.logoUrl) && Intrinsics.c(this.logoPath, miniAppCenterInfoData.logoPath);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getLogoPath() {
        return this.logoPath;
    }

    public final Integer getLogoResId() {
        return this.logoResId;
    }

    public final String getLogoUrl() {
        return this.logoUrl;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = ((this.appId.hashCode() * 31) + this.name.hashCode()) * 31;
        Integer num = this.logoResId;
        int iHashCode2 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + this.logoUrl.hashCode()) * 31;
        String str = this.logoPath;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setLogoPath(String str) {
        this.logoPath = str;
    }

    public final void setLogoResId(Integer num) {
        this.logoResId = num;
    }

    public final void setLogoUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.logoUrl = str;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        return "MiniAppCenterInfoData(appId=" + this.appId + ", name=" + this.name + ", logoResId=" + this.logoResId + ", logoUrl=" + this.logoUrl + ", logoPath=" + this.logoPath + ")";
    }
}
