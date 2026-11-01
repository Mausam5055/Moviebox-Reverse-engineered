package com.cloud.tmc.miniapp.offlineapps;

import com.cloud.tmc.kernel.model.BaseBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineDownloadAppBean extends BaseBean {
    private String appId;
    private String zipPath;

    public OfflineDownloadAppBean(String appId, String zipPath) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(zipPath, "zipPath");
        this.appId = appId;
        this.zipPath = zipPath;
    }

    public static /* synthetic */ OfflineDownloadAppBean copy$default(OfflineDownloadAppBean offlineDownloadAppBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = offlineDownloadAppBean.appId;
        }
        if ((i11 & 2) != 0) {
            str2 = offlineDownloadAppBean.zipPath;
        }
        return offlineDownloadAppBean.copy(str, str2);
    }

    public final String component1() {
        return this.appId;
    }

    public final String component2() {
        return this.zipPath;
    }

    public final OfflineDownloadAppBean copy(String appId, String zipPath) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(zipPath, "zipPath");
        return new OfflineDownloadAppBean(appId, zipPath);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfflineDownloadAppBean)) {
            return false;
        }
        OfflineDownloadAppBean offlineDownloadAppBean = (OfflineDownloadAppBean) obj;
        return Intrinsics.c(this.appId, offlineDownloadAppBean.appId) && Intrinsics.c(this.zipPath, offlineDownloadAppBean.zipPath);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getZipPath() {
        return this.zipPath;
    }

    public int hashCode() {
        return this.zipPath.hashCode() + (this.appId.hashCode() * 31);
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setZipPath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.zipPath = str;
    }

    public String toString() {
        return "OfflineDownloadAppBean(appId=" + this.appId + ", zipPath=" + this.zipPath + ")";
    }
}
