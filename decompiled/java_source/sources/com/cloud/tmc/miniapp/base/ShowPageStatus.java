package com.cloud.tmc.miniapp.base;

/* JADX INFO: loaded from: classes3.dex */
public enum ShowPageStatus {
    SHOULDOVERRIDEURKLOADING(1),
    PAGE_START(2),
    PAGE_PROGRESS100(3),
    PAGE_FINISHED(4);

    private int type;

    ShowPageStatus(int i11) {
        this.type = i11;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
