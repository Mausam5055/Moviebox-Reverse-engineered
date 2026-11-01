package com.blankj.utilcode.util;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static int a() {
        return b(Utils.a().getPackageName());
    }

    public static int b(String str) {
        if (e0.D(str)) {
            return 0;
        }
        try {
            PackageInfo packageInfo = Utils.a().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public static String c() {
        return d(Utils.a().getPackageName());
    }

    public static String d(String str) {
        if (e0.D(str)) {
            return "";
        }
        try {
            PackageManager packageManager = Utils.a().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static String e() {
        return Utils.a().getPackageName();
    }

    public static int f() {
        return g(Utils.a().getPackageName());
    }

    public static int g(String str) {
        if (e0.D(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.a().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    public static String h() {
        return i(Utils.a().getPackageName());
    }

    public static String i(String str) {
        if (e0.D(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.a().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static boolean j() {
        return k(Utils.a().getPackageName());
    }

    public static boolean k(String str) {
        if (e0.D(str)) {
            return false;
        }
        try {
            return (Utils.a().getPackageManager().getApplicationInfo(str, 0).flags & 2) != 0;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean l() {
        return e0.x();
    }

    public static boolean m(String str) {
        if (e0.D(str)) {
            return false;
        }
        try {
            return Utils.a().getPackageManager().getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
