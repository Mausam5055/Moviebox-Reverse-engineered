package zu;

import android.content.Context;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.PatchState;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ScheduledExecutorService f79466a = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: zu.b
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return c.f(runnable);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledFuture f79467b;

    public static void c(final Context context, long j11) {
        if (context == null || j11 <= 0) {
            return;
        }
        long jMax = Math.max(1000L, j11);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        d();
        ShareTinkerLog.i("Tinker.StartupWatchdog", "watchdog armed, timeout=%dms", Long.valueOf(jMax));
        f79467b = f79466a.schedule(new Runnable() { // from class: zu.a
            @Override // java.lang.Runnable
            public final void run() {
                c.e(context);
            }
        }, jMax, TimeUnit.MILLISECONDS);
    }

    public static void d() {
        ScheduledFuture scheduledFuture = f79467b;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            scheduledFuture.cancel(false);
            ShareTinkerLog.i("Tinker.StartupWatchdog", "watchdog disarmed", new Object[0]);
        }
        f79467b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Context context) {
        try {
            PatchState patchStateE = yu.a.e(context);
            if (patchStateE != PatchState.INSTALLED) {
                ShareTinkerLog.i("Tinker.StartupWatchdog", "watchdog fired but state=%s, skip rollback", patchStateE);
                return;
            }
            String strD = yu.a.d(context);
            ShareTinkerLog.w("Tinker.StartupWatchdog", "startup timeout detected! patchId=%s, triggering rollback", strD);
            xu.a.a(context, strD, "startup_timeout", null);
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.StartupWatchdog", "watchdog error: %s", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread f(Runnable runnable) {
        Thread thread = new Thread(runnable, "tinker-watchdog");
        thread.setDaemon(true);
        return thread;
    }
}
