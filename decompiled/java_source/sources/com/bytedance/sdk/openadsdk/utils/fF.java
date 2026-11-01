package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;

/* JADX INFO: loaded from: classes3.dex */
public class fF {
    private static String Sj;

    public static String Sj(String str) {
        try {
            if (!Sj()) {
                return str;
            }
            String strZR = com.bytedance.sdk.openadsdk.core.uA.sP().zR();
            if (TextUtils.isEmpty(strZR)) {
                return str;
            }
            "AnyDoorId=".concat(String.valueOf(strZR));
            return Uri.parse(str).buildUpon().appendQueryParameter(sP(), strZR).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static boolean Sj() {
        return com.bytedance.sdk.component.utils.Zq.EjP() && com.bytedance.sdk.openadsdk.core.uA.sP().RiZ() && com.bytedance.sdk.openadsdk.core.uA.sP().dx();
    }

    public static boolean TKC() {
        return false;
    }

    public static String sP() {
        if (TextUtils.isEmpty(Sj)) {
            Sj = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return Sj;
    }
}
