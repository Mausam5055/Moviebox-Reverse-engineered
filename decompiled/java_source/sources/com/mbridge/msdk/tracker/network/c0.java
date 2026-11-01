package com.mbridge.msdk.tracker.network;

import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f38564a = "TrackManager_Volley";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38565b = "com.mbridge.msdk.tracker.network.c0";

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i11 = 2; i11 < stackTrace.length; i11++) {
            if (!stackTrace[i11].getClassName().equals(f38565b)) {
                String className = stackTrace[i11].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i11].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void a(Throwable th2, String str, Object... objArr) {
        Log.e(f38564a, a(str, objArr), th2);
    }

    public static void b(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f38564a, a(str, objArr));
    }

    public static void d(String str, Object... objArr) {
    }
}
