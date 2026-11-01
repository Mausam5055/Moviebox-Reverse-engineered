package ak;

import android.content.Context;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteReadOnlyDatabaseException;
import android.os.Looper;
import android.os.StatFs;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a0 f627a = new a0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f628b;

    private a0() {
    }

    private final boolean b(Context context) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(new StatFs(context.getFilesDir().getAbsolutePath()).getAvailableBytes() >= 67108864));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.x("WorkManagerStorageGuard", "Unable to read storage state, allow WorkManager scheduling: " + thM457exceptionOrNullimpl.getMessage(), false);
            objM454constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    private final boolean c(Throwable th2) {
        for (Throwable cause = th2; cause != null; cause = cause.getCause()) {
            if (cause instanceof SQLiteFullException) {
                return true;
            }
        }
        while (th2 != null) {
            if (th2 instanceof SQLiteDatabaseLockedException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean d(Throwable th2) {
        while (th2 != null) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.g(stackTrace, "getStackTrace(...)");
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                Intrinsics.g(className, "getClassName(...)");
                if (StringsKt.W(className, "androidx.work.", false, 2, null)) {
                    return true;
                }
            }
            th2 = th2.getCause();
        }
        return false;
    }

    private final boolean e(Throwable th2) {
        if (!c(th2)) {
            for (Throwable cause = th2; cause != null; cause = cause.getCause()) {
                if (!(cause instanceof SQLiteCantOpenDatabaseException)) {
                }
            }
            for (Throwable cause2 = th2; cause2 != null; cause2 = cause2.getCause()) {
                if (!(cause2 instanceof SQLiteDiskIOException)) {
                }
            }
            while (th2 != null) {
                if (!(th2 instanceof SQLiteReadOnlyDatabaseException)) {
                    th2 = th2.getCause();
                }
            }
            return false;
        }
        return true;
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        if (f628b) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        return b(applicationContext);
    }

    public final void f(Throwable throwable) {
        Intrinsics.h(throwable, "throwable");
        f628b = true;
        lg.a.f68839a.x("WorkManagerStorageGuard", "WorkManager initialization failed, disable scheduling for current process: " + throwable.getClass().getSimpleName() + " - " + throwable.getMessage(), false);
    }

    public final void g(Throwable throwable) {
        Intrinsics.h(throwable, "throwable");
        for (Throwable cause = throwable; cause != null; cause = cause.getCause()) {
            if (cause instanceof SQLiteFullException) {
                f628b = true;
            }
        }
        if (!d(throwable) || !e(throwable)) {
            return;
        }
        f628b = true;
    }

    public final boolean h(Throwable throwable) {
        Intrinsics.h(throwable, "throwable");
        for (Throwable cause = throwable; cause != null; cause = cause.getCause()) {
            if (cause instanceof SQLiteFullException) {
                return true;
            }
        }
        while (throwable != null) {
            if (throwable instanceof SQLiteDiskIOException) {
                return true;
            }
            throwable = throwable.getCause();
        }
        return false;
    }

    public final boolean i(Thread thread, Throwable throwable) {
        Intrinsics.h(thread, "thread");
        Intrinsics.h(throwable, "throwable");
        if (thread == Looper.getMainLooper().getThread()) {
            return false;
        }
        for (Throwable cause = throwable; cause != null; cause = cause.getCause()) {
            if (cause instanceof SQLiteFullException) {
                return true;
            }
        }
        if (!d(throwable)) {
            return false;
        }
        while (throwable != null) {
            if (throwable instanceof SQLiteDatabaseLockedException) {
                return true;
            }
            throwable = throwable.getCause();
        }
        return false;
    }
}
