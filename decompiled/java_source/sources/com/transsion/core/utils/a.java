package com.transsion.core.utils;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static String a() {
        return qk.a.a().getPackageName();
    }

    public static int b() {
        Context contextA = qk.a.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Exception e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    public static String c() {
        Context contextA = qk.a.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }
}
