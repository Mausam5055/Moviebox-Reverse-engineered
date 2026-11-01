package com.cloud.tmc.kernel.utils;

import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public class TraceLog {
    public static void d(String str, String str2) {
        d(str, str2, false);
    }

    public static void d(String str, String str2, boolean z10) {
        TmcLogger.d(str, str2);
        if (z10) {
            report(str, str2);
        }
    }

    public static void e(String str, String str2) {
        e(str, str2, false);
    }

    public static void e(String str, String str2, boolean z10) {
        TmcLogger.e(str, str2);
        if (z10) {
            report(str, str2);
        }
    }

    public static void i(String str, String str2) {
        i(str, str2, false);
    }

    public static void i(String str, String str2, boolean z10) {
        TmcLogger.i(str, str2);
        if (z10) {
            report(str, str2);
        }
    }

    private static void report(String str, String str2) {
    }

    public static void v(String str, String str2) {
        v(str, str2, false);
    }

    public static void v(String str, String str2, boolean z10) {
        TmcLogger.v(str, str2);
        if (z10) {
            report(str, str2);
        }
    }

    public static void w(String str, String str2) {
        w(str, str2, false);
    }

    public static void w(String str, String str2, boolean z10) {
        TmcLogger.w(str, str2);
        if (z10) {
            report(str, str2);
        }
    }
}
