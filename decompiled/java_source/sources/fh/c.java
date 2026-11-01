package fh;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f62398b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f62399c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ScheduledExecutorService f62400a = Executors.newScheduledThreadPool(1, new ThreadFactory() { // from class: fh.b
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return c.c(runnable);
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return c.f62399c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread c(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("Delay-Task-Dispatcher");
        thread.setPriority(10);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ExecutorService executorService, Runnable runnable) {
        executorService.execute(runnable);
    }

    public final void e(long j11, final ExecutorService pool, final Runnable runnable) {
        Intrinsics.h(pool, "pool");
        Intrinsics.h(runnable, "runnable");
        if (j11 == 0) {
            pool.execute(runnable);
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this.f62400a;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.schedule(new Runnable() { // from class: fh.a
                @Override // java.lang.Runnable
                public final void run() {
                    c.f(pool, runnable);
                }
            }, j11, TimeUnit.MICROSECONDS);
        }
    }
}
