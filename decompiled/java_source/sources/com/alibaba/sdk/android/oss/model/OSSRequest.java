package com.alibaba.sdk.android.oss.model;

/* JADX INFO: loaded from: classes2.dex */
public class OSSRequest {
    private boolean isAuthorizationRequired = true;
    private Enum CRC64 = CRC64Config.NULL;

    public enum CRC64Config {
        NULL,
        YES,
        NO
    }

    public Enum getCRC64() {
        return this.CRC64;
    }

    public boolean isAuthorizationRequired() {
        return this.isAuthorizationRequired;
    }

    public void setCRC64(Enum r11) {
        this.CRC64 = r11;
    }

    public void setIsAuthorizationRequired(boolean z10) {
        this.isAuthorizationRequired = z10;
    }
}
