package com.transsion.api.gateway.config;

/* JADX INFO: loaded from: classes.dex */
public enum WorkMode {
    MODE_TEST(1),
    MODE_ONLINE(3);

    private int mode;

    WorkMode(int i11) {
        this.mode = i11;
    }

    public int getMode() {
        return this.mode;
    }
}
