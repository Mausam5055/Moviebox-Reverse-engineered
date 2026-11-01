package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ&\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/integration/model/PermissionAuthStatusModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", TmcConstants.KEY_CHECK_SCOPE_AUTH_RESULT, "", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getAuthStatus", "()Ljava/lang/Boolean;", "setAuthStatus", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/cloud/tmc/integration/model/PermissionAuthStatusModel;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermissionAuthStatusModel extends BaseBean {
    private String appId;
    private Boolean authStatus;

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionAuthStatusModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public PermissionAuthStatusModel(String str, Boolean bool) {
        this.appId = str;
        this.authStatus = bool;
    }

    public /* synthetic */ PermissionAuthStatusModel(String str, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : bool);
    }

    public static /* synthetic */ PermissionAuthStatusModel copy$default(PermissionAuthStatusModel permissionAuthStatusModel, String str, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = permissionAuthStatusModel.appId;
        }
        if ((i11 & 2) != 0) {
            bool = permissionAuthStatusModel.authStatus;
        }
        return permissionAuthStatusModel.copy(str, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    public final PermissionAuthStatusModel copy(String appId, Boolean authStatus) {
        return new PermissionAuthStatusModel(appId, authStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermissionAuthStatusModel)) {
            return false;
        }
        PermissionAuthStatusModel permissionAuthStatusModel = (PermissionAuthStatusModel) other;
        return Intrinsics.c(this.appId, permissionAuthStatusModel.appId) && Intrinsics.c(this.authStatus, permissionAuthStatusModel.authStatus);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.authStatus;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setAuthStatus(Boolean bool) {
        this.authStatus = bool;
    }

    public String toString() {
        return "PermissionAuthStatusModel(appId=" + this.appId + ", authStatus=" + this.authStatus + ")";
    }
}
