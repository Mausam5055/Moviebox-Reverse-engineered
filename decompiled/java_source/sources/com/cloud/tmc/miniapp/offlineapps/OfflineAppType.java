package com.cloud.tmc.miniapp.offlineapps;

/* JADX INFO: loaded from: classes3.dex */
public enum OfflineAppType {
    OFFLINE_DOWNLOAD(1),
    USED(2);

    private int type;

    OfflineAppType(int i11) {
        this.type = i11;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
