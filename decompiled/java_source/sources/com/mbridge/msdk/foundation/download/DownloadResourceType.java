package com.mbridge.msdk.foundation.download;

/* JADX INFO: loaded from: classes5.dex */
public enum DownloadResourceType {
    DOWNLOAD_RESOURCE_TYPE_VIDEO(0),
    DOWNLOAD_RESOURCE_TYPE_ZIP(1),
    DOWNLOAD_RESOURCE_TYPE_IMAGE(2),
    DOWNLOAD_RESOURCE_TYPE_HTML(3),
    DOWNLOAD_RESOURCE_TYPE_OTHER(4),
    DOWNLOAD_RESOURCE_TYPE_APK(5);

    public int resourceType;

    DownloadResourceType(int i11) {
        this.resourceType = i11;
    }

    public static DownloadResourceType getDownloadResourceType(int i11) {
        if (i11 == 0) {
            return DOWNLOAD_RESOURCE_TYPE_VIDEO;
        }
        if (i11 == 1) {
            return DOWNLOAD_RESOURCE_TYPE_ZIP;
        }
        if (i11 == 2) {
            return DOWNLOAD_RESOURCE_TYPE_IMAGE;
        }
        if (i11 == 3) {
            return DOWNLOAD_RESOURCE_TYPE_HTML;
        }
        if (i11 == 4) {
            return DOWNLOAD_RESOURCE_TYPE_OTHER;
        }
        if (i11 != 5) {
            return null;
        }
        return DOWNLOAD_RESOURCE_TYPE_APK;
    }
}
