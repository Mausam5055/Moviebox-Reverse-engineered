package com.transsion.athena.attribution;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class AttrLog {
    public static final String LOG_TAG = "AthenaAttr";

    public static void d(String str) {
    }

    public static void e(String str) {
        Log.e(LOG_TAG, str);
    }

    public static void printStackTrace(Exception exc) {
        Log.e(LOG_TAG, Log.getStackTraceString(exc));
    }
}
