package com.blankj.utilcode.util;

import android.app.ActivityManager;
import android.app.Application;
import android.os.Process;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t {
    public static String a() {
        String strC = c();
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String strB = b();
        return !TextUtils.isEmpty(strB) ? strB : d();
    }

    private static String b() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        try {
            ActivityManager activityManager = (ActivityManager) Utils.a().getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
                int iMyPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == iMyPid && (str = runningAppProcessInfo.processName) != null) {
                        return str;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    private static String c() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            String strTrim = bufferedReader.readLine().trim();
            bufferedReader.close();
            return strTrim;
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    private static String d() {
        try {
            Application applicationA = Utils.a();
            Field field = applicationA.getClass().getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(applicationA);
            Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            return (String) obj2.getClass().getDeclaredMethod(ProcessUtils.GET_PROCESS_NAME, null).invoke(obj2, null);
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static boolean e() {
        return Utils.a().getPackageName().equals(a());
    }
}
