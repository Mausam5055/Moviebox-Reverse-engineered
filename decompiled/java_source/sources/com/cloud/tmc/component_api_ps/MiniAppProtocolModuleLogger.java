package com.cloud.tmc.component_api_ps;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class MiniAppProtocolModuleLogger {
    private static final String LOG_LAUNCHER_SWITCH_TAG = "Launcher";
    private static final String LOG_SWITCH_TAG = "miniapp";
    private static final String TAG = "MiniAppProtocolModule::";

    public static void d(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2) || Log.isLoggable("miniapp", 3)) {
                return;
            }
            Log.isLoggable(LOG_LAUNCHER_SWITCH_TAG, 3);
        } catch (Throwable th2) {
            Log.e(TAG, "d: ", th2);
        }
    }

    public static void e(String str, String str2) {
        try {
            Log.e(str, str2, null);
        } catch (Throwable th2) {
            Log.e(TAG, "e: ", th2);
        }
    }

    public static void e(String str, String str2, Throwable th2) {
        try {
            Log.e(str, str2, th2);
        } catch (Throwable th3) {
            Log.e(TAG, "e: ", th3);
        }
    }
}
