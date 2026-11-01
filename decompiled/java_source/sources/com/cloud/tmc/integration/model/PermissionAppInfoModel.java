package com.cloud.tmc.integration.model;

import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002BM\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0016JV\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\u000b2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0004HÖ\u0001R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u0006/"}, d2 = {"Lcom/cloud/tmc/integration/model/PermissionAppInfoModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "appId", "", "scopeName", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "appLogo", "authTime", "", TmcConstants.KEY_CHECK_SCOPE_AUTH_RESULT, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getAppLogo", "setAppLogo", "getAppName", "setAppName", "getAuthStatus", "()Ljava/lang/Boolean;", "setAuthStatus", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getAuthTime", "()Ljava/lang/Long;", "setAuthTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getScopeName", "setScopeName", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/model/PermissionAppInfoModel;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermissionAppInfoModel extends BaseBean implements Serializable {
    private String appId;
    private String appLogo;
    private String appName;
    private Boolean authStatus;
    private Long authTime;
    private String scopeName;

    public PermissionAppInfoModel() {
        this(null, null, null, null, null, null, 63, null);
    }

    public PermissionAppInfoModel(String str, String str2, String str3, String str4, Long l11, Boolean bool) {
        this.appId = str;
        this.scopeName = str2;
        this.appName = str3;
        this.appLogo = str4;
        this.authTime = l11;
        this.authStatus = bool;
    }

    public /* synthetic */ PermissionAppInfoModel(String str, String str2, String str3, String str4, Long l11, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) == 0 ? str4 : null, (i11 & 16) != 0 ? 0L : l11, (i11 & 32) != 0 ? Boolean.TRUE : bool);
    }

    public static /* synthetic */ PermissionAppInfoModel copy$default(PermissionAppInfoModel permissionAppInfoModel, String str, String str2, String str3, String str4, Long l11, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = permissionAppInfoModel.appId;
        }
        if ((i11 & 2) != 0) {
            str2 = permissionAppInfoModel.scopeName;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = permissionAppInfoModel.appName;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = permissionAppInfoModel.appLogo;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            l11 = permissionAppInfoModel.authTime;
        }
        Long l12 = l11;
        if ((i11 & 32) != 0) {
            bool = permissionAppInfoModel.authStatus;
        }
        return permissionAppInfoModel.copy(str, str5, str6, str7, l12, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScopeName() {
        return this.scopeName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAppLogo() {
        return this.appLogo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getAuthTime() {
        return this.authTime;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    public final PermissionAppInfoModel copy(String appId, String scopeName, String appName, String appLogo, Long authTime, Boolean authStatus) {
        return new PermissionAppInfoModel(appId, scopeName, appName, appLogo, authTime, authStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermissionAppInfoModel)) {
            return false;
        }
        PermissionAppInfoModel permissionAppInfoModel = (PermissionAppInfoModel) other;
        return Intrinsics.c(this.appId, permissionAppInfoModel.appId) && Intrinsics.c(this.scopeName, permissionAppInfoModel.scopeName) && Intrinsics.c(this.appName, permissionAppInfoModel.appName) && Intrinsics.c(this.appLogo, permissionAppInfoModel.appLogo) && Intrinsics.c(this.authTime, permissionAppInfoModel.authTime) && Intrinsics.c(this.authStatus, permissionAppInfoModel.authStatus);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getAppLogo() {
        return this.appLogo;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    public final Long getAuthTime() {
        return this.authTime;
    }

    public final String getScopeName() {
        return this.scopeName;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.scopeName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.appName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.appLogo;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l11 = this.authTime;
        int iHashCode5 = (iHashCode4 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Boolean bool = this.authStatus;
        return iHashCode5 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setAppLogo(String str) {
        this.appLogo = str;
    }

    public final void setAppName(String str) {
        this.appName = str;
    }

    public final void setAuthStatus(Boolean bool) {
        this.authStatus = bool;
    }

    public final void setAuthTime(Long l11) {
        this.authTime = l11;
    }

    public final void setScopeName(String str) {
        this.scopeName = str;
    }

    public String toString() {
        return "PermissionAppInfoModel(appId=" + this.appId + ", scopeName=" + this.scopeName + ", appName=" + this.appName + ", appLogo=" + this.appLogo + ", authTime=" + this.authTime + ", authStatus=" + this.authStatus + ")";
    }
}
