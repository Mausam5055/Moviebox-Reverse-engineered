package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class sU {
    private static boolean Sj = false;
    private static String sP = "";

    private static String Sj(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb2.append(obj.toString());
            } else {
                sb2.append(" null ");
            }
            sb2.append(" ");
        }
        return sb2.toString();
    }

    public static void Sj() {
        Sj = true;
    }

    public static void Sj(String str) {
        sP = str;
    }

    public static void Sj(String str, String str2) {
        if (Sj && str2 != null) {
            sP(str);
        }
    }

    public static void Sj(String str, String str2, Throwable th2) {
        if (Sj) {
            if (str2 == null && th2 == null) {
                return;
            }
            Log.e(sP(str), str2, th2);
        }
    }

    public static void Sj(String str, Object... objArr) {
        if (Sj && objArr != null) {
            sP(str);
            Sj(objArr);
        }
    }

    private static String sP(String str) {
        if (TextUtils.isEmpty(sP)) {
            return str;
        }
        return Sj("[" + sP + "]-[" + str + "]");
    }

    public static void sP() {
        Sj = false;
    }

    public static void sP(String str, String str2) {
        if (Sj && str2 != null) {
            Log.e(sP(str), str2);
        }
    }

    public static void sP(String str, Object... objArr) {
        if (Sj && objArr != null) {
            Log.e(sP(str), Sj(objArr));
        }
    }
}
