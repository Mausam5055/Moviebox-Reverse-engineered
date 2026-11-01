package com.aliyun.utils;

import android.content.Context;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes2.dex */
public class AppUtils {
    private static String appName;
    private static boolean appNameDecied;
    private static String packageName;
    private static boolean packageNameDecied;

    public static String getAppName(Context context) {
        if (appNameDecied) {
            return appName;
        }
        if (context == null) {
            return null;
        }
        String strEncode = URLEncoder.encode(context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString());
        appName = strEncode;
        appNameDecied = true;
        return strEncode;
    }

    public static String getPackageName(Context context) {
        if (packageNameDecied) {
            return packageName;
        }
        if (context == null) {
            return null;
        }
        String packageName2 = context.getPackageName();
        packageName = packageName2;
        packageNameDecied = true;
        return packageName2;
    }
}
