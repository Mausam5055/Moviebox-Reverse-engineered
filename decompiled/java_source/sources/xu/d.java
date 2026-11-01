package xu;

import android.content.Context;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.PatchState;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f78446a;

    public static void b(final Context context, final b bVar, final ou.c cVar) {
        if (f78446a || context == null || bVar == null || !bVar.f78438a) {
            return;
        }
        synchronized (d.class) {
            try {
                if (f78446a) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: xu.c
                    @Override // java.lang.Thread.UncaughtExceptionHandler
                    public final void uncaughtException(Thread thread, Throwable th2) {
                        d.c(context, bVar, cVar, defaultUncaughtExceptionHandler, thread, th2);
                    }
                });
                f78446a = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(Context context, b bVar, ou.c cVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th2) {
        try {
            if (context == null) {
                ShareTinkerLog.e("Tinker.CrashRollback", "crash monitor skipped: context is null", new Object[0]);
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th2);
                    return;
                }
                return;
            }
            PatchState patchStateE = yu.a.e(context);
            String strD = yu.a.d(context);
            if (patchStateE == PatchState.INSTALLED && strD != null && !strD.isEmpty()) {
                int iG = yu.a.g(context, System.currentTimeMillis(), bVar.f78440c);
                ShareTinkerLog.w("Tinker.CrashRollback", "patch crash count=%d/%d, patchId=%s", Integer.valueOf(iG), Integer.valueOf(bVar.f78439b), strD);
                if (iG >= bVar.f78439b) {
                    a.a(context, strD, "crash_threshold", cVar);
                }
            }
            if (uncaughtExceptionHandler == null) {
            }
        } catch (Throwable th3) {
            try {
                ShareTinkerLog.e("Tinker.CrashRollback", "crash monitor error: %s", th3.getMessage());
            } finally {
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th2);
                }
            }
        }
    }
}
