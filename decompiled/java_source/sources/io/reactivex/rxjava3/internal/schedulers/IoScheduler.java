package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class IoScheduler extends Scheduler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final RxThreadFactory f65478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final RxThreadFactory f65479f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final a f65482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static boolean f65483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final CachedWorkerPool f65484k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ThreadFactory f65485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicReference f65486d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final TimeUnit f65481h = TimeUnit.SECONDS;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f65480g = Long.getLong("rx3.io-keep-alive-time", 60).longValue();

    static final class CachedWorkerPool implements Runnable {
        final io.reactivex.rxjava3.disposables.a allWorkers;
        private final ScheduledExecutorService evictorService;
        private final Future<?> evictorTask;
        private final ConcurrentLinkedQueue<a> expiringWorkerQueue;
        private final long keepAliveTime;
        private final ThreadFactory threadFactory;

        CachedWorkerPool(long j11, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j11) : 0L;
            this.keepAliveTime = nanos;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue<>();
            this.allWorkers = new io.reactivex.rxjava3.disposables.a();
            this.threadFactory = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, IoScheduler.f65479f);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.evictorService = scheduledExecutorServiceNewScheduledThreadPool;
            this.evictorTask = scheduledFutureScheduleWithFixedDelay;
        }

        static void evictExpiredWorkers(ConcurrentLinkedQueue<a> concurrentLinkedQueue, io.reactivex.rxjava3.disposables.a aVar) {
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            long jNow = now();
            for (a aVar2 : concurrentLinkedQueue) {
                if (aVar2.e() > jNow) {
                    return;
                }
                if (concurrentLinkedQueue.remove(aVar2)) {
                    aVar.a(aVar2);
                }
            }
        }

        static long now() {
            return System.nanoTime();
        }

        a get() {
            if (this.allWorkers.isDisposed()) {
                return IoScheduler.f65482i;
            }
            while (!this.expiringWorkerQueue.isEmpty()) {
                a aVarPoll = this.expiringWorkerQueue.poll();
                if (aVarPoll != null) {
                    return aVarPoll;
                }
            }
            a aVar = new a(this.threadFactory);
            this.allWorkers.b(aVar);
            return aVar;
        }

        void release(a aVar) {
            aVar.f(now() + this.keepAliveTime);
            this.expiringWorkerQueue.offer(aVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            evictExpiredWorkers(this.expiringWorkerQueue, this.allWorkers);
        }

        void shutdown() {
            this.allWorkers.dispose();
            Future<?> future = this.evictorTask;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.evictorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    static final class EventLoopWorker extends Scheduler.Worker implements Runnable {
        private final CachedWorkerPool pool;
        private final a threadWorker;
        final AtomicBoolean once = new AtomicBoolean();
        private final io.reactivex.rxjava3.disposables.a tasks = new io.reactivex.rxjava3.disposables.a();

        EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.threadWorker = cachedWorkerPool.get();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.once.compareAndSet(false, true)) {
                this.tasks.dispose();
                if (IoScheduler.f65483j) {
                    this.threadWorker.a(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.pool.release(this.threadWorker);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.once.get();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.pool.release(this.threadWorker);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            return this.tasks.isDisposed() ? EmptyDisposable.INSTANCE : this.threadWorker.a(runnable, j11, timeUnit, this.tasks);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class a extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f65487c;

        a(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f65487c = 0L;
        }

        public long e() {
            return this.f65487c;
        }

        public void f(long j11) {
            this.f65487c = j11;
        }
    }

    static {
        a aVar = new a(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f65482i = aVar;
        aVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx3.io-priority", 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxCachedThreadScheduler", iMax);
        f65478e = rxThreadFactory;
        f65479f = new RxThreadFactory("RxCachedWorkerPoolEvictor", iMax);
        f65483j = Boolean.getBoolean("rx3.io-scheduled-release");
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(0L, null, rxThreadFactory);
        f65484k = cachedWorkerPool;
        cachedWorkerPool.shutdown();
    }

    public IoScheduler() {
        this(f65478e);
    }

    public IoScheduler(ThreadFactory threadFactory) {
        this.f65485c = threadFactory;
        this.f65486d = new AtomicReference(f65484k);
        g();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new EventLoopWorker((CachedWorkerPool) this.f65486d.get());
    }

    public void g() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(f65480g, f65481h, this.f65485c);
        if (j0.a(this.f65486d, f65484k, cachedWorkerPool)) {
            return;
        }
        cachedWorkerPool.shutdown();
    }
}
