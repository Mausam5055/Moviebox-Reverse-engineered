package gg;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f63572c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f63573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f63574b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return b.f63575a.a();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f63575a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final c f63576b = new c(null);

        private b() {
        }

        public final c a() {
            return f63576b;
        }
    }

    private c() {
        c();
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final void c() {
        if (this.f63573a == null) {
            this.f63573a = Executors.newCachedThreadPool();
        }
        if (this.f63574b == null) {
            this.f63574b = Executors.newSingleThreadScheduledExecutor();
        }
    }

    public final void a(Runnable runnable) {
        ExecutorService executorService;
        try {
            ExecutorService executorService2 = this.f63573a;
            Boolean boolValueOf = executorService2 == null ? null : Boolean.valueOf(executorService2.isShutdown());
            Intrinsics.e(boolValueOf);
            if (!boolValueOf.booleanValue() && (executorService = this.f63573a) != null) {
                executorService.execute(runnable);
            }
        } catch (RejectedExecutionException e11) {
            gg.b.f63567a.e(e11);
        }
    }

    public final void b(Runnable runnable) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.f63574b;
            if (scheduledExecutorService != null && scheduledExecutorService.isShutdown()) {
                return;
            }
            ScheduledExecutorService scheduledExecutorService2 = this.f63574b;
            if (scheduledExecutorService2 == null) {
                return;
            }
            scheduledExecutorService2.execute(runnable);
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    public final void d(Runnable runnable, long j11, TimeUnit unit) {
        Intrinsics.h(unit, "unit");
        try {
            ScheduledExecutorService scheduledExecutorService = this.f63574b;
            if (scheduledExecutorService != null && scheduledExecutorService.isShutdown()) {
                return;
            }
            ScheduledExecutorService scheduledExecutorService2 = this.f63574b;
            if (scheduledExecutorService2 == null) {
                return;
            }
            scheduledExecutorService2.schedule(runnable, j11, unit);
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }
}
