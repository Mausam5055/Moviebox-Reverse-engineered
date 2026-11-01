package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends Scheduler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final RxThreadFactory f65523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final ScheduledExecutorService f65524f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ThreadFactory f65525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicReference f65526d;

    static final class a extends Scheduler.Worker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ScheduledExecutorService f65527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.a f65528b = new io.reactivex.rxjava3.disposables.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        volatile boolean f65529c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f65527a = scheduledExecutorService;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.f65529c) {
                return;
            }
            this.f65529c = true;
            this.f65528b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65529c;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            if (this.f65529c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(pz.a.t(runnable), this.f65528b);
            this.f65528b.b(scheduledRunnable);
            try {
                scheduledRunnable.setFuture(j11 <= 0 ? this.f65527a.submit((Callable) scheduledRunnable) : this.f65527a.schedule((Callable) scheduledRunnable, j11, timeUnit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e11) {
                dispose();
                pz.a.r(e11);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f65524f = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f65523e = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.single-priority", 5).intValue())), true);
    }

    public h() {
        this(f65523e);
    }

    public h(ThreadFactory threadFactory) {
        AtomicReference atomicReference = new AtomicReference();
        this.f65526d = atomicReference;
        this.f65525c = threadFactory;
        atomicReference.lazySet(g(threadFactory));
    }

    static ScheduledExecutorService g(ThreadFactory threadFactory) {
        return g.a(threadFactory);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new a((ScheduledExecutorService) this.f65526d.get());
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(pz.a.t(runnable), true);
        try {
            scheduledDirectTask.setFuture(j11 <= 0 ? ((ScheduledExecutorService) this.f65526d.get()).submit(scheduledDirectTask) : ((ScheduledExecutorService) this.f65526d.get()).schedule(scheduledDirectTask, j11, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e11) {
            pz.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
        Runnable runnableT = pz.a.t(runnable);
        if (j12 > 0) {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnableT, true);
            try {
                scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f65526d.get()).scheduleAtFixedRate(scheduledDirectPeriodicTask, j11, j12, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e11) {
                pz.a.r(e11);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f65526d.get();
        c cVar = new c(runnableT, scheduledExecutorService);
        try {
            cVar.b(j11 <= 0 ? scheduledExecutorService.submit(cVar) : scheduledExecutorService.schedule(cVar, j11, timeUnit));
            return cVar;
        } catch (RejectedExecutionException e12) {
            pz.a.r(e12);
            return EmptyDisposable.INSTANCE;
        }
    }
}
