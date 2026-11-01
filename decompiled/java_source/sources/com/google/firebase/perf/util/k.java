package com.google.firebase.perf.util;

import android.content.Context;
import android.content.pm.PackageManager;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f32381a;

    public static void a(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean b(Context context) {
        Boolean bool = f32381a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean boolValueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f32381a = boolValueOf;
            return boolValueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e11) {
            sc.a.e().a("No perf logcat meta data found " + e11.getMessage());
            return false;
        }
    }

    public static int c(long j11) {
        if (j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j11 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j11;
    }

    public static String d(String str) {
        HttpUrl httpUrl = HttpUrl.parse(str);
        return httpUrl != null ? httpUrl.newBuilder().username("").password("").query(null).fragment(null).toString() : str;
    }

    public static String e(String str, int i11) {
        HttpUrl httpUrl;
        int iLastIndexOf;
        if (str.length() <= i11) {
            return str;
        }
        if (str.charAt(i11) != '/' && (httpUrl = HttpUrl.parse(str)) != null) {
            return (httpUrl.encodedPath().lastIndexOf(47) < 0 || (iLastIndexOf = str.lastIndexOf(47, i11 + (-1))) < 0) ? str.substring(0, i11) : str.substring(0, iLastIndexOf);
        }
        return str.substring(0, i11);
    }
}
