package com.tencent.mmkv;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f40563a = "";

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f40563a)) {
            return f40563a;
        }
        String strD = d();
        f40563a = strD;
        if (!TextUtils.isEmpty(strD)) {
            return f40563a;
        }
        String strC = c();
        f40563a = strC;
        if (!TextUtils.isEmpty(strC)) {
            return f40563a;
        }
        String strB = b(context);
        f40563a = strB;
        return strB;
    }

    private static String b(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    private static String c() {
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            return objInvoke instanceof String ? (String) objInvoke : "";
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    private static String d() {
        return Build.VERSION.SDK_INT >= 28 ? Application.getProcessName() : "";
    }
}
