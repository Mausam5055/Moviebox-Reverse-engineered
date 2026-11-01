package com.bytedance.sdk.openadsdk.sU;

import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes3.dex */
public enum EjP {
    TYPE_2G("2g"),
    TYPE_3G("3g"),
    TYPE_4G("4g"),
    TYPE_5G("5g"),
    TYPE_WIFI("wifi"),
    TYPE_MOBILE("mobile"),
    TYPE_UNKNOWN(TmcConstants.ROUTE_UNKNOWN);

    private String Dq;

    EjP(String str) {
        this.Dq = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.Dq;
    }
}
