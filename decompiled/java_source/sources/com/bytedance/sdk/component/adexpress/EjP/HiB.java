package com.bytedance.sdk.component.adexpress.EjP;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    public static boolean Sj(String str) {
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            return TextUtils.equals(str, "embeded_ad") || TextUtils.equals(str, "banner_ad");
        }
        return false;
    }
}
