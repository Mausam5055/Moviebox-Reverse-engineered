package com.cloud.tmc.integration.model;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/model/LauncherPreDataModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", TmcConstants.KEY_PRE_DATA_SCHEME_URL, "bundle", "Landroid/os/Bundle;", "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getBundle", "()Landroid/os/Bundle;", "setBundle", "(Landroid/os/Bundle;)V", "getSchemeUrl", "setSchemeUrl", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LauncherPreDataModel extends BaseBean {
    private String appId;
    private Bundle bundle;
    private String schemeUrl;

    public LauncherPreDataModel(String str, String str2, Bundle bundle) {
        this.appId = str;
        this.schemeUrl = str2;
        this.bundle = bundle;
    }

    public static /* synthetic */ LauncherPreDataModel copy$default(LauncherPreDataModel launcherPreDataModel, String str, String str2, Bundle bundle, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = launcherPreDataModel.appId;
        }
        if ((i11 & 2) != 0) {
            str2 = launcherPreDataModel.schemeUrl;
        }
        if ((i11 & 4) != 0) {
            bundle = launcherPreDataModel.bundle;
        }
        return launcherPreDataModel.copy(str, str2, bundle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSchemeUrl() {
        return this.schemeUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Bundle getBundle() {
        return this.bundle;
    }

    public final LauncherPreDataModel copy(String appId, String schemeUrl, Bundle bundle) {
        return new LauncherPreDataModel(appId, schemeUrl, bundle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LauncherPreDataModel)) {
            return false;
        }
        LauncherPreDataModel launcherPreDataModel = (LauncherPreDataModel) other;
        return Intrinsics.c(this.appId, launcherPreDataModel.appId) && Intrinsics.c(this.schemeUrl, launcherPreDataModel.schemeUrl) && Intrinsics.c(this.bundle, launcherPreDataModel.bundle);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Bundle getBundle() {
        return this.bundle;
    }

    public final String getSchemeUrl() {
        return this.schemeUrl;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.schemeUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Bundle bundle = this.bundle;
        return iHashCode2 + (bundle != null ? bundle.hashCode() : 0);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public final void setSchemeUrl(String str) {
        this.schemeUrl = str;
    }

    public String toString() {
        return "LauncherPreDataModel(appId=" + this.appId + ", schemeUrl=" + this.schemeUrl + ", bundle=" + this.bundle + ")";
    }
}
