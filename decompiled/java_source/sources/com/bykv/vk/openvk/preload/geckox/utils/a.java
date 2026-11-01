package com.bykv.vk.openvk.preload.geckox.utils;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f20756a;

    public static String a() {
        if (!TextUtils.isEmpty(f20756a)) {
            return f20756a;
        }
        String strB = b();
        f20756a = strB;
        if (!TextUtils.isEmpty(strB)) {
            return f20756a;
        }
        String strC = c();
        f20756a = strC;
        return !TextUtils.isEmpty(strC) ? f20756a : f20756a;
    }

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e11) {
            GeckoLogger.w("gecko-debug-tag", "getVersion:", e11);
            return "null";
        }
    }

    public static void a(Throwable th2) {
        GeckoLogger.w("gecko-debug-tag", "throwIfDebug:", th2);
    }

    private static String b() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String b(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            return applicationInfo == null ? "" : applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable th2) {
            GeckoLogger.w("gecko-debug-tag", "getApplicationName:", th2);
            return "";
        }
    }

    private static String c() {
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD, false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }
}
