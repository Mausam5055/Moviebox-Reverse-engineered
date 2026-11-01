package com.cloud.tmc.kernel.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniutils.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public class ProcessUtils {
    public static final String ACTIVITY_THREAD = "android.app.ActivityThread";
    public static final String CURRENT_ACTIVITY_THREAD = "currentActivityThread";
    public static final String GET_PROCESS_NAME = "getProcessName";
    private static String currentProcessName;
    private static Boolean isMainProcess;
    private static Boolean isMiniProcess;

    @NonNull
    public static Context getContext() {
        return Utils.getApp();
    }

    public static int getPid() {
        return Process.myPid();
    }

    @Nullable
    public static String getProcessName() {
        try {
            if (!TextUtils.isEmpty(currentProcessName)) {
                return currentProcessName;
            }
            try {
                currentProcessName = (String) ReflectUtils.invokeMethod(ReflectUtils.invokeMethod(ACTIVITY_THREAD, CURRENT_ACTIVITY_THREAD), GET_PROCESS_NAME);
                TmcLogger.d("TmcKernel", "getProcessName from ActivityThread: " + currentProcessName);
            } catch (Throwable th2) {
                TmcLogger.e("TmcKernel", "getProcessName error!", th2);
            }
            if (currentProcessName == null) {
                Context context = getContext();
                int iMyPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == iMyPid) {
                        currentProcessName = runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Exception e11) {
            TmcLogger.e("TmcKernel", "getProcessName error", e11);
        }
        return currentProcessName;
    }

    public static boolean isMainProcess() {
        if (isMainProcess == null) {
            Context context = getContext();
            String processName = getProcessName();
            isMainProcess = Boolean.valueOf(TextUtils.equals(processName, context.getPackageName()));
            TmcLogger.d("TmcKernel", "isMainProcess " + isMainProcess + " processName: " + processName + " stack: " + Log.getStackTraceString(new Throwable("Just Print!")));
        }
        return isMainProcess.booleanValue();
    }

    public static boolean isMiniProcess() {
        if (isMiniProcess == null) {
            String processName = getProcessName();
            isMiniProcess = Boolean.valueOf((processName == null || TextUtils.isEmpty(processName) || !processName.contains(":mini")) ? false : true);
        }
        return isMiniProcess.booleanValue();
    }

    public static boolean isProcessAlive(Context context, String str) {
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (!TextUtils.isEmpty(runningAppProcessInfo.processName) && runningAppProcessInfo.processName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSubMiniProcess() {
        if (isMiniProcess == null) {
            String processName = getProcessName();
            String miniProcess = AppDynamicBuildConfig.getMiniProcess();
            if (miniProcess == null) {
                return isMiniProcess.booleanValue();
            }
            isMiniProcess = Boolean.valueOf((processName == null || TextUtils.isEmpty(processName) || processName.equals(miniProcess) || !processName.contains(miniProcess)) ? false : true);
        }
        return isMiniProcess.booleanValue();
    }

    public static boolean isZeroProcess() {
        return (isMainProcess() || isMiniProcess()) ? false : true;
    }
}
