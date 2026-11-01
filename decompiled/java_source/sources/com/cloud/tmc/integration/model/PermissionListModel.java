package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/integration/model/PermissionListModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "scopeName", "", "scopeDescription", "(Ljava/lang/String;Ljava/lang/String;)V", "getScopeDescription", "()Ljava/lang/String;", "setScopeDescription", "(Ljava/lang/String;)V", "getScopeName", "setScopeName", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermissionListModel extends BaseBean implements Serializable {
    private String scopeDescription;
    private String scopeName;

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionListModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public PermissionListModel(String str, String str2) {
        this.scopeName = str;
        this.scopeDescription = str2;
    }

    public /* synthetic */ PermissionListModel(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ PermissionListModel copy$default(PermissionListModel permissionListModel, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = permissionListModel.scopeName;
        }
        if ((i11 & 2) != 0) {
            str2 = permissionListModel.scopeDescription;
        }
        return permissionListModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getScopeName() {
        return this.scopeName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScopeDescription() {
        return this.scopeDescription;
    }

    public final PermissionListModel copy(String scopeName, String scopeDescription) {
        return new PermissionListModel(scopeName, scopeDescription);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermissionListModel)) {
            return false;
        }
        PermissionListModel permissionListModel = (PermissionListModel) other;
        return Intrinsics.c(this.scopeName, permissionListModel.scopeName) && Intrinsics.c(this.scopeDescription, permissionListModel.scopeDescription);
    }

    public final String getScopeDescription() {
        return this.scopeDescription;
    }

    public final String getScopeName() {
        return this.scopeName;
    }

    public int hashCode() {
        String str = this.scopeName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.scopeDescription;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setScopeDescription(String str) {
        this.scopeDescription = str;
    }

    public final void setScopeName(String str) {
        this.scopeName = str;
    }

    public String toString() {
        return "PermissionListModel(scopeName=" + this.scopeName + ", scopeDescription=" + this.scopeDescription + ")";
    }
}
