package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class p0 {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(35);
        if (iLastIndexOf > 0) {
            str = str.substring(0, iLastIndexOf);
        }
        int iLastIndexOf2 = str.lastIndexOf(63);
        if (iLastIndexOf2 > 0) {
            str = str.substring(0, iLastIndexOf2);
        }
        int iLastIndexOf3 = str.lastIndexOf(47);
        if (iLastIndexOf3 >= 0) {
            str = str.substring(iLastIndexOf3 + 1);
        }
        return (str.isEmpty() || !Pattern.matches("[a-zA-Z_0-9\\.\\-\\(\\)\\%]+", str)) ? "" : str;
    }

    private static Map b(String str) {
        HashMap map = new HashMap();
        String strD = d(str);
        if (strD == null) {
            return map;
        }
        for (String str2 : strD.split("[&]")) {
            String[] strArrSplit = str2.split("[=]");
            if (strArrSplit.length > 1) {
                map.put(strArrSplit[0], strArrSplit[1]);
            } else if (!"".equals(strArrSplit[0])) {
                map.put(strArrSplit[0], "");
            }
        }
        return map;
    }

    public static String c(String str, String str2) {
        Map mapB;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (mapB = b(str2)) == null || mapB.isEmpty()) {
            return "";
        }
        String str3 = (String) mapB.get(str);
        return TextUtils.isEmpty(str3) ? "" : str3;
    }

    private static String d(String str) {
        String[] strArrSplit;
        String str2;
        String strTrim = str.trim();
        if (strTrim == null || strTrim.length() <= 1 || (strArrSplit = strTrim.split("[?]")) == null || strArrSplit.length <= 1 || (str2 = strArrSplit[1]) == null) {
            return null;
        }
        return str2;
    }

    public static boolean e(String str, String str2) {
        return str2.startsWith(str);
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            new URL(str);
            return true;
        } catch (MalformedURLException unused) {
            return false;
        }
    }
}
