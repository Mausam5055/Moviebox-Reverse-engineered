package wf;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import com.tencent.tinker.lib.service.TinkerPatchService;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b extends ShareTinkerInternals {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f77662a;

    private static String a(Context context, Class cls) {
        try {
            return context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) cls), 0).processName;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context) {
        String str = f77662a;
        if (str != null) {
            return str;
        }
        String strA = a(context, TinkerPatchService.class);
        if (strA == null) {
            return null;
        }
        f77662a = strA;
        return strA;
    }

    public static boolean c(Context context) {
        String processName = ShareTinkerInternals.getProcessName(context);
        String strB = b(context);
        if (strB == null || strB.length() == 0) {
            return false;
        }
        return processName.equals(strB);
    }

    public static boolean d(Context context) {
        return TinkerPatchService.g(context);
    }

    public static void e(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String strB = b(context);
        if (strB == null || (runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) == null) {
            return;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(strB)) {
                Process.killProcess(runningAppProcessInfo.pid);
            }
        }
    }
}
