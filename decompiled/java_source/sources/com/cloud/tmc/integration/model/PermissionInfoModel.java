package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\nJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0011JJ\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\b2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013¨\u0006*"}, d2 = {"Lcom/cloud/tmc/integration/model/PermissionInfoModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "scopeName", "", "scopeDescription", "authTimeStamp", "", TmcConstants.KEY_CHECK_SCOPE_AUTH_RESULT, "", "validityTime", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V", "getAuthStatus", "()Ljava/lang/Boolean;", "setAuthStatus", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getAuthTimeStamp", "()Ljava/lang/Long;", "setAuthTimeStamp", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getScopeDescription", "()Ljava/lang/String;", "setScopeDescription", "(Ljava/lang/String;)V", "getScopeName", "setScopeName", "getValidityTime", "setValidityTime", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)Lcom/cloud/tmc/integration/model/PermissionInfoModel;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermissionInfoModel extends BaseBean {
    private Boolean authStatus;
    private Long authTimeStamp;
    private String scopeDescription;
    private String scopeName;
    private Long validityTime;

    public PermissionInfoModel(String str, String str2, Long l11, Boolean bool, Long l12) {
        this.scopeName = str;
        this.scopeDescription = str2;
        this.authTimeStamp = l11;
        this.authStatus = bool;
        this.validityTime = l12;
    }

    public static /* synthetic */ PermissionInfoModel copy$default(PermissionInfoModel permissionInfoModel, String str, String str2, Long l11, Boolean bool, Long l12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = permissionInfoModel.scopeName;
        }
        if ((i11 & 2) != 0) {
            str2 = permissionInfoModel.scopeDescription;
        }
        String str3 = str2;
        if ((i11 & 4) != 0) {
            l11 = permissionInfoModel.authTimeStamp;
        }
        Long l13 = l11;
        if ((i11 & 8) != 0) {
            bool = permissionInfoModel.authStatus;
        }
        Boolean bool2 = bool;
        if ((i11 & 16) != 0) {
            l12 = permissionInfoModel.validityTime;
        }
        return permissionInfoModel.copy(str, str3, l13, bool2, l12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getScopeName() {
        return this.scopeName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScopeDescription() {
        return this.scopeDescription;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getAuthTimeStamp() {
        return this.authTimeStamp;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getValidityTime() {
        return this.validityTime;
    }

    public final PermissionInfoModel copy(String scopeName, String scopeDescription, Long authTimeStamp, Boolean authStatus, Long validityTime) {
        return new PermissionInfoModel(scopeName, scopeDescription, authTimeStamp, authStatus, validityTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermissionInfoModel)) {
            return false;
        }
        PermissionInfoModel permissionInfoModel = (PermissionInfoModel) other;
        return Intrinsics.c(this.scopeName, permissionInfoModel.scopeName) && Intrinsics.c(this.scopeDescription, permissionInfoModel.scopeDescription) && Intrinsics.c(this.authTimeStamp, permissionInfoModel.authTimeStamp) && Intrinsics.c(this.authStatus, permissionInfoModel.authStatus) && Intrinsics.c(this.validityTime, permissionInfoModel.validityTime);
    }

    public final Boolean getAuthStatus() {
        return this.authStatus;
    }

    public final Long getAuthTimeStamp() {
        return this.authTimeStamp;
    }

    public final String getScopeDescription() {
        return this.scopeDescription;
    }

    public final String getScopeName() {
        return this.scopeName;
    }

    public final Long getValidityTime() {
        return this.validityTime;
    }

    public int hashCode() {
        String str = this.scopeName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.scopeDescription;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l11 = this.authTimeStamp;
        int iHashCode3 = (iHashCode2 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Boolean bool = this.authStatus;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Long l12 = this.validityTime;
        return iHashCode4 + (l12 != null ? l12.hashCode() : 0);
    }

    public final void setAuthStatus(Boolean bool) {
        this.authStatus = bool;
    }

    public final void setAuthTimeStamp(Long l11) {
        this.authTimeStamp = l11;
    }

    public final void setScopeDescription(String str) {
        this.scopeDescription = str;
    }

    public final void setScopeName(String str) {
        this.scopeName = str;
    }

    public final void setValidityTime(Long l11) {
        this.validityTime = l11;
    }

    public String toString() {
        return "PermissionInfoModel(scopeName=" + this.scopeName + ", scopeDescription=" + this.scopeDescription + ", authTimeStamp=" + this.authTimeStamp + ", authStatus=" + this.authStatus + ", validityTime=" + this.validityTime + ")";
    }
}
