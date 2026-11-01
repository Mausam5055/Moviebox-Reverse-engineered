package com.cloud.tmc.integration.model;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\b\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "appLogoUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "getAppLogoUrl", "setAppLogoUrl", "(Ljava/lang/String;)V", "getAppName", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAddHomeDataModel extends BaseBean {
    private final String appId;
    private String appLogoUrl;
    private final String appName;

    public MiniAddHomeDataModel(String appId, String appName, String str) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(appName, "appName");
        this.appId = appId;
        this.appName = appName;
        this.appLogoUrl = str;
    }

    public static /* synthetic */ MiniAddHomeDataModel copy$default(MiniAddHomeDataModel miniAddHomeDataModel, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = miniAddHomeDataModel.appId;
        }
        if ((i11 & 2) != 0) {
            str2 = miniAddHomeDataModel.appName;
        }
        if ((i11 & 4) != 0) {
            str3 = miniAddHomeDataModel.appLogoUrl;
        }
        return miniAddHomeDataModel.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppLogoUrl() {
        return this.appLogoUrl;
    }

    public final MiniAddHomeDataModel copy(String appId, String appName, String appLogoUrl) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(appName, "appName");
        return new MiniAddHomeDataModel(appId, appName, appLogoUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAddHomeDataModel)) {
            return false;
        }
        MiniAddHomeDataModel miniAddHomeDataModel = (MiniAddHomeDataModel) other;
        return Intrinsics.c(this.appId, miniAddHomeDataModel.appId) && Intrinsics.c(this.appName, miniAddHomeDataModel.appName) && Intrinsics.c(this.appLogoUrl, miniAddHomeDataModel.appLogoUrl);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getAppLogoUrl() {
        return this.appLogoUrl;
    }

    public final String getAppName() {
        return this.appName;
    }

    public int hashCode() {
        int iHashCode = ((this.appId.hashCode() * 31) + this.appName.hashCode()) * 31;
        String str = this.appLogoUrl;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setAppLogoUrl(String str) {
        this.appLogoUrl = str;
    }

    public String toString() {
        return "MiniAddHomeDataModel(appId=" + this.appId + ", appName=" + this.appName + ", appLogoUrl=" + this.appLogoUrl + ")";
    }
}
