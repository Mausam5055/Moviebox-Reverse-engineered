package com.bytedance.sdk.openadsdk.core.TEQ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    public static String Sj(String str) {
        return TextUtils.isEmpty(str) ? str : Sj(Fmk.gq().gR(), str);
    }

    public static String Sj(String str, String str2) {
        if (TextUtils.isEmpty(str2) || str2.startsWith("http://") || str2.startsWith("https://")) {
            return str2;
        }
        if (TextUtils.isEmpty(str) || str.endsWith("/")) {
            return str + "static/" + str2;
        }
        return str + "/static/" + str2;
    }
}
