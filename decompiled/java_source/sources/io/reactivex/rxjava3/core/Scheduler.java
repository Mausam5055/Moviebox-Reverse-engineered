package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f65310a = Boolean.getBoolean("rx3.scheduler.use-nanotime");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final long f65311b = a(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    static final class DisposeTask implements io.reactivex.rxjava3.disposables.c, Runnable {
        final Runnable decoratedRun;
        Thread runner;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        final Worker f65312w;

        DisposeTask(Runnable runnable, Worker worker) {
            this.decoratedRun = runnable;
            this.f65312w = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.runner == Thread.currentThread()) {
                Worker worker = this.f65312w;
                if (worker instanceof io.reactivex.rxjava3.internal.schedulers.e) {
                    ((io.reactivex.rxjava3.internal.schedulers.e) worker).d();
                    return;
                }
            }
            this.f65312w.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.decoratedRun;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65312w.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runner = Thread.currentThread();
            try {
                this.decoratedRun.run();
                dispose();
                this.runner = null;
            } catch (Throwable th2) {
                try {
                    pz.a.r(th2);
                    throw th2;
                } catch (Throwable th3) {
                    dispose();
                    this.runner = null;
                    throw th3;
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class PeriodicDirectTask implements io.reactivex.rxjava3.disposables.c, Runnable {
        volatile boolean disposed;
        final Runnable run;
        final Worker worker;

        PeriodicDirectTask(Runnable runnable, Worker worker) {
            this.run = runnable;
            this.worker = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.disposed = true;
            this.worker.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.run;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.disposed) {
                return;
            }
            try {
                this.run.run();
            } catch (Throwable th2) {
                dispose();
                pz.a.r(th2);
                throw th2;
            }
        }
    }

    public static abstract class Worker implements io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: loaded from: classes7.dex */
        final class PeriodicTask implements Runnable {
            long count;
            final Runnable decoratedRun;
            long lastNowNanoseconds;
            final long periodInNanoseconds;

            /* JADX INFO: renamed from: sd, reason: collision with root package name */
            final SequentialDisposable f65313sd;
            long startInNanoseconds;

            PeriodicTask(long j11, Runnable runnable, long j12, SequentialDisposable sequentialDisposable, long j13) {
                this.decoratedRun = runnable;
                this.f65313sd = sequentialDisposable;
                this.periodInNanoseconds = j13;
                this.lastNowNanoseconds = j12;
                this.startInNanoseconds = j11;
            }

            public Runnable getWrappedRunnable() {
                return this.decoratedRun;
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0034  */
            @Override // java.lang.Runnable
            public void run() {
                long j11;
                this.decoratedRun.run();
                if (this.f65313sd.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jNow = worker.now(timeUnit);
                long j12 = Scheduler.f65311b;
                long j13 = jNow + j12;
                long j14 = this.lastNowNanoseconds;
                if (j13 >= j14) {
                    long j15 = this.periodInNanoseconds;
                    if (jNow >= j14 + j15 + j12) {
                        long j16 = this.periodInNanoseconds;
                        long j17 = jNow + j16;
                        long j18 = this.count + 1;
                        this.count = j18;
                        this.startInNanoseconds = j17 - (j16 * j18);
                        j11 = j17;
                    } else {
                        long j19 = this.startInNanoseconds;
                        long j20 = this.count + 1;
                        this.count = j20;
                        j11 = j19 + (j20 * j15);
                    }
                } else {
                    long j110 = this.periodInNanoseconds;
                    long j111 = jNow + j110;
                    long j112 = this.count + 1;
                    this.count = j112;
                    this.startInNanoseconds = j111 - (j110 * j112);
                    j11 = j111;
                }
                this.lastNowNanoseconds = jNow;
                this.f65313sd.replace(Worker.this.schedule(this, j11 - jNow, timeUnit));
            }
        }

        public long now(TimeUnit timeUnit) {
            return Scheduler.b(timeUnit);
        }

        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return schedule(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit);

        public io.reactivex.rxjava3.disposables.c schedulePeriodically(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable runnableT = pz.a.t(runnable);
            long nanos = timeUnit.toNanos(j12);
            long jNow = now(TimeUnit.NANOSECONDS);
            io.reactivex.rxjava3.disposables.c cVarSchedule = schedule(new PeriodicTask(jNow + timeUnit.toNanos(j11), runnableT, jNow, sequentialDisposable2, nanos), j11, timeUnit);
            if (cVarSchedule == EmptyDisposable.INSTANCE) {
                return cVarSchedule;
            }
            sequentialDisposable.replace(cVarSchedule);
            return sequentialDisposable2;
        }
    }

    static long a(long j11, String str) {
        if ("seconds".equalsIgnoreCase(str)) {
            return TimeUnit.SECONDS.toNanos(j11);
        }
        return "milliseconds".equalsIgnoreCase(str) ? TimeUnit.MILLISECONDS.toNanos(j11) : TimeUnit.MINUTES.toNanos(j11);
    }

    static long b(TimeUnit timeUnit) {
        return !f65310a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract Worker c();

    public io.reactivex.rxjava3.disposables.c d(Runnable runnable) {
        return e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        Worker workerC = c();
        DisposeTask disposeTask = new DisposeTask(pz.a.t(runnable), workerC);
        workerC.schedule(disposeTask, j11, timeUnit);
        return disposeTask;
    }

    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
        Worker workerC = c();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(pz.a.t(runnable), workerC);
        io.reactivex.rxjava3.disposables.c cVarSchedulePeriodically = workerC.schedulePeriodically(periodicDirectTask, j11, j12, timeUnit);
        return cVarSchedulePeriodically == EmptyDisposable.INSTANCE ? cVarSchedulePeriodically : periodicDirectTask;
    }
}
