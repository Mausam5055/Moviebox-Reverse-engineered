package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", TmcConstants.EXTRA_APPINFO, "Lcom/cloud/tmc/integration/model/AppInfoModel;", "(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getAppInfo", "()Lcom/cloud/tmc/integration/model/AppInfoModel;", "setAppInfo", "(Lcom/cloud/tmc/integration/model/AppInfoModel;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppInfoConfigBean extends BaseBean {
    private String appId;
    private AppInfoModel appInfo;

    public MiniAppInfoConfigBean(String str, AppInfoModel appInfoModel) {
        this.appId = str;
        this.appInfo = appInfoModel;
    }

    public static /* synthetic */ MiniAppInfoConfigBean copy$default(MiniAppInfoConfigBean miniAppInfoConfigBean, String str, AppInfoModel appInfoModel, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = miniAppInfoConfigBean.appId;
        }
        if ((i11 & 2) != 0) {
            appInfoModel = miniAppInfoConfigBean.appInfo;
        }
        return miniAppInfoConfigBean.copy(str, appInfoModel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AppInfoModel getAppInfo() {
        return this.appInfo;
    }

    public final MiniAppInfoConfigBean copy(String appId, AppInfoModel appInfo) {
        return new MiniAppInfoConfigBean(appId, appInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppInfoConfigBean)) {
            return false;
        }
        MiniAppInfoConfigBean miniAppInfoConfigBean = (MiniAppInfoConfigBean) other;
        return Intrinsics.c(this.appId, miniAppInfoConfigBean.appId) && Intrinsics.c(this.appInfo, miniAppInfoConfigBean.appInfo);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final AppInfoModel getAppInfo() {
        return this.appInfo;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        AppInfoModel appInfoModel = this.appInfo;
        return iHashCode + (appInfoModel != null ? appInfoModel.hashCode() : 0);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setAppInfo(AppInfoModel appInfoModel) {
        this.appInfo = appInfoModel;
    }

    public String toString() {
        return "MiniAppInfoConfigBean(appId=" + this.appId + ", appInfo=" + this.appInfo + ")";
    }
}
