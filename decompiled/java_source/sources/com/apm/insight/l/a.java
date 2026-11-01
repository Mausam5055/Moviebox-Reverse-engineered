package com.apm.insight.l;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f19653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Class<?> f19654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f19655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f19656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f19657e;

    private static long a(int i11) {
        if (i11 < 0) {
            return 0L;
        }
        return ((long) i11) << 10;
    }

    public static ActivityManager.ProcessErrorStateInfo a(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
        if (processesInErrorState != null) {
            for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                if (processErrorStateInfo.pid == iMyPid && processErrorStateInfo.condition == 2) {
                    return processErrorStateInfo;
                }
            }
        }
        return null;
    }

    public static void a(Context context, JSONObject jSONObject) {
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dalvikPrivateDirty", a(memoryInfo.dalvikPrivateDirty));
            jSONObject2.put("dalvikPss", a(memoryInfo.dalvikPss));
            jSONObject2.put("dalvikSharedDirty", a(memoryInfo.dalvikSharedDirty));
            jSONObject2.put("nativePrivateDirty", a(memoryInfo.nativePrivateDirty));
            jSONObject2.put("nativePss", a(memoryInfo.nativePss));
            jSONObject2.put("nativeSharedDirty", a(memoryInfo.nativeSharedDirty));
            jSONObject2.put("otherPrivateDirty", a(memoryInfo.otherPrivateDirty));
            jSONObject2.put("otherPss", a(memoryInfo.otherPss));
            jSONObject2.put("otherSharedDirty", memoryInfo.otherSharedDirty);
            try {
                String memoryStat = memoryInfo.getMemoryStat("summary.graphics");
                if (!TextUtils.isEmpty(memoryStat)) {
                    jSONObject2.put("summary.graphics", a(Integer.parseInt(memoryStat)));
                }
            } catch (Throwable unused) {
            }
            jSONObject2.put("totalPrivateClean", c.a(memoryInfo));
            jSONObject2.put("totalPrivateDirty", memoryInfo.getTotalPrivateDirty());
            jSONObject2.put("totalPss", a(memoryInfo.getTotalPss()));
            jSONObject2.put("totalSharedClean", c.b(memoryInfo));
            jSONObject2.put("totalSharedDirty", a(memoryInfo.getTotalSharedDirty()));
            jSONObject2.put("totalSwappablePss", a(c.c(memoryInfo)));
            jSONObject.put("memory_info", jSONObject2);
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                JSONObject jSONObject3 = new JSONObject();
                ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo2);
                jSONObject3.put("availMem", memoryInfo2.availMem);
                jSONObject3.put("lowMemory", memoryInfo2.lowMemory);
                jSONObject3.put("threshold", memoryInfo2.threshold);
                jSONObject3.put("totalMem", i.a(memoryInfo2));
                jSONObject.put("sys_memory_info", jSONObject3);
            }
            JSONObject jSONObject4 = new JSONObject();
            com.apm.insight.entity.a.a(jSONObject, "filters", "native_heap_leak", String.valueOf(Debug.getNativeHeapAllocatedSize() > TmcConstants.LOCAL_FILE_MAX_SIZE));
            jSONObject4.put("native_heap_size", Debug.getNativeHeapSize());
            jSONObject4.put("native_heap_alloc_size", Debug.getNativeHeapAllocatedSize());
            jSONObject4.put("native_heap_free_size", Debug.getNativeHeapFreeSize());
            Runtime runtime = Runtime.getRuntime();
            long jMaxMemory = runtime.maxMemory();
            long jFreeMemory = runtime.freeMemory();
            long j11 = runtime.totalMemory();
            jSONObject4.put("max_memory", jMaxMemory);
            jSONObject4.put("free_memory", jFreeMemory);
            jSONObject4.put("total_memory", j11);
            com.apm.insight.entity.a.a(jSONObject, "filters", "java_heap_leak", String.valueOf(((float) (j11 - jFreeMemory)) > ((float) jMaxMemory) * 0.95f));
            if (activityManager != null) {
                jSONObject4.put("memory_class", activityManager.getMemoryClass());
                jSONObject4.put("large_memory_class", activityManager.getLargeMemoryClass());
            }
            jSONObject.put("app_memory_info", jSONObject4);
        } catch (Throwable unused2) {
        }
    }

    public static void a(String str) {
        f19653a = str;
    }

    public static boolean a() {
        return com.apm.insight.runtime.a.b.d().f();
    }

    public static String b() {
        if (!TextUtils.isEmpty(f19653a)) {
            return f19653a;
        }
        String strC = c();
        f19653a = strC;
        if (!TextUtils.isEmpty(strC)) {
            return f19653a;
        }
        String strD = d();
        f19653a = strD;
        if (!TextUtils.isEmpty(strD)) {
            return f19653a;
        }
        String strE = e();
        f19653a = strE;
        if (strE == null) {
            f19653a = "";
        }
        return f19653a;
    }

    public static boolean b(Context context) {
        String strB = b();
        if (strB != null && strB.contains(":")) {
            return false;
        }
        if (strB == null || !strB.equals(context.getPackageName())) {
            return strB != null && strB.equals(context.getApplicationInfo().processName);
        }
        return true;
    }

    private static String c() {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                return Application.getProcessName();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return null;
    }

    public static String c(Context context) {
        Class<?> clsE = e(context);
        if (f19655c == null && clsE != null) {
            try {
                f19655c = clsE.getDeclaredField("VERSION_NAME");
            } catch (NoSuchFieldException unused) {
            }
        }
        Field field = f19655c;
        if (field == null) {
            return "";
        }
        try {
            return String.valueOf(field.get(null));
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static int d(Context context) {
        Class<?> clsE = e(context);
        if (f19656d == null && clsE != null) {
            try {
                f19656d = clsE.getDeclaredField("VERSION_CODE");
            } catch (NoSuchFieldException unused) {
            }
        }
        Field field = f19656d;
        if (field == null) {
            return -1;
        }
        try {
            return ((Integer) field.get(null)).intValue();
        } catch (Throwable unused2) {
            return -1;
        }
    }

    private static String d() {
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, null);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    private static Class<?> e(Context context) {
        if (f19654b == null && !f19657e) {
            try {
                f19654b = Class.forName(context.getPackageName() + ".BuildConfig");
            } catch (ClassNotFoundException unused) {
            }
            f19657e = true;
        }
        return f19654b;
    }

    private static String e() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    int i11 = bufferedReader.read();
                    if (i11 <= 0) {
                        String string = sb2.toString();
                        com.apm.insight.a.a((Closeable) bufferedReader);
                        return string;
                    }
                    sb2.append((char) i11);
                }
            } catch (Throwable unused) {
                com.apm.insight.a.a((Closeable) bufferedReader);
                return null;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }
}
