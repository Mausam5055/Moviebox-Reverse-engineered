package com.pgl.ssdk;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f40238a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f40239b = -1;

    @SuppressLint({"PrivateApi"})
    public static Application a() {
        try {
            return (Application) Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod("currentApplication", null).invoke(null, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean a(Context context) {
        List<ActivityManager.AppTask> appTasks;
        if (context != null && (appTasks = ((ActivityManager) context.getSystemService("activity")).getAppTasks()) != null && !appTasks.isEmpty()) {
            for (ActivityManager.AppTask appTask : appTasks) {
                if (appTask.getTaskInfo() != null && a(appTask.getTaskInfo().baseIntent)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean a(Intent intent) {
        return (intent == null || (intent.getFlags() & 8388608) == 0) ? false : true;
    }

    public static String b() {
        String path;
        try {
            path = Environment.getDataDirectory().getPath();
        } catch (Throwable unused) {
            path = null;
        }
        return path == null ? "" : path.trim();
    }

    public static void b(Context context) {
        try {
            if (f40238a == -1 || f40239b == -1) {
                i(context);
            }
            if (a(context)) {
                f40238a++;
            }
            f40239b++;
            if (f40238a != 0) {
                j(context);
                com.pgl.ssdk.ces.a.meta(160, null, new int[]{f40238a, f40239b});
            }
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        String absolutePath;
        try {
            absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        } catch (Throwable unused) {
            absolutePath = null;
        }
        return absolutePath == null ? "" : absolutePath.trim();
    }

    public static String c(Context context) {
        String str;
        try {
            str = context.getApplicationInfo().sourceDir;
        } catch (Throwable unused) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String d(Context context) {
        String absolutePath;
        try {
            absolutePath = context.getFilesDir().getAbsolutePath();
        } catch (Throwable unused) {
            absolutePath = null;
        }
        return absolutePath == null ? "" : absolutePath.trim();
    }

    public static String e(Context context) {
        String packageName;
        try {
            packageName = context.getPackageName();
        } catch (Throwable unused) {
            packageName = null;
        }
        return packageName == null ? "" : packageName.trim();
    }

    public static String f(Context context) {
        String packageResourcePath;
        try {
            packageResourcePath = context.getPackageResourcePath();
        } catch (Throwable unused) {
            packageResourcePath = null;
        }
        return packageResourcePath == null ? "" : packageResourcePath.trim();
    }

    public static int g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static boolean h(Context context) {
        ResolveInfo resolveInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(context.getPackageName());
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty() || (resolveInfo = listQueryIntentActivities.get(0)) == null) {
                return false;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            int componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(activityInfo.packageName, activityInfo.name));
            return componentEnabledSetting == 0 || componentEnabledSetting == 1;
        } catch (Throwable unused) {
            return true;
        }
    }

    private static void i(Context context) {
        String strA = u0.a(context, "hac_date", (String) null);
        if (!TextUtils.isEmpty(strA)) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            if (strA.equals(simpleDateFormat.format(new Date()))) {
                int iA = u0.a(context, "hac", -1);
                int iA2 = u0.a(context, "tac", -1);
                if (iA != -1 && iA2 != -1) {
                    f40238a = iA;
                    f40239b = iA2;
                    return;
                }
            }
        }
        f40238a = 0;
        f40239b = 0;
    }

    private static void j(Context context) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        u0.b(context, "hac_date", simpleDateFormat.format(new Date()));
        u0.b(context, "hac", f40238a);
        u0.b(context, "tac", f40239b);
    }
}
