package com.hisavana.common.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class MediaLogUtil {
    private static final String TAG = "Hisavana_Log";
    private static boolean isInitLogAble;
    private static boolean isInitLogError;
    private static boolean isLogAble;
    private static boolean isLogError;

    private MediaLogUtil() {
    }

    public static void d(String str, Object obj) {
        if (isLogAble()) {
            getTag(str);
            if (obj == null) {
                return;
            }
            obj.toString();
        }
    }

    public static void e(String str, Object obj) {
        if (isLogError()) {
            Log.e(getTag(str), obj == null ? "" : obj.toString());
        }
    }

    private static String getTag(String str) {
        return "Hisavana_Log-" + str;
    }

    public static void i(String str, Object obj) {
        if (isLogAble()) {
            getTag(str);
            if (obj == null) {
                return;
            }
            obj.toString();
        }
    }

    private static boolean isLogAble() {
        if (!isInitLogAble) {
            isLogAble = Log.isLoggable(TAG, 3);
            isInitLogAble = true;
        }
        return isLogAble;
    }

    private static boolean isLogError() {
        if (!isInitLogError) {
            isLogError = Log.isLoggable(TAG, 6);
            isInitLogError = true;
        }
        return isLogError;
    }

    public static void w(String str, Object obj) {
        if (isLogAble()) {
            Log.w(getTag(str), obj == null ? "" : obj.toString());
        }
    }
}
