package com.iab.omid.library.mmadbridge.adsession;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

/* JADX INFO: loaded from: classes4.dex */
public enum DeviceCategory {
    CTV("ctv"),
    MOBILE("mobile"),
    OTHER(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);

    private final String deviceCategory;

    DeviceCategory(String str) {
        this.deviceCategory = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.deviceCategory;
    }
}
