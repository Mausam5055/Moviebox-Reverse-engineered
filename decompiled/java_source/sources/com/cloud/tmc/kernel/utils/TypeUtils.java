package com.cloud.tmc.kernel.utils;

import android.graphics.Color;
import android.text.TextUtils;
import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public class TypeUtils {
    public static String DEFAULT_TYPE_KEY = "@type";

    public static Integer parseColor(Object obj) {
        try {
            if (obj instanceof String) {
                return Integer.valueOf(Color.parseColor((String) obj));
            }
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            return null;
        } catch (Throwable th2) {
            TmcLogger.e("parseColorException!", th2);
            return null;
        }
    }

    public static double parseDouble(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (Throwable th2) {
            TmcLogger.e("parse double exception.", th2);
            return 0.0d;
        }
    }

    public static float parseFloat(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (Throwable th2) {
            TmcLogger.e("parse long exception.", th2);
            return 0.0f;
        }
    }

    public static int parseInt(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Throwable th2) {
            TmcLogger.e("parse int exception.", th2);
            return 0;
        }
    }

    public static long parseLong(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (Throwable th2) {
            TmcLogger.e("parse long exception.", th2);
            return 0L;
        }
    }
}
