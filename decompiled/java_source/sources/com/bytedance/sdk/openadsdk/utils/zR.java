package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class zR {
    public static String Sj(Context context) {
        int iSj = com.bytedance.sdk.component.utils.wE.Sj(context, 0L);
        if (iSj == 2) {
            return "2g";
        }
        if (iSj == 3) {
            return "3g";
        }
        if (iSj == 4) {
            return "wifi";
        }
        if (iSj != 5) {
            return iSj != 6 ? "mobile" : "5g";
        }
        return "4g";
    }
}
