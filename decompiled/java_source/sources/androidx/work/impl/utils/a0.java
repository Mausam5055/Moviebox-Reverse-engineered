package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.work.WorkManager;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15941a;

    static {
        String strI = androidx.work.t.i("ProcessUtils");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15941a = strI;
    }

    private static final String a(Context context) {
        Object next;
        if (Build.VERSION.SDK_INT >= 28) {
            return a.f15940a.a();
        }
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD, false, WorkManager.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Intrinsics.e(objInvoke);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Throwable th2) {
            androidx.work.t.e().b(f15941a, "Unable to check ActivityThread for processName", th2);
        }
        int iMyPid = Process.myPid();
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        Iterator<T> it = runningAppProcesses.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((ActivityManager.RunningAppProcessInfo) next).pid != iMyPid);
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) next;
        if (runningAppProcessInfo != null) {
            return runningAppProcessInfo.processName;
        }
        return null;
    }

    public static final boolean b(Context context, androidx.work.b configuration) {
        Intrinsics.h(context, "context");
        Intrinsics.h(configuration, "configuration");
        String strA = a(context);
        String strC = configuration.c();
        return (strC == null || strC.length() == 0) ? Intrinsics.c(strA, context.getApplicationInfo().processName) : Intrinsics.c(strA, configuration.c());
    }
}
