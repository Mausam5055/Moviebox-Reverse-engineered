package com.transsion.al.ka;

import android.app.ActivityManager;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class KaManager {
    public static final String NOTIFICATION_GROUP_FULLSCREEN = "fullScreen";
    public static final String TAG = "KaManager";

    private static void addAutoStartList(Context context) {
        SystemApiUtil.setAutoStartEnable((ActivityManager) context.getSystemService("activity"), context.getPackageName(), true);
        if (SystemApiUtil.isItel()) {
            SystemApiUtil.setForbiddenAutoRunPackages(context, context.getPackageName(), false);
            SystemApiUtil.setForbiddenLinkRunPackages(context, context.getPackageName(), false);
        }
    }

    private static void addCleanProtectList(Context context) {
        SystemApiUtil.setCleanProtect((ActivityManager) context.getSystemService("activity"), context.getPackageName(), true);
    }

    public static void init(Context context) {
        try {
            addAutoStartList(context);
            addCleanProtectList(context);
            AccountUtils.autoSyncStart(context);
            c.a(TAG, "hook auto live success");
        } catch (Throwable th2) {
            c.c(TAG, th2, "");
        }
    }
}
