package com.cloud.tmc.miniutils.util;

import android.app.ActivityManager;
import android.app.Application;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class ProcessUtils {
    private ProcessUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static String getCurrentProcessName() throws Throwable {
        String currentProcessNameByFile = getCurrentProcessNameByFile();
        if (!TextUtils.isEmpty(currentProcessNameByFile)) {
            return currentProcessNameByFile;
        }
        String currentProcessNameByAms = getCurrentProcessNameByAms();
        return !TextUtils.isEmpty(currentProcessNameByAms) ? currentProcessNameByAms : getCurrentProcessNameByReflect();
    }

    private static String getCurrentProcessNameByAms() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        try {
            ActivityManager activityManager = (ActivityManager) Utils.getApp().getSystemService("activity");
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

    /* JADX WARN: Code duplicated, block: B:38:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static String getCurrentProcessNameByFile() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th2;
        Exception e11;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            try {
                try {
                    String strTrim = bufferedReader.readLine().trim();
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    return strTrim;
                } catch (Exception e13) {
                    e11 = e13;
                    e11.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    return "";
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                }
                throw th2;
            }
        } catch (Exception e16) {
            bufferedReader = null;
            e11 = e16;
        } catch (Throwable th4) {
            bufferedReader = null;
            th2 = th4;
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            throw th2;
        }
    }

    private static String getCurrentProcessNameByReflect() {
        try {
            Application app = Utils.getApp();
            Field field = app.getClass().getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(app);
            Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            return (String) obj2.getClass().getDeclaredMethod(com.cloud.tmc.kernel.utils.ProcessUtils.GET_PROCESS_NAME, null).invoke(obj2, null);
        } catch (Exception e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static boolean isMainProcess() {
        return Utils.getApp().getPackageName().equals(getCurrentProcessName());
    }

    public static boolean isMiniProcess() {
        try {
            String currentProcessName = getCurrentProcessName();
            return (currentProcessName == null || TextUtils.isEmpty(currentProcessName) || !currentProcessName.contains(":mini")) ? false : true;
        } catch (Throwable th2) {
            Log.e("isMiniProcess", "isMiniProcess: ", th2);
            return false;
        }
    }
}
