package com.transsion.startup;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.webkit.WebView;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class f {
    private static void a(File file, boolean z10) {
        if (z10) {
            try {
                if (file.exists()) {
                    return;
                }
                file.createNewFile();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public static String b(Context context) {
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo != null && runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static void c(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 28) {
            return;
        }
        try {
            String str = "";
            String strB = b(context);
            if (!TextUtils.equals(context.getPackageName(), strB)) {
                if (TextUtils.isEmpty(strB)) {
                    strB = context.getPackageName();
                }
                WebView.setDataDirectorySuffix(strB);
                str = "_" + strB;
            }
            d(context, str);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private static void d(Context context, String str) {
        File file = new File(context.getDataDir().getAbsolutePath() + "/app_webview" + str + "/webview_data.lock");
        if (file.exists()) {
            try {
                FileLock fileLockTryLock = new RandomAccessFile(file, "rw").getChannel().tryLock();
                if (fileLockTryLock != null) {
                    fileLockTryLock.close();
                } else {
                    a(file, file.delete());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                a(file, file.exists() ? file.delete() : false);
            }
        }
    }
}
