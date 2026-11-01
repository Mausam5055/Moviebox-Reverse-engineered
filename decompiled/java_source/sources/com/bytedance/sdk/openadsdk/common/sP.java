package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static String Sj;

    public static String EjP() {
        return Mts.Jcg();
    }

    public static String HiB() {
        return com.bytedance.sdk.openadsdk.core.uA.sP().Dq();
    }

    public static String Jcg() {
        try {
            if (!TextUtils.isEmpty(Sj)) {
                return Sj;
            }
            String strSj = com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_app_sha1", TmcConstants.MINIAPP_TIME_DIFF);
            Sj = strSj;
            if (Sj(strSj)) {
                return Sj;
            }
            String strSj2 = com.bytedance.sdk.component.utils.TKC.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            Sj = strSj2;
            if (!Sj(strSj2)) {
                return "";
            }
            String upperCase = Sj.toUpperCase();
            Sj = upperCase;
            com.bytedance.sdk.openadsdk.core.uA.Sj("sdk_app_sha1", upperCase);
            return Sj;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String Sj() {
        return "open_news";
    }

    public static String Sj(Context context) {
        return com.bytedance.sdk.openadsdk.core.aa.Sj(context);
    }

    private static boolean Sj(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str) || (strArrSplit = str.split(":")) == null || strArrSplit.length < 20) {
            return false;
        }
        for (String str2 : strArrSplit) {
            if (!"00".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public static String TKC() {
        return BuildConfig.VERSION_NAME;
    }

    public static String sP() {
        return "1371";
    }

    public static String vS() {
        return com.bytedance.sdk.component.utils.TzV.Jcg(com.bytedance.sdk.openadsdk.core.dNu.Sj());
    }
}
