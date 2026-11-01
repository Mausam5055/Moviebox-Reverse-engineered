package com.apm.insight.runtime;

import com.apm.insight.MonitorCrash;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static MonitorCrash f19810a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f19811b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f19812c;

    public static MonitorCrash a() {
        if (f19810a == null) {
            MonitorCrash monitorCrashInitSDK = MonitorCrash.initSDK(com.apm.insight.e.g(), "239017", 20089L, "2008-20250701130429", "com.apm.insight");
            f19810a = monitorCrashInitSDK;
            monitorCrashInitSDK.config().setChannel("release");
        }
        return f19810a;
    }

    public static void a(Throwable th2, String str) {
        if (com.apm.insight.e.g() == null) {
            return;
        }
        if (f19811b == -1) {
            f19811b = 5;
        }
        int i11 = f19812c;
        if (i11 < f19811b) {
            f19812c = i11 + 1;
            a().reportCustomErr(str, "INNER", th2);
        }
    }
}
