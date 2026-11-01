package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15944a;

    static {
        String strI = androidx.work.t.i("WakeLocks");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15944a = strI;
    }

    public static final PowerManager.WakeLock a(Context context, String tag) {
        Intrinsics.h(context, "context");
        Intrinsics.h(tag, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String str = "WorkManager: " + tag;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) systemService).newWakeLock(1, str);
        c0 c0Var = c0.f15948a;
        synchronized (c0Var) {
        }
        Intrinsics.e(wakeLockNewWakeLock);
        return wakeLockNewWakeLock;
    }
}
