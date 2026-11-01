package com.transsion.baselib.config;

import ak.a0;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import com.transsion.baselib.report.l;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class CrashHandler implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f43013c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f43014d = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.baselib.config.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CrashHandler.b();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f43015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Application f43016b;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CrashHandler a() {
            return (CrashHandler) CrashHandler.f43014d.getValue();
        }
    }

    private CrashHandler() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CrashHandler b() {
        return new CrashHandler();
    }

    private final boolean e(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("gms_crash_restart", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = jCurrentTimeMillis - sharedPreferences.getLong("last_restart_at", 0L) <= 900000 ? sharedPreferences.getInt("restart_count", 0) : 0;
        if (i11 >= 1) {
            return false;
        }
        return sharedPreferences.edit().putLong("last_restart_at", jCurrentTimeMillis).putInt("restart_count", i11 + 1).commit();
    }

    private final void f(Throwable th2) {
        k.d(o0.a(y0.b()), null, null, new CrashHandler$dumpExceptionsToSDCard$1(this, th2, null), 3, null);
    }

    private final void g() {
        Object objM454constructorimpl;
        Application application = this.f43016b;
        if (application == null) {
            return;
        }
        if (!e(application)) {
            lg.a.f68839a.x("CrashHandler", "Skip GMS crash restart because the restart limit was reached", true);
            return;
        }
        Intent launchIntentForPackage = application.getPackageManager().getLaunchIntentForPackage(application.getPackageName());
        if (launchIntentForPackage == null) {
            return;
        }
        launchIntentForPackage.addFlags(268468224);
        try {
            Result.Companion companion = Result.INSTANCE;
            l.f43359a.l();
            application.startActivity(launchIntentForPackage);
            Process.killProcess(Process.myPid());
            System.exit(0);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.h("CrashHandler", "Failed to restart after GMS crash", thM457exceptionOrNullimpl, true);
        }
    }

    private final boolean i() {
        Object objM454constructorimpl;
        if (this.f43016b == null) {
            return false;
        }
        if (!l.f43359a.q()) {
            return true;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(runningAppProcessInfo.importance <= 100));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    private final boolean j(Throwable th2) {
        String message;
        return Intrinsics.c(th2.getClass().getName(), "android.app.RemoteServiceException") && (message = th2.getMessage()) != null && StringsKt.c0(message, "Bad notification", false, 2, null) && StringsKt.c0(message, "ConcurrentModificationException", false, 2, null);
    }

    private final boolean k(Throwable th2) {
        while (th2 != null) {
            if (Intrinsics.c(th2.getClass().getName(), "android.database.CursorWindowAllocationException")) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean l(Throwable th2) {
        while (th2 != null) {
            String name = th2.getClass().getName();
            if (Intrinsics.c(name, "android.os.DeadSystemException") || Intrinsics.c(name, "android.os.DeadSystemRuntimeException")) {
                return true;
            }
            String message = th2.getMessage();
            if (message != null && (StringsKt.c0(message, "DeadSystemException", false, 2, null) || StringsKt.c0(message, "DeadSystemRuntimeException", false, 2, null))) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean m(Throwable th2) {
        String message;
        if (!(th2 instanceof IllegalStateException) || (message = th2.getMessage()) == null || !StringsKt.c0(message, "Cannot recycle a resource while it is still acquired", false, 2, null)) {
            return false;
        }
        StackTraceElement[] stackTrace = ((IllegalStateException) th2).getStackTrace();
        Intrinsics.g(stackTrace, "getStackTrace(...)");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Intrinsics.g(className, "getClassName(...)");
            if (StringsKt.c0(className, "com.bumptech.glide", false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    private final boolean n(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof NoClassDefFoundError) {
                StackTraceElement[] stackTrace = ((NoClassDefFoundError) th2).getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    String className = stackTraceElement.getClassName();
                    Intrinsics.g(className, "getClassName(...)");
                    if (StringsKt.W(className, "com.google.android.gms.chimera.container.DynamiteLoaderImpl", false, 2, null)) {
                        return true;
                    }
                    String className2 = stackTraceElement.getClassName();
                    Intrinsics.g(className2, "getClassName(...)");
                    if (StringsKt.W(className2, "com.google.android.gms.dynamite.", false, 2, null)) {
                        return true;
                    }
                }
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean o(Throwable th2) {
        while (th2 != null) {
            String message = th2.getMessage();
            if (message == null) {
                message = "";
            }
            if ((th2 instanceof SecurityException) && StringsKt.c0(message, "Failed to find provider com.google.android.gsf.gservices", false, 2, null)) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean p(Throwable th2) {
        String message;
        return (th2 instanceof ActivityNotFoundException) && (message = th2.getMessage()) != null && StringsKt.c0(message, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION", false, 2, null);
    }

    private final boolean q(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof NoClassDefFoundError) {
                StackTraceElement[] stackTrace = ((NoClassDefFoundError) th2).getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                if (r(stackTrace)) {
                    return true;
                }
            }
            th2 = th2.getCause();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003e  */
    private final boolean r(StackTraceElement[] stackTraceElementArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            String className = stackTraceElement.getClassName();
            Intrinsics.g(className, "getClassName(...)");
            if (StringsKt.W(className, "com.google.android.gms.chimera.container.DynamiteLoaderImpl", false, 2, null)) {
                z10 = true;
            } else {
                String className2 = stackTraceElement.getClassName();
                Intrinsics.g(className2, "getClassName(...)");
                if (StringsKt.W(className2, "com.google.android.gms.dynamite.", false, 2, null)) {
                    z10 = true;
                } else {
                    String className3 = stackTraceElement.getClassName();
                    Intrinsics.g(className3, "getClassName(...)");
                    if (StringsKt.W(className3, "com.google.android.gms.internal.measurement.", false, 2, null)) {
                        z11 = true;
                    }
                }
            }
        }
        return z10 && z11;
    }

    public final synchronized void h(Application application) {
        if (application == null) {
            try {
                application = this.f43016b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f43016b = application;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler == this) {
            return;
        }
        this.f43015a = defaultUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable ex2) {
        String message;
        String message2;
        String message3;
        Intrinsics.h(thread, "thread");
        Intrinsics.h(ex2, "ex");
        a0 a0Var = a0.f627a;
        if (!a0Var.h(ex2)) {
            f(ex2);
        }
        if (((ex2 instanceof IOException) || (ex2 instanceof ExecutionException)) && (message = ex2.getMessage()) != null && StringsKt.c0(message, "Exception in CronetUrlRequest", false, 2, null)) {
            Log.e("CrashHandler", "error uncaughtException --- " + ex2.getMessage());
            return;
        }
        if (l(ex2)) {
            Log.e("CrashHandler", "Ignored system dead: DeadSystemException / DeadSystemRuntimeException in chain");
            return;
        }
        if (StringsKt.c0(ex2.toString(), "CannotDeliverBroadcastException", false, 2, null)) {
            Log.e("CrashHandler", "error uncaughtException --- " + ex2);
            return;
        }
        if (Build.VERSION.SDK_INT <= 27 && (ex2 instanceof IllegalArgumentException) && (message3 = ex2.getMessage()) != null && StringsKt.W(message3, "reportSizeConfigurations", false, 2, null)) {
            Log.w("CrashHandler", "Ignored system bug: reportSizeConfigurations on Android 7/8");
            return;
        }
        boolean zO = o(ex2);
        boolean zQ = q(ex2);
        boolean zN = n(ex2);
        if (zO || zQ || zN) {
            if (thread != Looper.getMainLooper().getThread()) {
                lg.a.f68839a.x("CrashHandler", "Ignored GMS Dynamite worker exception: " + ex2.getClass().getSimpleName() + " - " + ex2.getMessage(), true);
                return;
            }
            if ((zO || zQ) && i()) {
                g();
            }
        }
        if (k(ex2)) {
            f(ex2);
            Log.e("CrashHandler", "CursorWindowAllocationException swallowed, thread=" + thread.getName(), ex2);
            return;
        }
        if (m(ex2)) {
            Log.w("CrashHandler", "Ignored Glide ResourceRecycler race condition on Android 15+: " + ex2.getMessage());
            return;
        }
        if (j(ex2)) {
            Log.w("CrashHandler", "Ignored OEM SystemUI bad notification crash: " + ex2.getMessage());
            return;
        }
        if ((ex2 instanceof IllegalArgumentException) && (message2 = ex2.getMessage()) != null && StringsKt.c0(message2, "Activity client record must not be null", false, 2, null)) {
            Log.w("CrashHandler", "Ignored system race: Activity client record must not be null (TopResumedActivityChangeItem)");
            return;
        }
        if (p(ex2)) {
            Log.w("CrashHandler", "Ignored ActivityNotFoundException: MANAGE_ALL_FILES_ACCESS_PERMISSION not available on this device (TV?)");
            return;
        }
        if (!a0Var.i(thread, ex2)) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f43015a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, ex2);
                return;
            }
            return;
        }
        a0Var.g(ex2);
        lg.a.f68839a.x("CrashHandler", "Ignored background storage exception: " + ex2.getClass().getSimpleName() + " - " + ex2.getMessage() + ", thread=" + thread.getName(), false);
    }
}
