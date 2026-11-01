package com.bytedance.sdk.component.adexpress.EjP;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    public static boolean Sj(String str) {
        return TextUtils.equals(str, "fullscreen_interstitial_ad") || TextUtils.equals(str, "rewarded_video");
    }

    public static boolean sP(String str) {
        return com.bytedance.sdk.component.adexpress.EjP.sP() && Sj(str);
    }
}
