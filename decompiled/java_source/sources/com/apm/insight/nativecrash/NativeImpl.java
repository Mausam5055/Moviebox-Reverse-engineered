package com.apm.insight.nativecrash;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.apm.insight.b.d;
import com.apm.insight.b.f;
import com.apm.insight.e;
import com.apm.insight.l.j;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class NativeImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f19693a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f19694b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19695c = true;

    public static int a(int i11) {
        if (f19693a && i11 >= 0) {
            try {
                return doLock("", i11);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public static String a(String str) {
        if (f19693a) {
            return doGetCrashHeader(str);
        }
        return null;
    }

    public static void a(int i11, String str) {
        if (!f19693a || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            doWriteFile(i11, str, str.length());
        } catch (Throwable unused) {
        }
    }

    public static void a(long j11) {
        if (f19693a) {
            try {
                doSetAlogFlushAddr(j11);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(File file) {
        if (f19693a) {
            doRebuildTombstone(j.c(file).getAbsolutePath(), j.b(file).getAbsolutePath(), j.d(file).getAbsolutePath());
        }
    }

    public static void a(String str, String str2, String str3) {
        if (f19693a) {
            try {
                doDumpLogcat(str, str2, str3);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(boolean z10) {
        f19695c = z10;
        if (f19693a) {
            doSetResendSigQuit(z10 ? 1 : 0);
        }
    }

    public static boolean a() {
        if (f19694b) {
            return f19693a;
        }
        f19694b = true;
        if (!f19693a) {
            f19693a = com.apm.insight.a.b("apminsighta");
        }
        return f19693a;
    }

    public static boolean a(@NonNull Context context) {
        String strA;
        boolean zA = a();
        if (zA) {
            String str = j.j(context) + "/apminsight";
            if (new File(context.getApplicationInfo().nativeLibraryDir, "libapminsightb.so").exists()) {
                strA = context.getApplicationInfo().nativeLibraryDir;
            } else {
                strA = com.apm.insight.h.b.a();
                com.apm.insight.h.b.b("apminsightb");
            }
            doStart(Build.VERSION.SDK_INT, strA, str, e.f(), e.m());
        }
        return zA;
    }

    public static int b() {
        if (f19693a) {
            return doCreateCallbackThread();
        }
        return -1;
    }

    public static void b(int i11) {
        if (f19693a) {
            try {
                doCloseFile(i11);
            } catch (Throwable unused) {
            }
        }
    }

    public static void b(long j11) {
        if (f19693a) {
            try {
                doSetAlogLogDirAddr(j11);
            } catch (Throwable unused) {
            }
        }
    }

    public static void b(String str) {
        if (f19693a) {
            doDumpHprof(str);
        }
    }

    public static int c(String str) {
        if (f19693a && !TextUtils.isEmpty(str)) {
            try {
                return doLock(str, -1);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public static void c() {
    }

    public static void d() {
    }

    public static void d(String str) {
        if (f19693a) {
            try {
                doDumpMemInfo(str);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    private static native boolean doCheckNativeCrash();

    @Keep
    private static native void doCloseFile(int i11);

    @Keep
    private static native int doCreateCallbackThread();

    @Keep
    private static native void doDump(String str);

    @Keep
    private static native void doDumpFds(String str);

    @Keep
    private static native void doDumpHprof(String str);

    @Keep
    private static native void doDumpLogcat(String str, String str2, String str3);

    @Keep
    private static native void doDumpMaps(String str);

    @Keep
    private static native void doDumpMemInfo(String str);

    @Keep
    private static native void doDumpThreads(String str);

    @Keep
    private static native long doGetAppCpuTime();

    @Keep
    private static native long doGetChildCpuTime();

    @Keep
    private static native String doGetCrashHeader(String str);

    @Keep
    private static native long doGetDeviceCpuTime();

    @Keep
    private static native int doGetFDCount();

    @Keep
    private static native String[] doGetFdDump(int i11, int i12, int[] iArr, String[] strArr);

    @Keep
    private static native long doGetFreeMemory();

    @Keep
    private static native long doGetThreadCpuTime(int i11);

    @Keep
    private static native int doGetThreadsCount();

    @Keep
    private static native long doGetTotalMemory();

    @Keep
    private static native long doGetVMSize();

    @Keep
    private static native void doInitThreadDump();

    @Keep
    private static native int doLock(String str, int i11);

    @Keep
    private static native int doOpenFile(String str);

    @Keep
    private static native void doRebuildTombstone(String str, String str2, String str3);

    @Keep
    private static native void doSetAlogConfigPath(String str);

    @Keep
    private static native void doSetAlogFlushAddr(long j11);

    @Keep
    private static native void doSetAlogLogDirAddr(long j11);

    @Keep
    private static native void doSetResendSigQuit(int i11);

    @Keep
    private static native void doSetUploadEnd();

    @Keep
    private static native void doSignalMainThread();

    @Keep
    private static native int doStart(int i11, String str, String str2, String str3, int i12);

    @Keep
    private static native void doStartAnrMonitor(int i11);

    @Keep
    private static native void doWriteFile(int i11, String str, int i12);

    public static void e(String str) {
        if (f19693a) {
            try {
                doDumpFds(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean e() {
        if (!f19693a) {
            return false;
        }
        try {
            return doCheckNativeCrash();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void f(String str) {
        if (f19693a) {
            try {
                doDumpMaps(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean f() {
        if (!f19693a) {
            return false;
        }
        try {
            return is64Bit();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void g() {
        new Thread(new Runnable() { // from class: com.apm.insight.nativecrash.NativeImpl.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    NativeImpl.l();
                } catch (Throwable th2) {
                    try {
                        com.apm.insight.c.a(th2, "NPTH_ANR_MONITOR_ERROR");
                    } catch (Throwable unused) {
                    }
                }
            }
        }, "NPTH-AnrMonitor").start();
    }

    public static void g(String str) {
        if (f19693a) {
            try {
                doDumpThreads(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static int h(String str) {
        if (!f19693a) {
            return -1;
        }
        try {
            return doOpenFile(str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static boolean h() {
        return f19695c;
    }

    @Keep
    private static void handleNativeCrash(String str) {
        NativeCrashCollector.onNativeCrash(str);
    }

    public static void i() {
        if (f19693a) {
            doSignalMainThread();
        }
    }

    public static void i(String str) {
        if (f19693a) {
            doDump(str);
        }
    }

    @Keep
    private static native boolean is64Bit();

    public static void j() {
        if (f19693a) {
            doSetUploadEnd();
        }
    }

    public static void k() {
        if (f19693a) {
            doInitThreadDump();
        }
    }

    static /* synthetic */ void l() {
        if (f19693a) {
            try {
                doStartAnrMonitor(Build.VERSION.SDK_INT);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    private static void reportEventForAnrMonitor() {
        try {
            System.currentTimeMillis();
            e.j();
            d.c();
            f.a(e.g()).a().e();
        } catch (Throwable unused) {
        }
    }
}
